from sys import info


fn get_operating_system() -> String:
    if os_is_linux():
        return "Linux"
    elif os_is_macos():
        return "macOS"
    elif os_is_windows():
        return "Windows"
    else:
        return "Unknown OS"

fn main() raises:
    var os_name = get_operating_system()
    print(f"Operating System: {os_name}")
