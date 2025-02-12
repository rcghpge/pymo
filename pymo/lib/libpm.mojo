from builtin import file
from python import Python
from time import perf_counter_ns
from testing import *


# Main execution of code
fn main() raises:
    # time runtime execution
    var start = perf_counter_ns()

    # Import Python libraries
    var np = Python.import_module("numpy")
    var pd = Python.import_module("pandas")
    # var pytest = Python.import_module("pytest")
    # var sns = Python.import_module("seaborn")
    # var plt = Python.import_module("matplotlib")
    # var skl = Python.import_module("scikit-learn")
    # var scipy = Python.import_module("scipy")
    # var joblib = Python.import_module("joblib")
    # var threadpoolctl = Python.import_module("threadpoolctl")
    # var random = Python.import_module("random") # pass
    # var math = Python.import_module("math") # pass

    # time runtime execution and print statements
    var end = perf_counter_ns()
    var elapsed_ns = end - start
    var elapsed_ms = elapsed_ns / 1000000
    print("Importing libpm package...")
    print("SUCCESS - Execution time: " + str(elapsed_ms) + " ms")
