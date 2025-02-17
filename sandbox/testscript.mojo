from pymo.libpm import get_numpy
from python import python, Python, PythonObject


fn main() raises:
    var np = get_numpy()

    # 1D NumPy array
    var a = np.array([1, 2, 3])
    print("NumPy Array:")
    print(a)
