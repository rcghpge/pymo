from pymo.sys.os import os, arch, processors


# Sys module
fn main() raises:
    var os_name = os()
    var os_arch = arch()
    var os_proc = processors()
    print("System Overview:")
    print("Operating System:", os_name)
    print("System Architecture:", os_arch)
    print("Microprocessor System:", os_proc)
