from builtin.io import print
from collections.string import String
from examples.sklearn import generate_models
from pymo.libpm import get_numpy
from pymo.sys.os import get_os
from time import perf_counter_ns


fn test_pymo() raises:
    print("Testing PyMo environment...")
    # Libm module

    # Libpm module
    var test = get_numpy()

    # Sys module
    var test2 = get_os()

    # print("Testing Sci-kit Learn framework")
    # generate_models()


# Testing pymo package
fn main() raises:
    var start = perf_counter_ns()
    test_pymo()
    var end = perf_counter_ns()
    var elapsed_ns = end - start
    var elapsed_ms = elapsed_ns / 1000000
    print("SUCCESS - Execution time: " + String(elapsed_ms) + " ms")
