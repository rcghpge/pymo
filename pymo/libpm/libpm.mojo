from builtin import file
from collections.string import String
from python import Python, PythonObject


fn get_numpy() raises -> PythonObject:
    return Python.import_module("numpy")


fn get_pandas() raises -> PythonObject:
    return Python.import_module("pandas")

    # var pytest = Python.import_module("pytest")
    # var sns = Python.import_module("seaborn")
    # var plt = Python.import_module("matplotlib")
    # var skl = Python.import_module("scikit-learn")
    # var scipy = Python.import_module("scipy")
    # var joblib = Python.import_module("joblib")
    # var threadpoolctl = Python.import_module("threadpoolctl")
    # var random = Python.import_module("random") # pass
    # var math = Python.import_module("math") # pass
