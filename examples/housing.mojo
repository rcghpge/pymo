from builtin.tuple import Tuple
from pymo.libpm import random, numpy, pandas, seaborn, matplotlib_pyplot
from python import Python, PythonObject


fn main() raises:
    var np = numpy()
    var pd = pandas()
    var plt = matplotlib_pyplot()
    var sns = seaborn()
    var random = random()

    var df = pd.read_csv("~/modular/pymo/data/house_prices.csv")
    print("Pandas Interop:")
    print("Housing Prices Dataset:")
    print(df.head())
    print(df.shape)
    print()

    # Layout of features for training dataset - Numpy interop
    # Initialize an empty list to store names of object-type columns
    var object_columns = Python.list()

    # Iterate over DataFrame columns to check their data types
    for column in df.columns:
        if df[column].dtype == "object":
            object_columns.append(column)

    # Select columns with object data type
    var numerical_features = df.select_dtypes(include=[np.number])
    var categorical_features = df[object_columns]
    var numerical_values = numerical_features.shape[1]
    var categorical_values = categorical_features.shape[1]

    print("Numpy Interop:")
    print(categorical_features)
    print()

    print("Features:")
    print("Total number of numerical features:", numerical_values)
    print("Total number of categorical features:", categorical_values)
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
    some notes for future Pandas releases.
    """
    for column in df.columns:
        df[column] = pd.to_numeric(df[column], errors="coerce")

    for column in df.columns:
        df[column] = pd.factorize(df[column])

    # Seaborn - data visualization
    var correlation_matrix = df.corr()
    sns.heatmap(
        correlation_matrix, annot=True, cmap="viridis", linewidth=0.5, fmt=".2f"
    )
    plt.title("Housing Prices", fontsize=16)
    # plt.show() # uncomment to display correlation matrix
