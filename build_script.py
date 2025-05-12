import os, shutil, re


def getProjectName(cmake_filename):
    if not os.path.exists(cmake_filename):
        raise FileNotFoundError(f"File {cmake_filename} does not exist")

    with open(cmake_filename, "r") as file:
        content = file.read()

    # Find the project name using regex
    match = re.search(r"project\s*\(\s*([^\s]+)", content)
    if not match:
        raise ValueError("Project name not found in CMakeLists.txt")
    
    project_name = match.group(1)
    print(f"Project name found: {project_name}")
    return project_name


root = os.path.dirname(__file__).replace("\\", "/")
project_name = getProjectName(root + "/CMakeLists.txt")

# remove previous build
if os.path.exists(root + "/build"):
    shutil.rmtree(root + "/build")


# run cmake
os.chdir(root)
os.system("cmake --preset windows")
os.system("cmake --build --preset windows")


# copy to pack
for folder in os.listdir(root + "/build"):
    if not folder.startswith(project_name):
        continue

    src = f"{root}/build/{folder}"
    shutil.copytree(src, f"{root}/packs/{project_name}", dirs_exist_ok=True)
    break