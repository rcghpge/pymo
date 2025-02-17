from pymo.sys.os import get_os, get_arch, get_processors


# Sys module
fn main() raises:
    var os_name = get_os()
    var os_arch = get_arch()
    var os_proc = get_processors()
    print("System Overview:")
    print("Operating System:", os_name)
    print("System Architecture:", os_arch)
    print("Microprocessor System:", os_proc)
