from time import perf_counter_ns
from builtin.io import print
from collections.string import String
from python import Python
from testing import *


# Testing pymo package
fn main() raises:
    test_pymo()
    # test_libm()


fn test_pymo() raises:
    print("Testing pymo environment...")
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
    print("Numpy and Pandas libraries test results:")
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

    # Track time
    var end = perf_counter_ns()
    var elapsed_ns = end - start
    var elapsed_ms = elapsed_ns / 1000000

    print()
    print("SUCCESS - Execution time: " + String(elapsed_ms) + " ms")
