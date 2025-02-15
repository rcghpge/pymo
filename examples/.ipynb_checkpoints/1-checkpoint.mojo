# PyMo Sci-kit Learn Model Example
from python import Python

fn main() raises:
    # Import Packages/Libraries
    var pd = Python.import_module("pandas")
    var sklearn_datasets = Python.import_module("sklearn.datasets")

    # Load the Iris dataset
    var iris = sklearn_datasets.load_iris()
    var data = pd.DataFrame(data=iris["data"], columns=iris["feature_names"])
    data['target'] = iris["target"]

    # Display the first few rows of the dataset
    print(data.head())

