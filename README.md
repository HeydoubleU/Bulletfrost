# Bulletfrost
Bullet Physics for Bifrost. Created and tested with Bifrost 2.7.1.0 and Maya 2024.1.

<p float="left">
  <img src="https://github.com/HeydoubleU/Bulletfrost/assets/56705510/c1ee999c-cc7a-48f9-8e20-7f9f4d10ed2c" width="400" />
  <img src="https://github.com/HeydoubleU/Bulletfrost/assets/56705510/4bb0f99b-0d4b-4b19-b8c2-d7cff3d49569" width="335" />
</p>

### Features
This initial release focuses on essentials for rigid body simulations, specifically creating collision objects from Bifrost geometry and rigid body constraints.

In addition to further developing the RBD feature set, future feature goals include:
* Diagnostic views for various compounds.
* Soft body dynamics, cloth and lattice simulations.
* Low level utilities, ie. collision query, ray casting, geometry sweep, general purpose bullet operators useful outside of just simulation.
* GPU solver, this part of bullet appears to be experimental and completely undocumented so it is unclear how well this will go.

## Installation
The current release only includes a windows build, but hopefully this will change in the future.

Copy the `Bulletfrost` folder to your user compounds or other preferred location. Set `BIFROST_LIB_CONFIG_FILES` to the location of `BulletfrostPackConfig.json`. This can be done by editing your Maya.env with the following

```
BIFROST_LIB_CONFIG_FILES = <..>/Bulletfrost/BulletfrostPackConfig.json
```

If the environment variable is already set you can append a path with using `;`

```
BIFROST_LIB_CONFIG_FILES = <existing value>;<..>/Bulletfrost/BulletfrostPackConfig.json
```

## Getting Started
Documenting compounds is still a todo, however the library includes a few demo scenes with some explanation of their setup.

![ezgif-5-1d2e0c242e](https://github.com/HeydoubleU/Bulletfrost/assets/56705510/eb76773d-ccfd-4acc-be7c-7864b1574776)

## Building the project
You may wish to build the project for newer/older versions of Maya/Bifrost that are not provided. Internally Microsoft's `vcpkg` C++ Library manager is used to include the Bullet3 libraries. It is a git submodule included in the project, so if not using the below mentioned python build script, then make sure to pull the submodule as well. Please consult Microsoft's documentation when troubleshooting vcpkg issues: https://github.com/microsoft/vcpkg

A build script called `build_script.py` is included which will search the default path for the different platforms and attempt to build for the highest Maya and Bifrost combination found on the system. Alternatively you can pass the path of the installation if you want to build for an older version, or if your installation is located at a non-default path for the platform. Run it from a shell with:

`python3 build_script.py`

OR

`python3 build_script.py --help`

for all usage options. If you have a non-default installation path for Bifrost, you must pass the path manually like so:

`python3 build_script.py --bifrost-path </path/to/bifrost/install>`

for example:

`python3 build_script.py -bp /my/cool/path/bifrost/maya2023/2.6.0.0/bifrost`

Below are more detailed instructions for each platform and the requirements for building.

## Building with CMake

You need CMake 3.17 and up: https://cmake.org/

The public Bifrost SDK was first released with Bifrost 2.5, therefore Bifrost 2.5 or higher is required to build this operator.

### Windows

1. Install CMake via the official installer or the Chocolatey package manager: `choco install cmake`
2. Install the full Visual Studio IDE or just the Build Tools (testing was done with the full IDE). Minimum required version is Visual Studio 2019. If using 2022 (or higher), only the 2019 toolchain is supported by the Bifrost SDK. Make sure to install the build tools v.142 (Visual Studio 2019) manually through the Visual Studio Installer. Once installed, the build script will automatically handle picking the right generator.

### MacOS

1. Install the XCode full IDE or alternatively, just the command line tools with: `xcode-select --install`
2. Install CMake via the official installer or the Homebrew package manager: `brew install cmake`
3. Both Apple Silicon (arm64) and Intel X86 (x86_64) architectures are supported on Bifrost 2.7 and higher, in combination with Maya 2024 and higher. Previous versions fall back to `x86_64`. Your processor's architecture will automatically be selected. To build a universal binary, pass the release flag to the build script: `python3 build_script.py --release`

### Linux

1. Autodesk only officially supports RHEL flavors of Linux. All testing was done on AlmaLinux
2. Install `gcc` and `g++` via your distro's package manager. On AlmaLinux:
    `sudo dnf install gcc g++`
3. Install `cmake` via your distro's package manager. On AlmaLinux: `sudo dnf install cmake`
