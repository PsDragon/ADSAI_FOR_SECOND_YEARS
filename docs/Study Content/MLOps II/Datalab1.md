# Datalab 1

## Plan for the Day

- [ ] Stand-up
- [ ] Azure DevOps Review
- [ ] Project Scoping 
- functional requirements proposal
- code review
- Package plan
    - Modules
        - Functions

## Organizing Your ML/DS Project 📁

Today we will be planning our project packages that we will be building next sprint. FIrst you will need to explore how to structure your Machine Learning (ML) and Data Science (DS) Python projects effectively. An organized project structure will help you maintain readability, ease collaboration, and facilitate future improvements. So, let's dive right in! 🏊‍♂️

### Project Folder Structure 🗂️

Although there isn't a one-size-fits-all project structure, there are some common patterns and best practices that can help you create a well-organized project. Here's a recommended folder structure for ML/DS Python packages:

```
project_name/
    ├── data/
    │   ├── raw/
    │   ├── processed/
    │   └── external/
    ├── docs/
    ├── models/
    ├── notebooks/
    ├── src/
    │   ├── __init__.py
    │   ├── data/
    │   │   ├── __init__.py
    │   │   └── data_processing.py
    │   ├── features/
    │   │   ├── __init__.py
    │   │   └── feature_extraction.py
    │   ├── models/
    │   │   ├── __init__.py
    │   │   └── model.py
    │   └── utils/
    │       ├── __init__.py
    │       └── helpers.py
    ├── tests/
    ├── .gitignore
    ├── LICENSE
    ├── README.md
    └── pyproject.toml
```

Don't worry if it looks overwhelming at first! We'll break it down to understand the purpose of each folder and file. 🧐

### Key Components

1. **data**: Store raw, processed, and external datasets. Keep your data organized for easy access and reproducibility.
2. **docs**: Documentation for the project, including technical and user guides. Good documentation is essential for others (and your future self) to understand your project.
3. **models**: Trained machine learning models, model artifacts, and model checkpoints. Keep them organized for easy retrieval and deployment.
4. **notebooks**: Jupyter notebooks or other interactive notebooks for exploration, analysis, and visualization. Great for quick experiments and visualization!
5. **src**: Source code for the project. Organize your codebase into logical components, such as data, features, models, and utilities.
6. **tests**: Unit tests and other testing scripts. Always test your code to ensure it's working as expected! 🧪

Now, let's take a closer look at the `src` folder, which contains the main codebase for your project. 🕵️‍♀️

## Organizing the `src` Folder 📦

The `src` folder usually consists of various subfolders to separate the code into logical components. Here are a few examples of `src` folder structures:

### Example 1: Basic structure

```
src/
    ├── __init__.py
    ├── data_processing.py
    ├── feature_extraction.py
    ├── model.py
    └── evaluation.py
```

### Example 2: Modular structure with data, features, and models

```
src/
    ├── __init__.py
    ├── data/
    │   ├── __init__.py
    │   ├── data_ingestion.py
    │   ├── data_preprocessing.py
    │   └── data_validation.py
    ├── features/
    │   ├── __init__.py
    │   ├── feature_extraction.py
    │   └── feature_selection.py
    ├── models/
    │   ├── __init__.py
    │   ├── model_training.py
    │   ├── model_evaluation.py
    │   └── model_tuning.py
```

### Example 3: Extended structure with data, features, models, and additional utilities

```
src/
    ├── __init__.py
    ├── data/
    │   ├── __init__.py
    │   ├── data_ingestion.py
    │   ├── data_preprocessing.py
    │   ├── data_validation.py
    │   └── data_splitting.py
    ├── features/
    │   ├── __init__.py
    │   ├── feature_extraction.py
    │   ├── feature_scaling.py
    │   └── feature_selection.py
    ├── models/
    │   ├── __init__.py
    │   ├── model_definitions.py
    │   ├── model_training.py
    │   ├── model_evaluation.py
    │   ├── model_tuning.py
    │   └── model_saving.py
    └── utils/
        ├── __init__.py
        ├── helpers.py
        ├── visualization.py
        └── configuration.py
```

