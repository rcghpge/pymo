from sys.info import os_is_linux, os_is_macos, os_is_windows
from sys.info import is_amd_gpu, has_nvidia_gpu_accelerator
from sys.info import is_32bit, is_64bit

fn get_operating_system() -> String:
    if os_is_linux():
        return "Linux"
    elif os_is_macos():
        return "macOS"
    elif os_is_windows():
        return "Windows"
    else:
        return "Unknown OS"

fn get_target_arch() -> String:
    if is_32bit():
        return("32-bit architecture")
    elif is_64bit():
        return("64-bit architecture")
    else:
        return"Unknown architecture"

fn get_processors() -> String:
    if is_amd_gpu():
        return("AMD")
    #elif is_nvidia_gpu():
        #return("NVIDIA GPU")
    elif has_nvidia_gpu_accelerator():
        return "NVIDIA GPU equipped"
    else:
        return "Unknown processors"  

fn main() raises:
    var os_name = get_operating_system()
    var os_proc = get_processors()
    print("System Overview:")
    print("Operating System:", os_name)
    print("Processor System:", os_proc)

