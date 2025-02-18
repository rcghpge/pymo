# Inferences and Applications in Cancer Research
"""
Here is an initial example of how to build out an ML model or neural network
framework in PyMo. Sparing the details, data preprocessing is crucial in ML and DL
domains. This is an example where the framework can be utilized for applications
in cancer research and other domains in medicine.
"""
from builtin.dtype import DType
from pymo.libpm import numpy, pandas
from python import Python, PythonObject, TypedPythonObject


fn preprocess() raises:
    var np = numpy()
    var pd = pandas()
    var plt = Python.import_module("matplotlib.pyplot")
    var math = Python.import_module("math")

    # Load and read datasets - update file paths as needed
    """ 
    Training and testing data to run inference, preprocess, and to 
    benchmark and run a model 
    """
    var df = pd.read_csv("~/modular/pymo/data/cancer-data/training.csv")
    var df2 = pd.read_csv("~/modular/pymo/data/cancer-data/test.csv")

    # Training dataset
    print("Training dataset:")
    print(df.head())
    print(df.shape)
    print()

    # Testing dataset
    print("Testing dataset:")
    print(df2.head())
    print(df2.shape)
    print()

    # Layout of features for training dataset
    var numerical_features = df.select_dtypes(include=[np.number])
    var categorical_features = df.select_dtypes(include=["object", "category"])

    var num_numerical_values = numerical_features.shape[1]
    var num_categorical_values = categorical_features.shape[1]

    print("Dataset Features:")
    print("Total number of numerical features:", num_numerical_values)
    print("Total number of categorical features:", num_categorical_values)
    print()

    # Stage 4 Metastatic Cancer Prediction or Target Variable (Medical Diagnosis - 0 = No cancer, 1 = Cancer)
    var class_counts = df["DiagPeriodL90D"].value_counts()
    print("Medical Diagnoses:")
    print(class_counts)
    print()

    # Plot Bar Graph
    plt.bar(class_counts.index, class_counts.values)
    plt.xlabel("Diagnosis")
    plt.ylabel("Count")
    plt.title("Class Target Variable Distribution")
    # plt.savefig('target-variable.png', dpi=300) # Save Image (Optional)
    plt.show()

    # fn plot() raises:
    """
    Optional plotting function
    """


fn main() raises:
    preprocess()
