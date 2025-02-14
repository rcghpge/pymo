# Mojo's time package
from time import perf_counter_ns
from collections.string import String

# Main function:
fn main() raises:
    var start = perf_counter_ns()
    print("Welcome to programming in Mojo!" + chr(0x1F525))
    var end = perf_counter_ns()
    var elapsed_ns = end - start
    var elapsed_ms = elapsed_ns / 1000000
    print("Execution time: " + String(elapsed_ms) + " ms")
