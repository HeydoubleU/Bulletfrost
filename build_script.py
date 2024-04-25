import os
import shutil
import subprocess
import platform
import re
import argparse

# Basic Usage: python3 build.py
# Help: python3 build.py --help

BULLETFROST_VERSION = "1.1.0"

PLATFORM_INFO = {
    "Windows": {
        "bifrost_path": "C:\\Program Files\\Autodesk\\Bifrost\\",
        "nice_platform_name": "windows",
        "vswhere_path": "C:\\Program Files (x86)\\Microsoft Visual Studio\\Installer\\vswhere.exe",
        # Only 2019 is official supported at the time of writing,
        # but 2019 build tools can be installed in 2022 as well and they work
        "visual_studio_version_map": {
            "2022": "17",
            "2019": "16",
        },
        "min_visual_studio_version": "2019"
    },
    "Darwin": {
        "bifrost_path": "/Applications/Autodesk/bifrost/",
        "nice_platform_name": "macOS",
        "min_arm_arch_bif_version": "2.7.0.0",
        "min_arm_arch_maya_version": "maya2024"
    },
    "Linux": {
        "bifrost_path": "/usr/autodesk/bifrost/",
        "nice_platform_name": "linux"
    }
}
CMAKE_BUILD_DIR = "build_output"

# Checks
MIN_BIF_SDK_SUPPORT = "2.5.0.0"
MIN_NO_DEPRECATED_ARGS_VERSION = "2.8.0.0"

def check_cmake_exists():
    try:
        subprocess.check_call(["cmake", "--version"])
        build_script_print("CMake found on system PATH")
    except Exception as e:
        raise Exception("There was an error finding CMake. Check that CMake is on the system PATH") from e
    
def version_sort_function(version):
    return tuple(map(int, version.split(".")))
    
def check_vcpkg_exists(platform_name):
    project_root_path = os.path.dirname(os.path.realpath(__file__))
    cur_dir = os.getcwd()
    if cur_dir != project_root_path:
        os.chdir(project_root_path)
    vcpkg_cmd = os.path.join(".", "vcpkg", "vcpkg")

    try:
        subprocess.check_call([vcpkg_cmd, "--version"])
        build_script_print("vcpkg already bootstrapped at: {}".format(vcpkg_cmd))
    except Exception:
        build_script_print("vcpkg not bootstrapped. Attempting to clone and bootstrap")
        subprocess.check_call(["git", "submodule", "update", "--init", "--recursive"])
        if platform_name == "Windows":
            subprocess.check_call([".\\vcpkg\\bootstrap-vcpkg.bat", "-disableMetrics"])
        else:
            subprocess.check_call(["./vcpkg/bootstrap-vcpkg.sh", "-disableMetrics"])

    subprocess.check_call(["git", "submodule", "update", "--recursive"])


def get_bifrost_install_path(platform_name):
    base_bifrost_install_path = PLATFORM_INFO[platform_name]["bifrost_path"]
    max_maya_version = None
    max_bifrost_version = None
    
    try:
        if os.path.exists(base_bifrost_install_path):
            maya_versions = [d for d in os.listdir(base_bifrost_install_path) if os.path.isdir(os.path.join(base_bifrost_install_path, d))]
            max_maya_version = max(maya_versions)

        if max_maya_version:
            maya_version_path = os.path.join(base_bifrost_install_path, max_maya_version)
            bifrost_versions = [d for d in os.listdir(maya_version_path) if os.path.isdir(os.path.join(maya_version_path, d))]
            max_bifrost_version = max(bifrost_versions, key=version_sort_function)
    except:
        pass

    if not max_bifrost_version:
        raise FileNotFoundError(
            ("Bifrost installation not found at the default path for your platform: {}\n"
            "Please provide it manually using the --bifrost-path option.")
            .format(base_bifrost_install_path)
        )

    return os.path.join(maya_version_path, max_bifrost_version, "bifrost")

