# Data preprocessing example
from python import Python, PythonObject


fn main() raises:
    """
    OOP and Python to Mojo interoperability is still in active development internally
    @ Modular and in collaboration with the Mojo open source community.
    """
    var np = Python.import_module("numpy")
    var pd = Python.import_module("pandas")
    var plt = Python.import_module("matplotlib.pyplot")
    var sns = Python.import_module("seaborn")
    var random = Python.import_module("random")

    var df = pd.read_csv("~/modular/pymo/data/house_prices.csv")
    print("Pandas Interop:")
    print("Housing Prices Dataset:")
    print(df.head())
    print(df.shape)
    print()

    # Layout of features for training dataset - Numpy interop
    print("Numpy Interop:")
    var numerical_features = df.select_dtypes(include=[np.number])
    #var categorical_features = df.select_dtypes(include=[object])
    """ 
    OOP methods needed for categorical data.
    """
    num_numerical_values = numerical_features.shape[1]
    num_categorical_values = ("OOP methods WIP")
    #num_categorical_values = categorical_features.shape[1]

    print("Total number of numerical features:", num_numerical_values)
    print("Total number of categorical features:", num_categorical_values)
    print()

    # Python's Random library - Pseudo-random number generation and random-based operations
    # Generate a random integer between 1 and 10
    print("Random Interop:")
    var random_int = random.randint(1, 10)
    print("Random integer:", random_int)
    print()

    # Convert string columns to float
    """
    Pandas community active development of Pandas may trigger
    some notes in future Pandas releases.
    """
    for column in df.columns:
        df[column] = pd.to_numeric(df[column], errors="coerce")

    # Seaborn - data visualization
    var correlation_matrix = df.corr()
    sns.heatmap(correlation_matrix, annot=True, cmap="viridis", linewidth=0.5, fmt=".2f")
    plt.title('Housing Prices', fontsize=16)
    plt.show()
