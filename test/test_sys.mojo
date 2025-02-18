from pymo.sys.os import os, arch, processors
from python import Python, PythonObject
from time import perf_counter_ns


# Test sys module
fn test_sys() raises:
    var os = os()
    var arch = arch()
    var processors = processors()


# Main execution of code
fn main() raises:
    var start = perf_counter_ns()
    test_sys()

    # time runtime execution and print statements
    var end = perf_counter_ns()
    var elapsed_ns = end - start
    var elapsed_ms = elapsed_ns / 1000000
    print("Testing sys module...")
    print("SUCCESS - Execution time: " + String(elapsed_ms) + " ms")
