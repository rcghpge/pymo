from sys.info import *

fn get_os_system() -> String:
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
        return "32-bit"
    elif is_64bit():
        return "64-bit"
    elif is_x86():
        return "x86 architecture"
    else:
        return"Failed to detect system architecture"

fn get_processors() -> String:
    if is_amd_gpu():
        return("AMD")
    elif has_nvidia_gpu_accelerator():
        return "NVIDIA GPU accelerator equipped"
    elif is_nvidia_gpu():
        return("NVIDIA GPU")
    elif is_apple_m1():
        return "Apple M1"
    elif is_apple_m2():
        return "Apple M2"
    elif is_apple_m3():
        return "Apple M3"
    else:
        return "Failed to detect microprocessors"  

fn main() raises:
    var os_name = get_os_system()
    var os_arch = get_target_arch()
    var os_proc = get_processors()
    print("System Overview:")
    print("Operating System:", os_name)
    print("System Architecture:", os_arch)
    print("Microprocessor System:", os_proc)

