# Inferences and Applications in Cancer Research
"""
Here is an initial example of how to build out an ML model or neural network
framework in PyMo. Sparing the details, data preprocessing is crucial in ML and DL
domains. This is an example where the framework can be utilized for applications
in cancer research and other domains in medicine.
"""
from builtin.dtype import DType
from pymo.libpm import numpy, pandas, sklearn, math, matplotlib_pyplot
from python import Python, PythonObject, TypedPythonObject


fn preprocess() raises:
    var np = numpy()
    var pd = pandas()
    var plt = matplotlib_pyplot()
    var math = math()
    var onehotencoder = sklearn().preprocessing.OneHotEncoder

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

    # Training Data Preprocessing
    var numerical_features = df.select_dtypes(include=[np.number])
    var categorical_features = df.select_dtypes(include=["object", "category"])

    var num_numerical_values = numerical_features.shape[1]
    var num_categorical_values = categorical_features.shape[1]

    print("Dataset Features:")
    print("Total number of numerical features:", num_numerical_values)
    print("Total number of categorical features:", num_categorical_values)
    print()

    print("Descriptive Summary of Data (Training Set):")
    print(df.describe())
    print()

    # One hot encoding categorical features with sci-kit learn
    var categorical_columns = [
        "patient_race",
        "payer_type",
        "patient_state",
        "patient_gender",
        "breast_cancer_diagnosis_code",
        "breast_cancer_diagnosis_desc",
        "metastatic_cancer_diagnosis_code",
        "metastatic_first_novel_treatment",
        "metastatic_first_novel_treatment_type",
        "Region",
        "Division",
    ]

    var encode = onehotencoder(sparse_output=False)
    encode.fit_transform(df[categorical_columns])
    encode = pd.DataFrame(
        df, columns=encode.get_feature_names_out(categorical_columns)
    )
    df = pd.concat([df, encode], axis=1)

    print("One-hot encoding categorical features...")
    print("Training Set Shape:")
    print(df.shape)
    print()

    # Dropping duplicate one-hot encoded features from training data because of redundancy
    df = df.drop(
        [
            "patient_race",
            "payer_type",
            "patient_state",
            "patient_gender",
            "breast_cancer_diagnosis_code",
            "breast_cancer_diagnosis_desc",
            "metastatic_cancer_diagnosis_code",
            "metastatic_first_novel_treatment",
            "metastatic_first_novel_treatment_type",
            "Region",
            "Division",
        ],
        axis=1,
    )

    print("Training Set:")
    print(df.head())
    print(df.shape)
    print()

    # Replace null bmi patient values with average bmi for training data
    var bmi = df["bmi"].mean()
    df["bmi"].fillna(bmi, inplace=True)
    df.fillna(0, inplace=True)

    # Check null values
    var null = df.isnull().mean()
    var check_columns = null[null > 0.0]
    var columns = check_columns.shape[0]
    print("Total number of features with any null values:", columns)
    print(df.shape)
    print()

    # Testing Data Preprocessing
    # One hot encoding categorical features with sci-kit learn
    var encode2 = onehotencoder(sparse_output=False)
    encode2.fit_transform(df2[categorical_columns])
    encode2 = pd.DataFrame(
        df2, columns=encode2.get_feature_names_out(categorical_columns)
    )
    df2 = pd.concat([df2, encode2], axis=1)

    print("One-hot encoding categorical features...")
    print("Testing Set Shape:")
    print(df.shape)
    print()

    # Dropping duplicate one-hot encoded features from testing data because of redundancy
    df2 = df2.drop(
        [
            "patient_race",
            "payer_type",
            "patient_state",
            "patient_gender",
            "breast_cancer_diagnosis_code",
            "breast_cancer_diagnosis_desc",
            "metastatic_cancer_diagnosis_code",
            "metastatic_first_novel_treatment",
            "metastatic_first_novel_treatment_type",
            "Region",
            "Division",
        ],
        axis=1,
    )

    print("Testing Set:")
    print(df2.head())
    print(df2.shape)
    print()

    # Replace null bmi patient values with average bmi for testing data
    var bmi2 = df2["bmi"].mean()
    df2["bmi"].fillna(bmi2, inplace=True)
    df2.fillna(0, inplace=True)

    # Check null values
    var null2 = df2.isnull().mean()
    var check_columns2 = null2[null2 > 0.0]
    var columns2 = check_columns2.shape[0]
    print("Total number of features with any null values:", columns2)
    print(df2.shape)
    print()

    # Target Variable (Dependent Variable of Focus)
    # Stage 4 Metastatic Cancer Prediction (Medical Diagnosis - 0 = No cancer, 1 = Cancer)
    var class_counts = df["DiagPeriodL90D"].value_counts()
    print("Medical Diagnoses:")
    print(class_counts)
    print()

    # Plot Bar Graph
    plt.bar(class_counts.index, class_counts.values)
    plt.xlabel("Diagnosis")
    plt.ylabel("Count")
    plt.title("Class Target Variable Distribution (Cancer Diagnosis)")
    # plt.savefig('target-variable.png', dpi=300) # uncomment to save image (Optional)
    # plt.show() # uncomment to display bar graph (Optional)

    # fn plot() raises:
    """
    Optional plotting function
    """


fn main() raises:
    preprocess()
