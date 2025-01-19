# Pymo via Mojo's Programming Language Ecosystem 

## PyMo and essentially the "bedrock" for Mojo's ecosystem:
Based on my research, I have concluded 2 things. The 'bedrock' on which the Mojo programming language will be built on
are two-fold: the LLVM tech stack, and the Modular tech stack with Mojo as the foundational programming language. Tooling
extensions of the Mojo ecosystem will be listed below. Mojo could essentially become a "bedrock" programming languange in a 
sense similar to C, C++, and other systems programming languages. These are based on my hunches and research.

- Pymo's 'bedrock' will essentially be built on the LLVM tech stack and the Modular tech stack.

Tooling includes, but probably are not limited to the following:
- [[Mojo](https://docs.modular.com/mojo/manual/) documentation
- [MLIR](https://mlir.llvm.org/) documentation
- [Clang](https://clang.llvm.org/) documentation
- [GCC](https://gcc.gnu.org/) documentation
- [CPython](https://github.com/python/cpython) Python's default interpreter
- [Python/C API](https://docs.python.org/3/c-api/) documentation
- [Cython](https://cython.org/) documentation
- [Linux Kernel](https://docs.kernel.org/) The Linux kernel documentation
- [XNU Kernel](https://github.com/apple-oss-distributions/xnu) Apple's default kernel

Note: There are a lot more awesome tech stacks out there where Mojo's can be leveraged, but this breakdown should suffice.
This looks to be a robust pivot for research and development in the Mojo ecosystem.

---
## Mojo: A Next-Generation Systems Programming Language - A Multi-Paradigm Perspective"
- See [Wikipedia](https://en.wikipedia.org/wiki/Programming_paradigm) article for more detatils into programming languages 
and paradigms.

### Description:
A programming paradigm is a relatively high-level way to conceptualize and structure the implementation of a computer 
program. A programming language can be classified as supporting one or more paradigms.

Paradigms are separated along and described by different dimensions of programming. Some paradigms are about implications 
of the execution model, such as allowing side effects, or whether the sequence of operations is defined by the execution 
model. Other paradigms are about the way code is organized, such as grouping into units that include both state and 
behavior. Yet others are about syntax and grammar.

Some common programming paradigms include (shown in hierarchical relationship):
- Imperative – code directly controls execution flow and state change, explicit statements that change a program state
    - procedural – organized as procedures that call each other
    - object-oriented – organized as objects that contain both data structure and associated behavior, 
uses data structures consisting of data fields and methods together with their interactions (objects) to design programs
        - Class-based – object-oriented programming in which inheritance is achieved by defining classes of objects, 
versus the objects themselves
        - Prototype-based – object-oriented programming that avoids classes and implements inheritance via cloning of 
instances

- Declarative – code declares properties of the desired result, but not how to compute it, describes what computation 
should perform, without specifying detailed state changes
    - functional – a desired result is declared as the value of a series of function evaluations, uses evaluation of 
mathematical functions and avoids state and mutable data
    - logic – a desired result is declared as the answer to a question about a system of facts and rules, uses explicit mathematical logic for programming
    - reactive – a desired result is declared with data streams and the propagation of change

- Concurrent programming – has language constructs for concurrency, these may involve multi-threading, support for 
distributed computing, message passing, shared resources (including shared memory), or futures
    - Actor programming – concurrent computation with actors that make local decisions in response to the environment 
(capable of selfish or competitive behaviour)

- Constraint programming – relations between variables are expressed as constraints (or constraint networks), directing 
allowable solutions (uses constraint satisfaction or simplex algorithm)
- Dataflow programming – forced recalculation of formulas when data values change (e.g. spreadsheets)
- Distributed programming – has support for multiple autonomous computers that communicate via computer networks
- Generic programming – uses algorithms written in terms of to-be-specified-later types that are then instantiated as 
needed for specific types provided as parameters
- Metaprogramming – writing programs that write or manipulate other programs (or themselves) as their data, or that do p
art of the work at compile time that would otherwise be done at runtime
    - Template metaprogramming – metaprogramming methods in which a compiler uses templates to generate temporary source 
code, which is merged by the compiler with the rest of the source code and then compiled
    - Reflective programming – metaprogramming methods in which a program modifies or extends itself
- Pipeline programming – a simple syntax change to add syntax to nest function calls to language originally designed 
with none
- Rule-based programming – a network of rules of thumb that comprise a knowledge base and can be used for expert systems and problem deduction & resolution
- Visual programming – manipulating program elements graphically rather than by specifying them textually (e.g. Simulink); also termed diagrammatic programming
