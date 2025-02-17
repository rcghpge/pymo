"""
MIT License

Copyright (c) 2024 Hylke Donker

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

This module is from the Bridge package developed by the Mojo community.
See the original repository here: https://gitlab.com/hylkedonker/bridge

Bridge currently runs on an older version of MAX so I could not add it to PyMo's build currently.
"""
from libpm import get_numpy
from python import Python, PythonObject
from tensor import Tensor, TensorShape, TensorSpec
from utils.index import Index


def _integer_list(iterable: PythonObject) -> List[Int]:
    """Convert iterable PythonObject of intergers to integer list."""
    var out = List[Int]()
    for item in iterable:
        out.append(Int(item))
    return out


def _tensor_shape_to_pylist(shape: TensorShape) -> PythonObject:
    """Convert TensorShape to python integer list (for np.reshape)."""
    out_list = Python.evaluate("[]")
    for i in range(shape.rank()):
        out_list.append(shape[i])
    return out_list


fn ndarray_to_tensor[
    T: DType = DType.float64
](array_numpy: PythonObject) raises -> Tensor[T]:
    """Convert NumPy float array to a mojo tensor of same shape.
    Args:
        array_numpy: Numpy ndarray to convert to mojo tensor.
    Parameters:
        T: Data type of the tensor.
    Returns: A Mojo tensor shaped like `array_numpy`.
    """
    # Flatten input to a vector and allocate memory for the tensor.
    var np_flat = array_numpy.flatten()
    var n_elements = len(np_flat)
    var out_spec = TensorSpec(T, n_elements)
    var out_flat = Tensor[T](out_spec)

    # Copy elements in vector (=flat) representation to the new flat tensor.
    for i in range(n_elements):
        out_flat[Index(i)] = Float64(np_flat[i]).cast[T]()

    # Reshape flat tensor to same shape as `array_numpy`.
    var out_shape = _integer_list(array_numpy.shape)
    var out = out_flat.reshape(TensorShape(out_shape))
    return out


def tensor_to_ndarray(tensor_mojo: Tensor) -> PythonObject:
    """Convert mojo tensor to NumPy array.
    Args:
        tensor_mojo: Mojo tensor to convert to NumPy array.
    Returns: Numpy ndarray shaped like `tensor_mojo`.
    """
    var np = get_numpy()

    # Flatten tensor to a vector and create NumPy array.
    var n_elements = tensor_mojo.num_elements()
    var flat_shape = TensorShape(n_elements)
    var tensor_flat = tensor_mojo.reshape(flat_shape)
    var np_flat = np.empty(shape=(n_elements,))

    # Copy elements in vector (=flat) representation to the new (flat) array.
    for i in range(n_elements):
        np_flat.itemset(i, tensor_flat[i])

    # Reshape flat array to match tensor shape.
    var out_shape = _tensor_shape_to_pylist(tensor_mojo.shape())
    return np_flat.reshape(out_shape)
