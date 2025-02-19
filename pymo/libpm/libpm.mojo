from builtin import file
from collections.string import String
from python import Python, PythonObject


fn numpy() raises -> PythonObject:
    return Python.import_module("numpy")


fn pandas() raises -> PythonObject:
    return Python.import_module("pandas")


fn seaborn() raises -> PythonObject:
    return Python.import_module("seaborn")


fn pytest() raises -> PythonObject:
    return Python.import_module("pytest")


fn scipy() raises -> PythonObject:
    return Python.import_module("scipy")


fn sklearn() raises -> PythonObject:
    return Python.import_module("sklearn")


fn random() raises -> PythonObject:
    return Python.import_module("random")


fn math() raises -> PythonObject:
    return Python.import_module("math")


fn matplotlib_pyplot() raises -> PythonObject:
    return Python.import_module("matplotlib.pyplot")


fn polars() raises -> PythonObject:
    return Python.import_module("polars")

    # var joblib = Python.import_module("joblib")
    # var threadpoolctl = Python.import_module("threadpoolctl")
