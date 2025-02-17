from pymo import libpm
from python import Python, PythonObject

"""
Importing features still a WIP. Will look more into package and module interoperability.
See link here for more information: https://docs.modular.com/mojo/manual/packages
"""


fn test_script() raises:
    # Variables do not seem natively modular.
    # var np = numpy # from libpm - pops an error

    # The import_module() function from Mojo's python package operates pretty seamlessly
    var np = Python.import_module("numpy")

    # variable a 2D numpy array doesn't execute
    # var a = np.array([[1, 2, 3, 4, 5, 6], [7, 8, 9, 10, 11, 12]])
    # print(a.shape)

    # variable b 1D numpy array executes no issues
    var b = np.array([1, 2, 3, 4, 5, 6])
    print(b.shape)


fn test_libpm() raises:
    """
    I wanted to see if I could call Python/NumPy from Mojo via a variable. Nope lol. The docs state
    that variables in Mojo contain a value or object. Not sure if OOP can be leveraged here.
    """ 
    #var np = numpy
    #var c = np.array([1, 2, 3, 4, 5, 6])
    #print(c.shape)
    pass


fn main() raises:
    test_script()
    test_libpm()
