from builtin import file
from collections.string import String
from python import Python
from time import perf_counter_ns


# Main execution of code
fn get_libm() raises:
    # time runtime execution
    var start = perf_counter_ns()

    # Import Python libraries
    # var np = Python.import_module("numpy")
    # var pd = Python.import_module("pandas")
    # var pytest = Python.import_module("pytest")
    # var sns = Python.import_module("seaborn")
    # var plt = Python.import_module("matplotlib.pyplot")
    # var skl = Python.import_module("scikit-learn")
    # var scipy = Python.import_module("scipy")
    # var joblib = Python.import_module("joblib")
    # var threadpoolctl = Python.import_module("threadpoolctl")
    # var random = Python.import_module("random") # pass
    # var math = Python.import_module("math") # pass

    # var  f = open("data/house_prices.csv", "r")
    # print(f.read())
    # f.close()

    # time runtime execution and print statements
    var end = perf_counter_ns()
    var elapsed_ns = end - start
    var elapsed_ms = elapsed_ns / 1000000
    print("Importing libm module...")
    print("SUCCESS - Execution time: " + String(elapsed_ms) + " ms")