def build_with_cmake(bifrost_install_path, platform_name, is_release, is_fresh_build):
    build_args = [
        "cmake", "-S", ".",
        "-B", CMAKE_BUILD_DIR,
        "-DBIFROST_LOCATION={}".format(bifrost_install_path),
        "-DBULLETFROST_RELEASE_VERSION={}".format(BULLETFROST_VERSION),
        "-DCMAKE_BUILD_TYPE=Release"
    ]

    release_data = generate_release_data(platform_name, bifrost_install_path)
    release_name = release_data["release_name"]
    bif_install_version = release_data["bif_install_version"]
    maya_install_version = release_data["maya_install_version"]
    # The min version will be first if it's compatible, needed for comparing strings
    bif_version_compatibility = sorted([MIN_BIF_SDK_SUPPORT, bif_install_version], key=version_sort_function)[0]
    if bif_version_compatibility != MIN_BIF_SDK_SUPPORT:
        raise Exception("The Bifrost operator SDK requires at least Bifrost version {}".format(MIN_BIF_SDK_SUPPORT))
    build_script_print("Bifrost version is: {}".format(bif_install_version))
    build_script_print("Maya version is: {}".format(maya_install_version))
    build_args.append("-DCMAKE_INSTALL_PREFIX={}".format(release_name))

    # Some cmake function args were deperecated with Bifrost 2.8
    # Need to check the version and pass the compatible arg to compile on older versions
    build_args += check_deprecated_cmake_args(bif_install_version)

    if platform_name == "Darwin":
        build_args += get_macOS_architecture_flags(is_release, bif_install_version, maya_install_version)

    if platform_name == "Windows":
        build_args += set_windows_compiler()

    if is_release or is_fresh_build:
        remove_old_build_dirs(release_name)

    subprocess.check_call(build_args)
    # Build the operator
    subprocess.check_call(
        [
            "cmake", "--build", CMAKE_BUILD_DIR,
            "--config", "Release",
            "--target", "install"
        ]
    )

def check_deprecated_cmake_args(bif_install_version):
    # The min version will be first if it's compatible, needed for comparing strings
    bif_version_compatibility = sorted([MIN_NO_DEPRECATED_ARGS_VERSION, bif_install_version], key=version_sort_function)[0]
    if bif_version_compatibility != MIN_NO_DEPRECATED_ARGS_VERSION:
        return ["-DUSE_DEPRECATED_HEADER_PARSER_ARGS=ON"]
    else:
        return []

def generate_release_data(platform_name, bifrost_install_path):
    success = True
    try:
        path_split = os.path.split(bifrost_install_path)[0]
        path_split, bif_install_version = os.path.split(path_split)
        maya_install_version = os.path.split(path_split)[1].lower()
        # Matches a Bifrost version string like "2.7.1.1"
        pattern = re.compile(r'^\d+(\.\d+){3}$')
        is_valid_bif_path_version = bool(pattern.match(bif_install_version))
        success = is_valid_bif_path_version
        # Matches a Maya version string like "maya2023"
        pattern = re.compile(r'^maya\d{4}$')
        is_valid_maya_path_version = bool(pattern.match(maya_install_version))
        success = success and is_valid_maya_path_version
    except:
        success = False
    if not success:
        raise Exception(
            "Bifrost or Maya version could not be extracted from bifrost location: {}"
            .format(bifrost_install_path)
        )

    return {
        "release_name": "Bulletfrost_v{}_{}_bif{}".format(
            BULLETFROST_VERSION,
            PLATFORM_INFO[platform_name]["nice_platform_name"],
            bif_install_version
        ),
        "bif_install_version": bif_install_version,
        "maya_install_version": maya_install_version
    }