Remember, the goal is to maintain a modular and organized structure that allows for easy understanding, collaboration, and maintenance. 😊

## Sample Subfunctions 🧩

Here are some examples of subfunctions you might find in different modules within the `src` folder:

1. **data_ingestion.py**
    - `read_csv_file(filepath)`
    - `load_database_table(connection_string, table_name)`
2. **data_preprocessing.py**
    - `handle_missing_values(dataframe, method='mean')`
    - `encode_categorical_variables(dataframe, columns)`
    - `scale_numerical_features(dataframe, columns, method='standard')`
3. **data_validation.py**
    - `validate_positive_values(dataframe, column)`
    - `validate_data_range(dataframe, column, min_value, max_value)`
4. **data_splitting.py**
    - `train_test_split(dataframe, test_size=0.2, random_state=None)`
5. **feature_extraction.py**
    - `create_polynomial_features(dataframe, degree)`
    - `extract_text_features(dataframe, column, method='tfidf')`
6. **feature_scaling.py**
    - `standard_scaler(dataframe)`
    - `min_max_scaler(dataframe, feature_range=(0, 1))`
7. **feature_selection.py**
    - `select_k_best_features(dataframe, target, k)`
    - `recursive_feature_elimination(model, dataframe, target, n_features_to_select)`
8. **model_definitions.py**
    - `create_linear_regression_model()`
    - `create_random_forest_model(n_estimators=100, max_depth=None)`
9. **model_training.py**
    - `train_model(model, X_train, y_train)`
10. **model_evaluation.py**
    - `calculate_rmse(y_true, y_pred)`
    - `calculate_classification_report(y_true, y_pred)`
11. **model_tuning.py**
    - `grid_search_cv(model, param_grid, X, y, cv=5)`
    - `random_search_cv(model, param_distributions, X, y, cv=5)`
12. **model_saving.py**
    - `save_model(model, filepath)`
    - `load_model(filepath)`

These are just a few examples of subfunctions that may appear in the modules within the `src` folder. Keep in mind that you can create more functions based on your project's specific needs. 🎯


## Basic MNIST Example of Notebook to Package (almost)

Hey there, fellow code wrangler! 🤠 Today, we're going to embark on an adventure to turn an ML notebook into a production-ready Python package, complete with modules and functions. We'll be using the classic MNIST dataset, because who doesn't love a good old-fashioned set of handwritten digits? Let's dive in! 🌊

### Before: The ML Notebook
Let's assume we've got an ML notebook for training a model on the MNIST dataset. It's got the usual suspects:

1. Importing necessary libraries
2. Loading the MNIST dataset
3. Preprocessing the data
4. Creating the model architecture
5. Training the model
6. Evaluating the model

Here's an outline of what the notebook looks like:

```python
# Import libraries
import numpy as np
import tensorflow as tf
from tensorflow.keras.datasets import mnist

# Load the MNIST dataset
(train_images, train_labels), (test_images, test_labels) = mnist.load_data()

# Preprocess the data
train_images = train_images / 255.0
test_images = test_images / 255.0

# Create the model architecture
model = tf.keras.models.Sequential([
    tf.keras.layers.InputLayer(input_shape=(28, 28)),
    tf.keras.layers.Reshape(target_shape=(28, 28, 1)),
    tf.keras.layers.Conv2D(filters=32, kernel_size=(3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D(pool_size=(2, 2)),
    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(64, activation='relu'),
    tf.keras.layers.Dense(10, activation='softmax')
])

# Train the model
model.compile(optimizer='adam',
              loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
              metrics=['accuracy'])
model.fit(train_images, train_labels, epochs=10, validation_split=0.1)

# Evaluate the model
test_loss, test_accuracy = model.evaluate(test_images, test_labels)
print(f'Test accuracy: {test_accuracy * 100:.2f}%')
```

