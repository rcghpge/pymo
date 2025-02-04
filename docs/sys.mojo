# Pymo sys documentation - Goal is a robust sys package in Mojo for robust systems programming

# See Modular documenation for sys package
""" 
https://docs.modular.com/mojo/stdlib/sys/

- In order for Mojo to become a robust systems programming language, the builtin package is also highly 
recommended via the simd and pointer modules in its continued research and development.
"""

# Mojo's sys package - Implements the sys package
"""
Modules within Mojo's sys package:
- arg: Implements functions and variables for interacting with execution and system environment.
- debug: This module includes the debug hook functions.
- ffi: Implements a foreign functions interface (FFI).
- info: Implements methods for querying the host target info.
- intrinsics: Defines intrinsics.
- param_env: Implements functions for retrieving compile-time defines.
- terminate: This module includes the exit functions.
"""

# Notes
"""
Possible PyMo extension of Mojo's sys package:
- Compile to C/C++ (could be possible for extension and leveraging Mojo to other ecosystems eg Rust, Zig, other systems programming 
languages and others).
- Leverage Cython via Cython wrappers - cdef and extern to .pyx Cython source files
- Compile Cython code .pyx to .c via cythonize (C extension module)
- Python Integration: Use the compiled module in Python (ex - syspm Python module) to integrate into Mojo (via Mojo's python package eg 
example Python.import_module("syspm"). Now, Python code can call into Mojo via Cython). The default bridge for Python currently is CPython
via Mojo's python package. See Mojo docs.
- Testing and Debugging: Ensure everything works as expected. Use Python’s testing frameworks alongside Cython’s 
debugging capabilities.
- Performance: While Cython can significantly boost performance, this could affect performance overhead of calling into 
Mojo which might vary based on how often these calls are made and how much data is transferred across the boundary.
- Portability: For portability, make sure the C or C++ interfaces are portable if planning on using this across different programming 
languages.
"""