def set_windows_compiler():
    vswhere_path = PLATFORM_INFO["Windows"]["vswhere_path"]
    try:
        vs_version_year = subprocess.check_output([
            vswhere_path, "-latest", "-property",
            "catalog_productLineVersion"
        ]).decode().rstrip("\r\n")
    except Exception as e:
        raise Exception(
            ("No valid Visual Studio Install found with standard vswhere.exe path:\n"
             "{}".format(vswhere_path))
        ) from e
    min_visual_studio_version = PLATFORM_INFO["Windows"]["min_visual_studio_version"]
    if vs_version_year < min_visual_studio_version:
        raise Exception("Miniumum Visual Studio version required is {}".format(min_visual_studio_version))
    build_script_print("Visual Studio version is: {}".format(vs_version_year))

    vs_version_num = PLATFORM_INFO["Windows"]["visual_studio_version_map"][vs_version_year]
    build_args = ["-G Visual Studio {} {}".format(vs_version_num, vs_version_year)]
    if vs_version_year >= "2022":
        # v.142 is Visual Studio 2019 Build tools. Must be installed manually in Visual Studio 2022
        build_script_print(
            (
                "Visual Studio 2022 or higher detected. Please make sure to manually install the 2019 build tools\n" 
                "inside of Visual Studio 2022 (or higher), as only the 2019 tools are compatible with Bifrost SDK\n"
             )
        )
        build_args += ["-T v142"]
    return build_args

def get_macOS_architecture_flags(is_release, bif_install_version, maya_install_version):
    osx_arch_flag = "-DCMAKE_OSX_ARCHITECTURES="
    vcpkg_triplet_flag = "-DVCPKG_TARGET_TRIPLET="
    # A little confusing, but the min version will be first if it's compatible, needed for comparing version strings
    bif_version_compatibility = sorted([PLATFORM_INFO["Darwin"]["min_arm_arch_bif_version"], bif_install_version], key=version_sort_function)[0]
    has_bifrost_arm_support = (bif_version_compatibility == PLATFORM_INFO["Darwin"]["min_arm_arch_bif_version"]
                               and maya_install_version >= PLATFORM_INFO["Darwin"]["min_arm_arch_maya_version"])
    if is_release and has_bifrost_arm_support:
        # Build a universal binary for public releases
        return [
            osx_arch_flag + "arm64;x86_64",
            vcpkg_triplet_flag + "universal-binary-osx"
        ]
    
    # Just build based off the system architecture in normal builds
    arch = platform.processor()
    if has_bifrost_arm_support and arch == "arm":
        return [osx_arch_flag + "arm64"]
    else:
        return [osx_arch_flag + "x86_64"]
    
def remove_old_build_dirs(release_name):
    project_root_path = os.path.dirname(os.path.realpath(__file__))

    build_output_dir = os.path.join(project_root_path, CMAKE_BUILD_DIR)
    release_package_dir = os.path.join(project_root_path, release_name)

    if os.path.isdir(build_output_dir):
        shutil.rmtree(build_output_dir)
        build_script_print("Removed build directory:\n {}".format(build_output_dir))
    if os.path.isdir(release_package_dir):
        shutil.rmtree(release_package_dir)
        build_script_print("Removed build directory:\n {}".format(release_package_dir))

def build_script_print(print_msg):
    print("PYTHON_BIFROST_BUILD_SCRIPT - " + print_msg)

def main(args):
    is_release = args.release
    bifrost_install_path = args.bifrost_path
    is_fresh_build = args.fresh_build

    platform_name = platform.system()
    check_cmake_exists()
    check_vcpkg_exists(platform_name)
    
    if not bifrost_install_path:
        bifrost_install_path = get_bifrost_install_path(platform_name)
        build_script_print("Detected Bifrost install path: {}".format(bifrost_install_path))
    else:
        build_script_print("Passed Bifrost install path: {}".format(bifrost_install_path))

    build_with_cmake(bifrost_install_path, platform_name, is_release, is_fresh_build)

def setup_args():
    parser = argparse.ArgumentParser(description="Build the Bulletfrost operators and helpers")
    parser.add_argument("-r", "--release", action="store_true", help="If specified, builds for public release")
    parser.add_argument("-bp", "--bifrost-path", help="Specify an alternate path for the Bifrost install")
    parser.add_argument("-f", "--fresh-build", action="store_true", help="Remove old build directories if they exist")
    args = parser.parse_args()
    return args

if __name__ == "__main__":
    args = setup_args()
    main(args)
