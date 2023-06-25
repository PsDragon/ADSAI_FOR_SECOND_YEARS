# Example: Logging in Python

Here is an example of logging in Python, specifically in the context of a TensorFlow machine learning project, using modules we have worked with previously. We have two Python files, `train_and_evaluate.py` and `Predict.py`, and I'll show you how to add logging to these files using the `logging` module. Let's dive right in! 🚀

If you want to follow along, you can copy the code for ```train_and_evaluate.py``` and ```predict.py``` from week 1 [datalab 1](../../MLOps%20II/Datalab1.md). If you want to run the code, you'll also need to copy and create the rest of the files in the project.

First, let's import the `logging` module in both files. Add the following line at the beginning of each file:

```python
import logging
```

Now, let's set up the logging configuration. We'll create a separate function for this, called `setup_logging`. Add the following code to `train_and_evaluate.py`, after the imports:

```python
def setup_logging():
    logging.basicConfig(level=logging.INFO,
                        format='%(asctime)s - %(levelname)s - %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')
```

Here's what we did:

1. We set the logging level to `logging.INFO`, which means that only messages with a level of `INFO` or higher (e.g., `WARNING`, `ERROR`, `CRITICAL`) will be shown.
2. We specified the format of the log messages: timestamp, log level, and the actual message.
3. We set the date format for the timestamp.

Now, let's call this function at the beginning of the `train_and_evaluate` function:

```python
def train_and_evaluate():
    setup_logging()
    # ...
```

Alright! Now we're ready to add some log messages. 🎉 In `train_and_evaluate.py`, let's replace the `print` statement with a log message:

```python
# ...
test_loss, test_accuracy = model.evaluate(test_images, test_labels)
logging.info(f'Test accuracy: {test_accuracy * 100:.2f}%')
```

Now, let's do the same in `Predict.py`. First, copy the `setup_logging` function from `train_and_evaluate.py` and paste it in `Predict.py`. Then, call this function at the beginning of the `__main__` block:

```python
if __name__ == '__main__':
    setup_logging()
    # ...
```

Lastly, replace the `print` statements with log messages:

```python
logging.info(f'Predicted digit: {predicted_digit}')
logging.info(f'Actual digit: {label}')
```

And that's it! You've added logging to your TensorFlow project. 🎊 Now, whenever you run the scripts, log messages will be displayed with timestamps and log levels, making it easier to track what's happening.

:bell: **Note:** In this example the same a logging function is written in both files. In a real project, you would typically write the logging function in a separate module (e.g. utils) with appropriate arguments for customisation and import it in the files where you want to use it. This way, you can avoid code duplication and make sure that the logging configuration is consistent across the project. 

:pencil: **Exercise:** Move the `setup_logging` function to the utils module, add arguments, and import it in both `train_and_evaluate.py` and `Predict.py`. Make sure the logging configuration is consistent across the project.

You can further customize the logging by changing the log level, log format, and even adding log handlers to save logs to a file. Don't be afraid to explore the `logging` module documentation for more details.

## Here's the completed code for both examples with logging added:

`train_and_evaluate.py`:

```python
import logging
import tensorflow as tf
from data import load_and_preprocess_data
from model import create_model

def setup_logging():
    logging.basicConfig(level=logging.INFO,
                        format='%(asctime)s - %(levelname)s - %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')

def train_and_evaluate():
    setup_logging()
    
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
    logging.info(f'Test accuracy: {test_accuracy * 100:.2f}%')

if __name__ == '__main__':
    train_and_evaluate()
```

`Predict.py`:

```python
import logging
import numpy as np
import tensorflow as tf
from data import load_and_preprocess_data

def setup_logging():
    logging.basicConfig(level=logging.INFO,
                        format='%(asctime)s - %(levelname)s - %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')

def load_model(model_path):
    return tf.keras.models.load_model(model_path)

def predict_digit(model, image):
    # Ensure the image has the right dimensions for the model
    image = np.expand_dims(image, axis=0)
    image = np.expand_dims(image, axis=-1)

    # Make predictions
    predictions = model.predict(image)
    predicted_digit = np.argmax(predictions)

    return predicted_digit

if __name__ == '__main__':
    setup_logging()

    # Load the saved model
    model = load_model('models/mnist_model')

    # Load and preprocess data
    (_, _), (test_images, test_labels) = load_and_preprocess_data()

    # Predict a digit using a sample image from the test set
    sample_idx = 42  # You can change this to any index within the test set
    image = test_images[sample_idx]
    label = test_labels[sample_idx]
    predicted_digit = predict_digit(model, image)

    logging.info(f'Predicted digit: {predicted_digit}')
    logging.info(f'Actual digit: {label}')
```

Now, both `train_and_evaluate.py` and `Predict.py` have logging implemented. When you run these scripts, log messages will be displayed with timestamps and log levels, providing a better overview of the execution progress. 🎉

## More logging levels

Let's add more logging levels to the `Predict.py` module to give you a better understanding of how they work. We'll use different log levels, such as `DEBUG`, `INFO`, `WARNING`, `ERROR`, and `CRITICAL`, to show different types of messages.