But wait! We want to turn this into a sleek, modular, production-ready Python package. Fear not, that's what we're here for! 🦸

### After: The Python Package

#### Step 1: Break it down 🕺
First, let's split our notebook into three separate modules:

1. `data.py`: For loading and preprocessing the data
2. `model.py`: For defining the model architecture
3. `train.py`: For training and evaluating the model

#### Step 2: data.py 📦
Let's extract the data loading and preprocessing code into `data.py`. We'll also define a function called `load_and_preprocess_data()` to make our lives easier.

```python
import numpy as np
from tensorflow.keras.datasets import mnist

def load_and_preprocess_data():
    # Load the MNIST dataset
    (train_images, train_labels), (test_images, test_labels) = mnist.load_data()

    # Preprocess the data
    train_images = train_images / 255.0
    test_images = test_images / 255.0

    return (train_images, train_labels), (test_images, test_labels)
```

#### Step 3: model.py 🏗️
Next, let's move the model architecture code to `model.py`. We'll define a function called `create_model()` to build our fabulous model.

```python
import tensorflow as tf

def create_model():
    # Create the model architecture
    model = tf.keras.models.Sequential([
    tf.keras.layers.InputLayer(input_shape=(28, 28)),
    tf.keras.layers.Reshape(target_shape=(28, 28, 1)),
    tf.keras.layers.Conv2D(filters=32, kernel_size=(3, 3), activation='relu'),
    tf.keras.layers.MaxPooling2D(pool_size=(2, 2)),
    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(64, activation='relu'),
    tf.keras.layers.Dense(10, activation='softmax')
])

    return model
```

#### Step 4: train.py 🚂
Now, let's create `train.py` and import our new fancy functions from `data.py` and `model.py`. We'll also define a function called `train_and_evaluate()` for training and evaluating the model.

```python
import tensorflow as tf
from data import load_and_preprocess_data
from model import create_model

def train_and_evaluate():
    # Load and preprocess data
    (train_images, train_labels), (test_images, test_labels) = load_and_preprocess_data()

    # Create the model
    model = create_model()

    # Train the model
    model.compile(optimizer='adam',
                  loss=tf.keras.losses.SparseCategoricalCrossentropy(from_logits=True),
                  metrics=['accuracy'])
    model.fit(train_images, train_labels, epochs=10, validation_split=0.1)

    # Evaluate the model
    test_loss, test_accuracy = model.evaluate(test_images, test_labels)
    print(f'Test accuracy: {test_accuracy * 100:.2f}%')

if __name__ == '__main__':
    train_and_evaluate()
```

### Step 5: predict.py 🔮

We also need to use the model for inference, so let's add a `predict.py` module to handle making predictions using our trained model. We'll define a function called `predict_digit()` that takes a model and an image as input and returns the predicted digit.

```python
import numpy as np
import tensorflow as tf

def predict_digit(model, image):
    # Ensure the image has the right dimensions for the model
    image = np.expand_dims(image, axis=0)
    image = np.expand_dims(image, axis=-1)

    # Make predictions
    predictions = model.predict(image)
    predicted_digit = np.argmax(predictions)

    return predicted_digit
```

Now, let's make a small change to the `train_and_evaluate()` function in `train.py` to save the trained model. Then, we can load the saved model in `predict.py` and make predictions.

### train.py 🚂 (updated)
```python
import os
import tensorflow as tf
from data import load_and_preprocess_data
from model import create_model

def train_and_evaluate():
    # ...
    # (Same as before)

    # Save the trained model
    model.save('models/mnist_model')

if __name__ == '__main__':
    train_and_evaluate()
```

