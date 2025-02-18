from sys.info import *


fn os() -> String:
    if os_is_linux():
        return "Linux"
    elif os_is_macos():
        return "macOS"
    elif os_is_windows():
        return "Windows"
    else:
        return "Unknown OS"


fn arch() -> String:
    if is_32bit():
        return "32-bit"
    elif is_64bit():
        return "64-bit"
    elif is_x86():
        return "x86 architecture"
    else:
        return "Failed to detect system architecture"


fn processors() -> String:
    if is_amd_gpu():
        return "AMD"
    elif has_nvidia_gpu_accelerator():
        return "NVIDIA GPU accelerator equipped"
    elif is_nvidia_gpu():
        return "NVIDIA GPU"
    elif is_apple_m1():
        return "Apple M1"
    elif is_apple_m2():
        return "Apple M2"
    elif is_apple_m3():
        return "Apple M3"
    else:
        return "Failed to detect microprocessors"