In the `setup_logging` function, change the logging level to `logging.DEBUG` to display messages of all levels:

```python
def setup_logging():
    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s - %(levelname)s - %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')
```

Now, let's add log messages with various levels throughout the code:

1. In the `load_model` function, add a `DEBUG` log message:

```python
def load_model(model_path):
    logging.debug(f'Loading model from {model_path}')
    return tf.keras.models.load_model(model_path)
```

2. In the `predict_digit` function, add `DEBUG` log messages for predictions:

```python
def predict_digit(model, image):
    # ...
    predictions = model.predict(image)
    logging.debug(f'Predictions: {predictions}')
    predicted_digit = np.argmax(predictions)
    logging.debug(f'Predicted digit: {predicted_digit}')
    return predicted_digit
```

3. In the `__main__` block, add log messages with various levels:

```python
if __name__ == '__main__':
    setup_logging()

    # ...

    predicted_digit = predict_digit(model, image)

    if predicted_digit == label:
        logging.info(f'Predicted digit: {predicted_digit}')
        logging.info(f'Actual digit: {label}')
    else:
        logging.warning(f'Predicted digit: {predicted_digit}')
        logging.warning(f'Actual digit: {label}')
        logging.error('Prediction does not match the actual digit!')

    logging.critical('This is a critical message (example)')
```

Now, when you run the `Predict.py` script, you will see log messages of various levels displayed. Keep in mind that if you set the logging level back to `logging.INFO` or higher, you will no longer see the `DEBUG` level messages.

Here's the complete `Predict.py` module with the additional logging levels:

```python
import logging
import numpy as np
import tensorflow as tf
from data import load_and_preprocess_data

def setup_logging():
    logging.basicConfig(level=logging.DEBUG,
                        format='%(asctime)s - %(levelname)s - %(message)s',
                        datefmt='%Y-%m-%d %H:%M:%S')

def load_model(model_path):
    logging.debug(f'Loading model from {model_path}')
    return tf.keras.models.load_model(model_path)

def predict_digit(model, image):
    # Ensure the image has the right dimensions for the model
    image = np.expand_dims(image, axis=0)
    image = np.expand_dims(image, axis=-1)

    # Make predictions
    predictions = model.predict(image)
    logging.debug(f'Predictions: {predictions}')
    predicted_digit = np.argmax(predictions)
    logging.debug(f'Predicted digit: {predicted_digit}')

    return predicted_digit

if __name__ == '__main__':
    setup_logging()

    # Load the saved model
    model = load_model('models/mnist_model')

    # Load and preprocess data
    (_, _), (test_images, test_labels) = load_and_preprocess_data()

    # Predict a digit using a sample image from the test set
    sample_idx = 42  # You can change this to any index within the test set
    image = test_images[sample_idx]
    label = test_labels[sample_idx
    predicted_digit = predict_digit(model, image)

    if predicted_digit == label:
        logging.info(f'Predicted digit: {predicted_digit}')
        logging.info(f'Actual digit: {label}')
    else:
        logging.warning(f'Predicted digit: {predicted_digit}')
        logging.warning(f'Actual digit: {label}')
        logging.error('Prediction does not match the actual digit!')

    logging.critical('This is a critical message (example)')
```

Now, when you run the `Predict.py` script, you will see log messages of various levels displayed. This provides a more comprehensive overview of the execution progress and highlights any potential issues or mismatches between predictions and actual labels.

### Example Output

Here's an example output for a correct prediction and an incorrect prediction.

For a correct prediction (assuming the `sample_idx = 42` produces a correct prediction):

```
2023-05-02 14:32:25 - DEBUG - Loading model from models/mnist_model
2023-05-02 14:32:27 - DEBUG - Predictions: [[-13.253829   -9.731096   -4.232729   12.253567   -9.889465  3.4993172  -7.859816  -6.8125477  -1.9321426 -1.9699097]]
2023-05-02 14:32:27 - DEBUG - Predicted digit: 3
2023-05-02 14:32:27 - INFO - Predicted digit: 3
2023-05-02 14:32:27 - INFO - Actual digit: 3
2023-05-02 14:32:27 - CRITICAL - This is a critical message (example)
```

For an incorrect prediction (assuming the `sample_idx = 43` produces an incorrect prediction):

```
2023-05-02 14:33:12 - DEBUG - Loading model from models/mnist_model
2023-05-02 14:33:14 - DEBUG - Predictions: [[-4.179389  -6.8533416 -1.3744507  4.3419375 -6.9844856  7.572394  -6.199875  -9.735832  2.8523762 -3.3355033]]
2023-05-02 14:33:14 - DEBUG - Predicted digit: 5
2023-05-02 14:33:14 - WARNING - Predicted digit: 5
2023-05-02 14:33:14 - WARNING - Actual digit: 3
2023-05-02 14:33:14 - ERROR - Prediction does not match the actual digit!
2023-05-02 14:33:14 - CRITICAL - This is a critical message (example)
```

In the output, you can see the different logging levels and their corresponding messages. The log messages provide more information about the model loading, predictions, and whether the prediction was correct or not. The critical message is just an example and doesn't carry any significant meaning in this context.