### predict.py 🔮 (updated)
```python
import numpy as np
import tensorflow as tf
from data import load_and_preprocess_data

def load_model(model_path):
    return tf.keras.models.load_model(model_path)

def predict_digit(model, image):
    # ...
    # (Same as before)

if __name__ == '__main__':
    # Load the saved model
    model = load_model('models/mnist_model')

    # Load and preprocess data
    (_, _), (test_images, test_labels) = load_and_preprocess_data()

    # Predict a digit using a sample image from the test set
    sample_idx = 42  # You can change this to any index within the test set
    image = test_images[sample_idx]
    label = test_labels[sample_idx]
    predicted_digit = predict_digit(model, image)

    print(f'Predicted digit: {predicted_digit}')
    print(f'Actual digit: {label}')
```

Now, when you run `train.py`, it will save the trained model to a folder called `mnist_model`. You can then use the `predict.py` module to load the saved model and make predictions on new images. 🚀

However, this just runs inference on the test data. We want a user to be able to provide new image files. Let's modify the `predict.py` module to accept an image file path as a command-line argument. We'll then load the image as a NumPy array, preprocess it, and feed it to the `predict_digit()` function.

To load and preprocess the image, we'll add a new function called `load_and_preprocess_image()`. This function will handle loading the image, converting it to grayscale, resizing it to 28x28 pixels, and normalizing the pixel values.

Let's use `argparse` to handle command-line arguments in the `predict.py` module. It is a robust solution for managing arguments, and it can automatically generate help messages for users.

Here's the updated `predict.py` with `argparse`:

### predict.py 🔮 (updated)
```python
import argparse
import numpy as np
import tensorflow as tf
from PIL import Image
from data import load_and_preprocess_data

def load_model(model_path):
    return tf.keras.models.load_model(model_path)

def load_and_preprocess_image(image_path):
    with Image.open(image_path) as img:
        img = img.convert('L')  # Convert to grayscale
        img = img.resize((28, 28), Image.ANTIALIAS)  # Resize to 28x28 pixels
        image = np.array(img) / 255.0  # Normalize pixel values
        return image

def predict_digit(model, image):
    # ...
    # (Same as before)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Predict a digit from an image using a trained MNIST model.')
    parser.add_argument('image_path', help='Path to the input image file.')
    args = parser.parse_args()

    # Load the saved model
    model = load_model('mnist_model')

    # Load and preprocess the input image
    image = load_and_preprocess_image(args.image_path)

    # Predict the digit
    predicted_digit = predict_digit(model, image)

    print(f'Predicted digit: {predicted_digit}')
```

Now, when you run `predict.py` with the `-h` or `--help` flag, it will display a helpful message describing how to use the script:

```
python predict.py --help
```

And, as before, you can provide an image file path as a command-line argument when running `predict.py`:

```
python predict.py path/to/your/image.png
```

### Summary 
Here's a summary of the directory structure and the modules/functions we've created for our production-ready Python package:
```
mnist_project/
│
├── src/
│   ├── __init__.py
│   ├── data.py
│   │   └── load_and_preprocess_data()
│   ├── model.py
│   │   └── create_model()
│   ├── train.py
│   │   └── train_and_evaluate()
│   └── predict.py
│       ├── load_model()
│       ├── load_and_preprocess_image()
│       └── predict_digit()
│
├── data/
│   ├── raw/
│   └── processed/
│
├── models/
│
├── notebooks/
│
├── docs/
│
├── tests/
│
├── .gitignore
├── LICENSE
├── README.md
└── pyproject.toml
```

- `data.py`: Contains the `load_and_preprocess_data()` function for loading and preprocessing the MNIST dataset.
- `model.py`: Contains the `create_model()` function for defining the CNN model architecture.
- `train.py`: Contains the `train_and_evaluate()` function for training and evaluating the model on the MNIST dataset. This module also saves the trained model.
- `predict.py`: Contains three functions:
  - `load_model()`: Loads the saved model from disk.
  - `load_and_preprocess_image()`: Loads an image file, converts it to grayscale, resizes it to 28x28 pixels, and normalizes pixel values.
  - `predict_digit()`: Takes a model and an image as input and returns the predicted digit. This module accepts an image file path as a command-line argument.

This directory structure allows for a clean and organized codebase, making it easier to maintain and scale the project.

