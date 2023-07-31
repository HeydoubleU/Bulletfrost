import os, shutil

source_path = os.path.expanduser("~") + "/source"
compounds_path = "A:/TeamEnvironment/Compounds"
lib_name = "Bulletfrost"


def removeFolder(rel_path):
    root_path = f"{source_path}/{rel_path}"
    if not os.path.isdir(root_path):
        return

    for f in os.listdir(root_path):
        p = os.path.join(root_path, f)
        if f.startswith(lib_name) and os.path.isdir(p):
            shutil.rmtree(p)
            return


# remove previous build
shutil.rmtree(f"{source_path}/repos/{lib_name}/out", ignore_errors=True)
removeFolder("bifrost_libs")
removeFolder("builds")

# run batch file
os.system(f"{source_path}/repos/{lib_name}/build.bat")

# copy files
for folder in os.listdir(f"{source_path}/bifrost_libs"):
    if not folder.startswith(lib_name):
        continue

    src = f"{source_path}/bifrost_libs/{folder}"
    shutil.copytree(src, f"{compounds_path}/{lib_name}", dirs_exist_ok=True)
    break
