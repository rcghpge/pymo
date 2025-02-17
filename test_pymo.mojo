from time import perf_counter_ns
from builtin.io import print
from collections.string import String
from examples.sklearn import generate_models
from pymo.libpm import get_numpy, get_pandas
from pymo.sys.os import get_os, get_arch, get_processors
from test import test_libm, test_libpm


fn test_pymo() raises:
    print("Testing PyMo environment...")
    # Libm module

    # Libpm module
    get_numpy()
    get_pandas()

    # Sys module

    # print("Testing Sci-kit Learn framework")
    # generate_models()
    print("SUCCESS - PyMo environment stable.")


# Testing pymo package
fn main() raises:
    test_pymo()
