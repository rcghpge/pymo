from python import Python


fn main() raises:
    var np = Python.import_module("numpy")
    var pd = Python.import_module("pandas")
    var plt = Python.import_module("matplotlib.pyplot")
    var math = Python.import_module("math")
    
    # Load and read datasets
    df = pd.read_csv("~/modular/pymo/data/cancer-data/training.csv") # dataset for training model
    df2 = pd.read_csv("~/modular/pymo/data/cancer-data/test.csv") # dataset for testing the model

    # Training dataset
    print("Training dataset:")
    print(df.head())
    print()

    # Testing dataset
    print("Testing dataset:")
    print(df2.head())
