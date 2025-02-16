# PyMo

A framework in Mojo for AI/ML/DL applications and other domains.

## An extended framework for Mojo:
- The [Mojo🔥](https://www.modular.com/mojo)programming language
- Mojo is built by Modular Inc. and the Mojo community.

---
> [!NOTE]
> - Work in progress - proof of concept
> - Currently running on Mojo v25.1.0, Magic v0.7.0
---

## Overview
PyMo is a framework designed to leverage the capabilities of the Mojo programming language. The goal is to 
provide a seamless transition for Python developers into the realm of AI, Machine Learning, Deep Learning 
(AI/ML/DL), and other domains - with the performance enhancements offered by Mojo. Since Mojo is designed as a 
systems programming language, its capabilities go beyond AI/ML/DL. This extends to PyMo as well - it can
be leveraged in other programming languages and domains. See `docs` for more information.


## Project Structure
```
├── init.🔥
├── data/
├── docs/
├── examples/
├── magic.lock
├── mojoproject.toml
├── pymo/
├── test/
├── test_pymo.mojo
├── LICENSE
└── README.md
```

## Installation & Setup
To install and set up PyMo (on Linux), follow these steps:

**Install Magic Build System & Package Manager**
- If your machine does not have Modular's Magic software, you may need to install it on your local machine.
- See Magic documentation for installation instructions: [Magic docs](https://docs.modular.com/magic/).

**Clone the repository**
   ```bash
   git clone git@github.com:rcghpge/pymo.git
   cd pymo
   ```
**Initialize PyMo environment with Magic**
- Add dependencies (optional)
   ```bash
   # Initialize PyMo
   magic shell

   # Add additional dependencies
   magic add xgboost
   ```
**Run Test(s)**
   ```bash
   # Workflow/Development environment
   magic run test
   mojo test

   # Initialize debugging session
   mojo test --debug

   # Initialize REPL environment
   mojo repl
   ```
**Initialize a Jupyter Notebook Environment (Optional)**
   ```bash
   magic run jupyter notebook
   ```
**Format Project's Code (Optional)**
   ```bash
   magic run format
   ```
**Build & Ship Package(s) and Module(s) in Mojo (Optional)**
   ```bash
   magic run build
   ```
## Features
### Interoperability with Python:
PyMo showcases Mojo's potential to become a superset of Python, focusing on enhancing Python's AI/ML/DL capabilities
while providing a glimpse into Mojo's language and domain-agnostic potential.

### Integration with Popular Libraries:
Here's how PyMo interacts with some well-known Python libraries and frameworks:
- **scikit-learn:** For machine learning models.
- **pandas:** For data manipulation and analysis.
- **numpy:** For numerical computing.
- **seaborn:** For statistical data visualization.
- **matplotlib:** For plotting visualizations.
- and more.

Currently proofing, testing, and benchmarking frameworks and libraries.

### Getting Started
Check out `examples/` and `test/` folders for sample code demonstrating how to use PyMo with various AI/ML/DL tasks and initial framework draft of PyMo.

**MAX**
- check out [MAX](https://www.modular.com/max) - an AI inference platform built by Modular
- PyMo can be leveraged in this framework.

**Python**
- If you are new to programming, check out [PyPi](https://pypi.org) - The Python Package Index. A repository of software for the Python programming language and also see [Python](https://docs.python.org/3/) documentation. Python is an awesome programming language to get started with in programming.

**Machine Learning University**
- [MLU-Explain](https://mlu-explain.github.io) - Visual explanations of core machine learning concepts

## Contributing
Contributions are welcome! Here's how you can contribute:

- If you are interested to build out this project. Feel free to contact me. See contact below.
- Join the discussion. See repository's Discussions board.
- Report bugs or request features by opening an issue.
- Fix bugs or implement features by opening a pull request.
- Please ensure your code adheres to the project's and Mojo's coding standards before submission.

## License

The PyMo project is primarily licensed under the [MIT License](./LICENSE).

Additionally, PyMo also incorporates components, each governed by its respective license:

- **LLVM**: Components utilized from LLVM are licensed under the Apache License v2.0 with LLVM Exceptions. See the LLVM [License](https://llvm.org/LICENSE.txt).

- **MAX and Mojo**: Usage and distribution are licensed under the [MAX & Mojo Community License](https://www.modular.com/legal/max-mojo-license).

## Acknowledgements
- The Mojo and Python community.
- The open source community.

## Contact
For any inquiries or further information, you can find my email in contacts [here](https://robertcocker.com).

---
