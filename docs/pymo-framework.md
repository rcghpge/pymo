# PyMo Architecture and Framework
This is an initial draft of PyMo.

# Optimal Approach for FFI with Python

## 1. Build on Python’s C API
The Python C API is the most robust and widely-used method to interoperate with Python. Use it as the foundation for your language's Python FFI layer.

### How It Works
- Use Python’s `PyObject` to represent Python objects in your language.
- Wrap Python’s C API in abstractions that align with your language’s idioms.

### Features to Support
- **Object Manipulation**: Create, modify, and access Python objects.
- **Function Calls**: Call Python functions from your language.
- **Exception Handling**: Translate Python exceptions into your language’s error-handling model.

---

## 2. Embed the Python Interpreter
Allow your language to embed the Python interpreter. This enables executing Python scripts and calling Python functions inline.

### Implementation
- Use `Py_Initialize()` and `Py_Finalize()` to start and stop the interpreter.
- Provide APIs for executing Python scripts and retrieving results.

### Example API for Mojo Programming Language
```plaintext
PythonInterpreter.start()
let result = PythonInterpreter.eval("2 + 2")
print(result)  // Output: 4
PythonInterpreter.stop()
```

## 3. Use ABI Compatibility
Adopt Python’s ABI for seamless interoperation, similar to how C-based FFIs work. This ensures that Python libraries 
written in C or C++ can be directly accessed.

### Dynamic Linking
- Dynamically link to Python’s shared library (`libpython.so`).

### Example
- Directly call Python’s built-in functions (`PyImport_ImportModule`, `PyObject_CallMethod`).

---
## 4. Use Python Bindings Generators
Develop a tool or module to automate the creation of bindings for Python. This is similar to Rust’s `pyo3` or C++’s `pybind11`.

### Features
- Automatically generate bindings for Python functions and types.
- Map Python data types (`int`, `float`, `list`) to corresponding types in your language.

### Example Syntax for Mojo Programming Language
```plaintext
bind Python:
    def greet(name: str) -> str:
        return "Hello, " + name
```

## 5. Support Python's GIL (Global Interpreter Lock)
Python's GIL restricts concurrent execution of Python code. Your FFI layer must account for this when working with multithreaded systems.

### Approach
- Use `PyGILState_Ensure()` and `PyGILState_Release()` to manage GIL in threads.
- Provide abstractions to make GIL handling seamless.

## 6. Provide Interoperable Data Structures
Ensure data structures in your language map directly to Python types.

Mapping Table
Python Type	Language Type
`int`		`int32`, `int64`
`float`		`float32`, `float64`
`str`		UTF-8 string
`list`		Resizable array type
`dict`		Hash map

### Zero-Copy Mechanisms
- For large data structures (e.g., arrays), use zero-copy memory sharing mechanisms (like `mmap`).

## 7. Leverage JIT Compilation
If Mojo includes an optional JIT compiler, provide hooks to dynamically optimize Python calls.

### Robust Mojo compiling - with LLVM backend included.
- Further research and development: Things like AOT (Ahead-of-time) compiling
- AST (Abstract syntax trees), Code generation, Lexical analysis, Syntax/Semantic analysis/parsing

### Use Case
- Inline Python functions for high-performance sections of the code.

## 8. Design Robust Error Handling
Ensure seamless error handling across language boundaries.

### Approach
- Map Python exceptions to your language’s error-handling model.
- Propagate errors with context.

---
# Features Beyond FFI
To make your language more robust than existing systems programming languages, integrate features that improve productivity and safety:

## 1. Enhanced Safety for Python Interactions
- Add static analysis to verify Python function signatures at compile time.

## 2. Native Python-Like Syntax
- Support Python-like syntax for rapid prototyping while retaining systems-level control.

### Example
```plaintext
Copy code
def add(a: int, b: int) -> int:
    return a + b
```

## 3. Runtime Type Interoperability
- Implement a universal type system that seamlessly translates between Python and your language.

## 4. Automatic Memory Management Interop
- Bridge Python’s garbage collector with your language’s memory model.

## 5. Multithreading with Python Libraries
- Allow multithreaded access to Python libraries while handling Python's GIL internally.

# Inspiration from Other Programming Languages

