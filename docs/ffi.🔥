# Pymo FFI documentation - Goal is to build a robust ffi module to leverage FFI in Mojo for systems programming

# See Modular documentation for sys package and ffi module:
"""
https://docs.modular.com/mojo/stdlib/sys/ffi/
"""

# FFI - Foreign Function Interface
"""
Optional names - use Mojo's sys package via ffi module.

OR

- mffi - for Mojo
- cffi - for C
- cppffi - for C++
- rffi - for Rust
- pffi - for Python 
- zffi - for Zig
- ctypes 
- SWIG

- optional - ffi for LLVM - MLIR?
- LLVM leverages LLVM IR - an infrastructure through which Mojo can leverage FFI.
- Clang which is a compiler in the LLVM project has FFI functionality that can
be leveraged.
- llvm-objdump
- MLIR: MLIR dialects, LLVM dialects, custom dialects.
"""

# Description
"""
Foreign Function Interface (FFI) is a mechanism that allows one programming language 
to call functions, utilize libraries, or interact with code written in another 
language. In systems programming languages, where performance and control over 
low-level details are critical, FFI plays a vital role in enabling interoperability 
with existing libraries or systems.
"""

"""
	    Optimal Approaches
  Use Case	              Recommended Approach
- Simple function calls	        ctypes or cffi
- Performance-critical code	Cython or Python C API
- Large C/C++ libraries	        SWIG
- Maximum control or		Python C API
custom Python types
"""

# FFI for Python - TODO: other programming languages
"""
        Category						   Details
- Alignment with Python's Strengths	Accommodate Python's dynamic typing and garbage collection model.
- Performance Goals	                Minimize overhead when calling Python from your language and vice versa. Optimize for high-frequency FFI calls with minimal latency.
- Memory Management Compatibility	Bridge differences between Python’s garbage collection and your language’s memory model. Ensure no memory leaks or dangling references.
- User-Friendly Interface	        Provide simple mechanisms for defining Python bindings and calling Python functions. Minimize developer boilerplate.
- Support for Python's Ecosystem	Seamlessly call Python libraries (e.g., NumPy, pandas) and allow Python to call libraries written in your language.
- Multithreading and Python's GIL	Manage Python’s Global Interpreter Lock (GIL) to allow multithreaded FFI scenarios while ensuring thread safety.
- Error Handling	                Translate Python exceptions into your language’s error model and vice versa, enabling seamless error propagation.
- Data Type Interoperability	        Map Python types (int, float, list, dict) directly to equivalent types in your language. Enable efficient zero-copy memory sharing for large data.
- Ease of Maintenance	                Provide tooling to automate binding generation (similar to Rust’s pyo3 or C++’s pybind11). Ensure long-term usability.
- Scalability	                        Design the FFI to handle large-scale applications requiring frequent Python interactions.
- Python C API Integration	        Use Python’s C API (PyObject, Py_Initialize, etc.) as the core mechanism for interacting with Python.
- Embedding Python Interpreter	        Allow embedding Python for inline scripting or direct execution of Python code.
- ABI Compatibility	                Adopt Python’s ABI to ensure seamless linking to Python libraries and compatibility with existing C-based extensions.
- Binding Generators	                Create tools to automatically generate bindings for Python and your language, minimizing manual work.
- JIT Compilation Hooks	                Integrate JIT compilation to dynamically optimize Python calls for high-performance use cases.
- AOT Compilation with Optimization     Pre-compilation of code into machine-specific binaries before runtime, coupled with advanced optimization techniques.
- Enhanced Safety Features	        Add static analysis tools to verify Python function signatures at compile time and enforce type safety.
- Native Python-Like Syntax	        Support Python-like syntax in your language for rapid prototyping, while retaining systems-level performance and control.
- Runtime Type Interoperability	        Implement a universal type system that seamlessly translates types between Python and your language.
- Automatic Memory Interop	        Automatically bridge Python’s garbage collector and your language’s memory management model.
- Exposure to Python	                Allow Python to import and use libraries written in your language as if they were native Python modules.
"""

# TODO: Mojo's stdlib - sys package, builtin package, and its modules eg ffi module etc.
