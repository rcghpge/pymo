# Data preprocessing example
from python import Python, PythonObject


fn main() raises:
    var np = Python.import_module("numpy")
    var pd = Python.import_module("pandas")
    var plt = Python.import_module("matplotlib.pyplot")
    var sns = Python.import_module("seaborn")
    var random = Python.import_module("random")

    var df = pd.read_csv("~/modular/pymo/data/house_prices.csv")
    print(df.head())
    print(df.shape)
    print()

    # Layout of features for training dataset
    var numerical_features = df.select_dtypes(include=[np.number])
    # var categorical_features = df.select_dtypes(include=PythonObject[])

    num_numerical_values = numerical_features.shape[1]
    # num_categorical_values = categorical_features.shape[1]

    print("Total number of numerical features:", num_numerical_values)
    print()
    # print("Total number of categorical features:", num_categorical_values)

    # Random module from Python
    # Generate a random integer between 1 and 10
    var random_int = random.randint(1, 10)
    print("Random integer:", random_int)

    # Convert string columns to float
    for column in df.columns:
        df[column] = pd.to_numeric(df[column], errors="coerce")

    # Seaborn
    var correlation_matrix = df.corr()
    sns.heatmap(
        correlation_matrix, annot=True, cmap="viridis", linewidth=0.5, fmt=".2f"
    )
    plt.show()