**Rust**
- design a library (like Rust's `pyo3`) as a baseline model for designing ergonomic Python bindings.
- Integrate safety features like lifetimes for Python objects.

**Zig**
- low-level control while providing simpler syntax for Python interop.

**C++**
- Use `pybind11` as a reference for managing complex C++ and Python interoperability.

---
# Theoretical Workflow

## 1. Define Python Bindings:
- Create simple and expressive syntax for defining bindings.

## 2. Call Python Dynamically:
- Allow calling Python functions at runtime without boilerplate.

## 3. Leverage Python Libraries:
- Seamlessly import and use Python libraries with minimal setup.

## 4. Expose Libraries to Python:
- Allow Python to call libraries written in your language.

---
# Goals
By combining features like static typing, memory safety, and ergonomic FFI with Python, Mojo can be built to achieve:
- The performance and control of C, C++, Rust, and Zig.
- The ease of use and ecosystem power of Python.
- A universal systems and application programming language.
- For Mojo to adopt the syntax of Python (that is, to make Mojo compatible with existing Python programs)
- Integrate the CPython implementation for long-tail ecosystem support (CPython is Python's default interpreter. It is an 
interpreted languag as opposed to Mojo which is a compiled language akin to C, C++, Rust, Zig, and so forth.)

---
# C Programming Language FFI Aprroaches for Mojo
C implements systems-level programming such as ABI (Application Binary Interface), an interface between two binary 
program modules. Often, one of these modules is a library or operating system facility, and the other is a program 
that is being run by a user. Sysems-level feature implementation such as ABI can help lay the 'bedrock' of Mojo's 
foundation in its stdlib with packages such as `sys`, `builtin`, and modules such as `ffi` for FFI integration and
implementation.

## Key Takeaways from C
    Feature								Explanation
- C ABI Compatibility	Most programming languages and operating systems use the C ABI as a standard for interoperability. Ensure that your language adopts or supports the C ABI for seamless FFI.
- Low-Level Control	C provides direct access to memory, pointers, and system calls. Borrow this control while adding safety mechanisms like bounds checking or type enforcement.
- Efficient Data Structures	Use C’s struct and union as inspiration for representing raw, compact, and memory-efficient data structures in your language.
- Shared Libraries	Dynamic linking of `.so` (Linux) and .`dll` (Windows) libraries is native to C. Make it straightforward to load and call shared libraries in your language.
- Simplicity of FFI Bindings	C functions are easy to bind due to their simple signatures and lack of name mangling (compared to C++). Use this simplicity to streamline your language's FFI implementation.

## Practical FFI Features Implemented by C
### 1. Direct Calling of C Functions
- Features to allow Mojo to allow straightforward calls to C (other programming languages) functions with minimal boilerplate.
- Example:
```plaintext
Copy code
extern "C" fn printf(format: *const char, ...) -> int
printf("Hello, %s!\n", "World")
```
### 2. Interop with C Data Structures
- Support importing and defining C-style structs, unions, and enums.
- Example:
```plaintext
Copy code
struct Point {
    x: int32
    y: int32
}

let p = Point { x: 10, y: 20 }
```

### 3. Low-Level Memory Control
- Provide APIs for raw memory management, like `malloc` and `free`, while allowing higher-level abstractions for safety.
Error Handling

### 4. Error Handling
- Support standard C conventions like returning error codes and allow translation into higher-level exceptions in your 
language.

### 5. Dynamic Loading
- Simplify the process of dynamically loading shared libraries and resolving symbols (like `dlsym` in C).

---
## Incorporating C into Your Language's FFI
C-Inspired Mechanism				Implementation in Your Language
- C Function Declarations	Use `extern "C"` to declare C functions for linking and calling directly.
- Automatic Binding Tools	Create a tool similar to `bindgen` that auto-generates bindings for C headers in your language.
- Memory Safety Extensions	Add safety layers like smart pointers or ownership models on top of raw memory operations.
- Modular Shared Library Linking	Provide built-in support for linking shared libraries without manual setup (e.g., `.so`, `.dll`).
- C Standard Library Wrappers	Include a wrapper for commonly used C libraries (like `stdio.h`, `math.h`) to simplify interoperability.

## Why C is Critical for FFI
### 1. Universal Adoption:
- Most existing libraries, operating systems, and runtimes are written in or compatible with C.

### 2. Performance:
C’s low-level design allows for highly optimized FFI without significant overhead.

### 3. Flexibility:
C's simplicity makes it easy to write bindings, enabling your language to interact with a wide range of ecosystems.

### 4. Foundation for Other Languages:
C is the foundation for Python, Rust, Zig, and many other languages. By adopting its conventions, your language becomes inherently compatible with their FFI implementations.

## Example Use Case: Wrapping a C Library
- Suppose you have a C library:
```c
Copy code
// mathlib.c
#include <math.h>

double square_root(double x) {
    return sqrt(x);
}```

### 1. Compile the library:
```bash
Copy code
gcc -shared -o libmathlib.so -fPIC mathlib.c
```

### 2. Bind in your language:
```plaintext
Copy code
extern "C" fn square_root(x: float64) -> float64
let result = square_root(16.0)
print(result)  // Output: 4.0
```
### 3. Automate with Binding Generators:
- Use tools to parse C headers and auto-generate the FFI bindings.


Note: While the C programming langauge has been proven as an industry standard, the design of PyMo and its aim is to become language-agnostic and domain-agnostic while also strengethening the Mojo ecosystem as a cornerstone in programming languages.
