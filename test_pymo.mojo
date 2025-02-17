from time import perf_counter_ns
from builtin.io import print
from collections.string import String
from pymo import libm, libpm
from python import Python
from test import test_libm, test_libpm
from testing import *
from examples.sklearn import generate_models


fn test_pymo() raises:
    print("Testing PyMo environment...")
    print()

    # Mojo's time library
    var start = perf_counter_ns()

    # Import Python libraries
    var np = Python.import_module("numpy")
    var pd = Python.import_module("pandas")

    # Example: Create a random Dataframe
    var data = np.random.randn(10, 3)
    var columns = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
    var df = pd.DataFrame(data, columns)
    print("Testing Numpy and Pandas frameworks:")
    print("Dataframe:")
    print(df)
    print()
    print("Shape:")
    print(df.shape)
    print()
    print("Dataframe Descriptive Summary:")
    print(df.describe())
    print()
    print("House Prices Dataset:")
    var df2 = pd.read_csv("data/house_prices.csv")
    print(df2)
    print()

    print("Testing Sci-kit Learn framework")
    generate_models()
    # Track time
    var end = perf_counter_ns()
    var elapsed_ns = end - start
    var elapsed_ms = elapsed_ns / 1000000

    print()
    print("SUCCESS - Execution time: " + String(elapsed_ms) + " ms")


# Testing pymo package
fn main() raises:
    test_pymo()
