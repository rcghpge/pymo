from builtin.dtype import DType
from pymo.libpm import numpy
from python import Python
from tensor import Tensor, TensorShape
from test import ndarray_to_tensor


# Libpm module
fn main() raises:
    """
    NumPy from Mojo currently has issues executing Mojo code with any arrays over 2D from my tests.
    Tensors of rank higher than 1 probably need workaround as well.
    """
    # Import NumPy
    var np = numpy()

    # Create NumPy array(s)
    var np_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], dtype=np.int32)
    np_array = np_array.reshape(2, 5)

    # Create 1D NumPy arrays
    var array1 = np.array([1, 2, 3, 4], dtype=np.int32)
    var array2 = np.array([5, 6, 7, 8], dtype=np.int32)
    var array3 = np.array([9, 10, 11, 12], dtype=np.int32)
    var result = array1 + array2 + array3

    # Test 2D > array(s) with Bridge module
    # var array4 = np.array([[1, 2, 3, 4, 5], [6, 7, 8, 9, 10]], dtype = np.int32)
    var array4 = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], dtype=np.int32)
    mojo_tensor = ndarray_to_tensor[DType.int32](array4)

    # Convert NumPy array to Mojo tensor
    mojo_tensor2 = ndarray_to_tensor[DType.int32](result)

    # Print the tensor(s)
    print("NumPy Arrays and Mojo Tensor Conversions:")
    print(np_array)
    print(mojo_tensor)
    print(mojo_tensor2)
