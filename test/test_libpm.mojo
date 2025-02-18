from testing import *
from builtin import file
from collections.string import String
from pathlib import cwd, path, Path
from pymo.libpm import get_numpy
from python import Python, PythonObject
from collections import Optional
from sys import *
from time import perf_counter_ns


# Test libpm module
fn test_libpm() raises:
    var np = get_numpy()


# Mojo Tests
fn test_mojo() raises:
    # pathlib package
    """
    Correctly finds file path, but does not detect files.
    """
    var file_path = Path("data") / "house_prices.csv"
    # print("Mojo Tests:")
    # print()
    # print("pathlib package:")
    # print("File Path:")
    # print(file_path)
    # print("File:")
    if file_path.exists():
        # print("File exists")
        pass
    else:
        # print("File does not exist")
        # print("Mojo Tests complete.")
        # print()
        pass


# Python Tests
fn test_python() raises:
    # static throw_python_exception_if_error_state(mut cpython: CPython)

    # This is equivalent to Python's `import numpy as np`
    var np = Python.import_module("numpy")
    a = np.array([1, 2, 3])
    # print("Python Tests:")
    # print()
    # print("numpy library:")
    # print("Arrays:")
    # print(a)
    # print()

    # print("pandas library:")
    var pd = Python.import_module("pandas")
    # Create the DataFrame
    var columns = Python.evaluate("['ID', 'Name']")
    var data = Python.evaluate("[[1, 'Alice'], [2, 'Bob'], [3, 'Charlie']]")
    var df = pd.DataFrame(data=data, columns=columns)
    # print("Dataframes:")
    # print(df)
    # print("Python Tests complete.")


# Main execution of code
fn main() raises:
    # Mojo stdlib, packages, & Python programming language tests
    var start = perf_counter_ns()
    test_mojo()
    test_python()
    test_libpm()

    # time runtime execution and print statements
    var end = perf_counter_ns()
    var elapsed_ns = end - start
    var elapsed_ms = elapsed_ns / 1000000
    print("Testing libpm module...")
    print("SUCCESS - Execution time: " + String(elapsed_ms) + " ms")

    # Notes
    """
    List and dicionary comprehension with pandas import is different from
    standard Python. Mojo implements traits, types, and literals. OOP methods 
    are different at the functional level. Discrepancies may be because Mojo is
    designed as a systems programming language and Python is an interpreted language. 
    """
