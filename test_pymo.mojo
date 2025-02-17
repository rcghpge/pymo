from time import perf_counter_ns
from builtin.io import print
from collections.string import String
from pymo.libpm import get_numpy, get_pandas
from python import Python
from test import test_libm, test_libpm
from testing import *
from examples.sklearn import generate_models


fn test_pymo() raises:
    print("Testing PyMo environment...")

    # Libpm module
    get_numpy()
    get_pandas()

    # print("Testing Sci-kit Learn framework")
    # generate_models()
    print("SUCCESS - PyMo environment stable.")


# Testing pymo package
fn main() raises:
    test_pymo()
