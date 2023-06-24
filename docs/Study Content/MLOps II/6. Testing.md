---
sort: 5
---

## MLOps: Testing with Python

### Chapter overview

I. Virtual environments & Package management with Python <br>
II. Production-Level code with Python <br>
III. Documentation for Python <br>
IV. __Testing with Python__ <br>
V. Continuous Integration with Python <br> 
VI. Deployment with Python <br>

### 1. Introduction

Now that you have created a Python program that is of production quality, you can start to think about how to make it more robust and easier to maintain. One way to do this is by testing, which is a process that involves writing code to verify that your program is working correctly. 

__After this module, you will be able to:__

- [ ] Explain the importance of testing with Python
- [ ] Apply type hinting to Python code
- [ ] Use the debugger in VSCode to fix bugs in Python code

<img src="./images/Testing.jpg" alt="Testing with Python" width="600"/>

*Figure 1. Testing with Python.*

It is important to test your code because it helps you to find bugs and error before it is deployed to production. In addition, testing can help you to ensure that your code is working as expected when you make changes to it. Testing is also a good way to ensure that your code is working correctly on different platforms and operating systems (e.g. Linux).

***

### 2. Type hinting

One way to test your code is by using type hinting, which is a feature in Python that allows you to annotate the types of variables, function parameters, and return values in their code. This means that data professionals can indicate to Python what kind of data to expect, such as strings, integers, lists, dictionaries, or custom classes. A popular Python package for type hinting is [mypy](https://mypy.readthedocs.io/en/stable/), which is a static type checker that can be used to check the type hints in your code.

Here is an example:

```python
def greeting(name: str) -> str:
    return "Hello, " + name
```

In this code, we are defining a function called greeting that takes a parameter called name that is of type ```str```. The ```-> str``` notation indicates that the function returns a string. This is a simple example, but type hinting can be used to annotate more complex types, such as lists, dictionaries, or custom classes. For a cheat sheet of the most common types, click [here](https://mypy.readthedocs.io/en/stable/cheat_sheet_py3.html).

Type hinting is not enforced by the Python interpreter, meaning that you can still write code that violates the expected types, but it can be used by various tools to help catch bugs before runtime. For example, some code editors or IDEs will use type hints to provide autocomplete suggestions or catch errors when you try to use a variable in an incompatible way.

Overall, type hinting can make your code more self-documenting, help you catch errors earlier in the development process, and improve collaboration with other data professionals who may be working with your code.

:pencil: __2a__ Apply type hinting to the functions in the modules and ```main.py``` script you created last time.

#### Type hinting example 

Here is an example of how to using type hinting in Python, using the ```predict_digit``` function from the last data lab: 

- Without type hinting:

```python
def predict_digit(model, image):
    # Ensure the image has the right dimensions for the model
    image = np.expand_dims(image, axis=0)
    image = np.expand_dims(image, axis=-1)

    # Make predictions
    predictions = model.predict(image)
    predicted_digit = np.argmax(predictions)

    return predicted_digit
```

The above function takes two parameters, ```model``` and ```image```, but it is not clear what type of data these parameters should be. In addition, it is not clear what type of data the function returns. This can make it difficult to understand how the function works and what kind of data it expects. In order to make the function more clear, we can use type hinting to indicate what type of data the parameters and return value should be:

- With type hinting:

```python
def predict_digit(model: tf.keras.Model, image: np.ndarray) -> int:
    # Ensure the image has the right dimensions for the model
    image = np.expand_dims(image, axis=0)
    image = np.expand_dims(image, axis=-1)

    # Make predictions
    predictions = model.predict(image)
    predicted_digit = np.argmax(predictions)

    return predicted_digit
```
The use of type hinting is purely for documentation purposes, meaning that it does not affect how the function works. However, it can be useful for making your code more clear and easier to understand. You can use tools like [mypy](https://mypy.readthedocs.io/en/stable/) to check that your type hints are correct and to enforce type hints in your code.

### 3. Logging

Logging is a process that involves writing code to track the progress of your program and record any errors that may occur. This can be useful for debugging your code and identifying bugs or errors that may be causing your program to malfunction. In addition, logging can be used to track the performance of your program and help you to identify areas that may need to be optimized. It is also a way to inform users of your program about what is happening and any errors that may occur.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/pxuXaaT1u3k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</figure>
<!-- blank line -->

Similar to using print statements to track the progress of your program, logging can be used to record the progress of your program and any errors that may occur. However, logging is more flexible than print statements because it allows you to specify the level of detail that you want to record. For example, you can use logging to record the progress of your program at a high level (e.g. 'Starting program...') or at a more granular level (e.g. 'Loading data...'). You can also use logging to record errors that occur in your program, such as 'Error: File not found' or 'Error: Invalid input'.

In addition, logging can be used to record the time that each step of your program takes to run. This can be useful for identifying bottlenecks in your code and areas that may need to be optimized. For example, you can use logging to record the time that it takes to load your data, train your model, and make predictions. This can help you to identify areas that may need to be optimized, such as the data loading process or the model training process.

Using a logger in Python is very similar to using the print function. The only difference is that you need to import the logging module and create a logger object before you can use it. Here is an example:

```python

import logging

# Create a logger object
logger = logging.getLogger(__name__)

# Set the logging level
logger.setLevel(logging.INFO)

# Create a handler for writing to a file
file_handler = logging.FileHandler('log.txt')

# Create a handler for writing to the console
console_handler = logging.StreamHandler()

# Create a formatter and add it to the handlers
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
file_handler.setFormatter(formatter)
console_handler.setFormatter(formatter)

# Add the handlers to the logger
logger.addHandler(file_handler)
logger.addHandler(console_handler)

# Log messages
logger.info('Starting program...')
logger.info('Loading data...')
logger.info('Training model...')
logger.info('Making predictions...')
logger.warning('Low confidence in assigned class label!')
logger.info('Finished!')
```

Let's break down the code above:

- We first import the logging module. 

- The next line creates a logger object. The ```__name__``` variable is a special variable that contains the name of the current module. This is useful because it allows you to create a unique logger for each module in your program.

- The next line sets the logging level. In this case, we are setting the logging level to ```logging.INFO```, which means that the logger will only record messages that are at the INFO level or higher. The logging levels are as follows:
    - ```logging.DEBUG```: Detailed information, typically of interest only when diagnosing problems.
    - ```logging.INFO```: Confirmation that things are working as expected.
    - ```logging.WARNING```: An indication that something unexpected happened, or indicative of some problem in the near future (e.g. 'disk space low'). The software is still working as expected.
    - ```logging.ERROR```: Due to a more serious problem, the software has not been able to perform some function.
    - ```logging.CRITICAL```: A serious error, indicating that the program itself may be unable to continue running.

- The next line creates a handler for writing to a file. This handler will write all messages that are at the INFO level or higher to a file called ```log.txt```.

- The next line creates a handler for writing to the console. This handler will write all messages that are at the INFO level or higher to the console (your terminal).

- The next line creates a formatter. This formatter specifies the format that the logger will use to record messages. In this case, the format is ```'%(asctime)s - %(name)s - %(levelname)s - %(message)s'```. The ```asctime``` variable will be replaced with the date and time that the message was logged. The ```name``` variable will be replaced with the name of the logger. The ```levelname``` variable will be replaced with the level of the message (e.g. INFO, WARNING, ERROR, etc.). The ```message``` variable will be replaced with the message that was logged. 

- The next line adds the formatter to the file handler. Similarly, the next line adds the formatter to the console handler. 

- The next line adds the file handler to the logger. Similarly, the next line adds the console handler to the logger. 

The lines of code with the ```logger.info()``` function calls are where we actually log messages. In this case, we are logging four messages at the INFO level. The first message is 'Starting program...'. The second message is 'Loading data...'. The third message is 'Training model...'. The fourth message is 'Making predictions...'. The final message is 'Finished!'. 

The output of the code above (as displayed in the console) is shown below:

```python

2021-07-27 15:00:00,000 - __main__ - INFO - Starting program...
2021-07-27 15:00:00,000 - __main__ - INFO - Loading data...
2021-07-27 15:00:00,000 - __main__ - INFO - Training model...
2021-07-27 15:00:00,000 - __main__ - INFO - Making predictions...
2021-07-27 15:00:00,000 - __main__ - WARNING - Low confidence in assigned class label!
2021-07-27 15:00:00,000 - __main__ - INFO - Finished!
```

Now, in the above example, if you wish to store all INFO messages in the ```log.txt``` file, and only display WARNING messages and higher in the console, you can change the logging level of the console handler to ```logging.WARNING```. The output of the logger in the console will then be as follows:

```python

2021-07-27 15:00:00,000 - __main__ - WARNING - Low confidence in assigned class label!
```

To learn more about logging in Python, check out the following resources:

- [Python Logging Tutorial](https://realpython.com/python-logging/)
- [Datacamp Logging Tutorial](https://www.datacamp.com/tutorial/logging-in-python)

:warning: Do not store sensitive information in your logs. This includes passwords, API keys, and other confidential information. :warning:

:pencil: __3a__ Apply logging to the functions in the modules and ```main.py``` script you created last time.

#### Logging Example

The following code shows an example of how you might use logging in a Python program, using the ```predict.py``` and ```train_and_evaluate.py``` modules from week 1 data lab 1:

Click [here](./Examples/logging_example.md) for the example.

### 4. Debugging

A debugger is a tool that allows data professionals to step through their code and track down bugs or errors that may be causing their program to malfunction. The debugger enables you to pause the execution of your code at any given point, inspect the values of variables and functions, and even modify the code in real-time to test different scenarios. This can be incredibly helpful in finding and fixing errors in your code.

The video below will give you a brief introduction to how to use a debugger in VSCode to debug your Python code:

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/7qZBwhSlfOo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

*Video 1. How to Use a Debugger - Debugger Tutorial.* 

To use the debugger in VSCode, follow these steps:

1. First, make sure that the Python extension is installed in VSCode. You can do this by going to the extensions tab and searching for 'Python'.
2. Open the Python file that you want to debug in VSCode.
3. Set a breakpoint by clicking on the line number where you want to pause the execution of your code. A :red_circle: will appear to indicate the breakpoint.
4. Click on the Debug tab in the sidebar and select 'Python: Current File' from the dropdown menu.
5. Click on the green arrow button to start the debugger.
6. Your code will now execute until it reaches the breakpoint that you set. You can then inspect the values of variables and functions by hovering over them with your mouse or clicking on them in the debug console.
7. You can continue to step through your code using the various debugging buttons (e.g., step over, step into, step out) to track down errors or bugs.
8. Once you have identified the issue, you can make changes to your code in the editor and continue debugging until the problem is resolved.
9. When you are finished debugging, you can stop the debugger by clicking on the red stop button or by pressing the Shift+F5 key combination.

:bell: Python also has a build in debugger called [pdb](https://docs.python.org/3/library/pdb.html). You can use this to debug your code in the terminal (in your IDE). For more information, check out this [tutorial](https://realpython.com/python-debugging-pdb/).

:pencil: __4a__ Use the debugger to debug the ```numbers_errors.py``` script (you can download it [here](./numbers_errors.py)). Did you find any bugs? If so, fix them using the debugger in VSCode.

The corrected code should have the following output:

```python
1500/1500 [==============================] - 3s 1ms/step - loss: 0.2812 - accuracy: 0.9194 - val_loss: 0.1618 - val_accuracy: 0.9542
Epoch 2/5
1500/1500 [==============================] - 2s 1ms/step - loss: 0.1267 - accuracy: 0.9620 - val_loss: 0.1163 - val_accuracy: 0.9672
Epoch 3/5
1500/1500 [==============================] - 2s 1ms/step - loss: 0.0853 - accuracy: 0.9744 - val_loss: 0.1085 - val_accuracy: 0.9686
Epoch 4/5
1500/1500 [==============================] - 2s 1ms/step - loss: 0.0641 - accuracy: 0.9812 - val_loss: 0.0984 - val_accuracy: 0.9722
Epoch 5/5
1500/1500 [==============================] - 2s 1ms/step - loss: 0.0485 - accuracy: 0.9849 - val_loss: 0.0879 - val_accuracy: 0.9736
313/313 [==============================] - 1s 1ms/step - loss: 0.0756 - accuracy: 0.9750
Test accuracy: 0.9750000238418579
Sample predictions: [7 2 1 0 4]
True labels: [7 2 1 0 4]
```

<div style="text-align:center">
<img src="./images/example_output.png" alt="Testing with Python" width="80%"/>
</div>

### 5. Unit testing

Unit testing is a software testing method by which individual units of source code are tested to determine whether they are fit for use. Before we head into the details of unit tests, let's take a small detour to test driven development (TDD). TDD is a software development process that involves writing tests before writing the actual code. The idea behind TDD is that you write tests that specify the desired behavior of your code. Then, you write the code to make the tests pass. This ensures that your code is working as intended. 

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/B1j6k2j2eJg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</figure>
<!-- blank line -->

:bulb: I (Nitin) was introduced to TDD by a [senior software engineer](https://europe.naverlabs.com/people_user/Michael-Niemaz/) when I was working as a intern (machine learning engineer) at [Naver Labs Europe]https://europe.naverlabs.com/about/) building ML algorithms from scratch. He convinced me that TDD is a very useful practice that helps you write better code. I have been using TDD ever since as a useful programming paradigm and I highly recommend it!!

Unit tests are typically written by the developers of the code themselves. 
Python has a built-in module called [unittest](https://docs.python.org/3/library/unittest.html) that can be used to write unit tests. However, the industry is moving towards using the [pytest](https://docs.pytest.org/en/6.2.x/) framework for unit testing. The pytest framework is more flexible and easier to use than the unittest module.

To learn more about unit testing in Python, check out the following resources:

- [Pytest documentation](https://docs.pytest.org/en/7.3.x/)
- [Datacamp Unit Testing Tutorial](https://www.datacamp.com/community/tutorials/unit-testing-python)
- [Datacamp Unit Testing Course](https://app.datacamp.com/learn/courses/unit-testing-for-data-science-in-python)

:pencil: __5a__ Write a unit test for any of the functions in the modules and ```main.py``` script you created last time.

:pencil: __5b__ Run the unit test you wrote in the previous exercise using ```pytest```.

#### Unit Testing Example

The following code shows an example of how you might use unit testing in a Python program, using the ```predict.py``` module from week 1 data lab 1:

The unit test tests for the data type of the output as well as if the correct value is predicted based on a known input. This helps ensure that the `predict_digit` function returns a value with the correct data type, which in this case is an integer and that the value is correct. Let's add this check to the `test_predict.py` file (we will create this file in the tests folder):

```python
import numpy as np
import tensorflow as tf
from data import load_and_preprocess_data
from predict import predict_digit, load_model

def test_predict_digit():
    # Load the saved model
    model = load_model('models/mnist_model')

    # Load and preprocess data
    (_, _), (test_images, test_labels) = load_and_preprocess_data()

    # Select a specific image and its label from the test dataset
    sample_idx = 42  # You can change this to any index within the test set
    image = test_images[sample_idx]
    expected_digit = test_labels[sample_idx]

    # Test the predict_digit function
    predicted_digit = predict_digit(model, image)

    # Check the data type of the predicted_digit
    assert isinstance(predicted_digit, int), f'Expected data type int, but got {type(predicted_digit)}'

    # Check if the predicted_digit matches the expected_digit
    assert predicted_digit == expected_digit, f'Expected {expected_digit}, but got {predicted_digit}'
```

The test checks both the data type of the output and whether the predicted digit matches the expected digit. Run the test with the `pytest` command:

```
pytest
```

This will run all the tests in the `tests` folder. In this case, it will run the `test_predict.py` test.

Make sure your terminal is in the root directory of the project (i.e. the same directory as the `tests` folder)

The test should pass if the prediction is correct and the output has the right data type. If the test fails, you'll see a detailed output showing the cause of the failure, and you can adjust the test or fix the issue in the `predict.py` module accordingly.

Here's an example output for a passed test and a failed test.

**Passed test:**

```
============================= test session starts ==============================
platform [your_platform] -- Python [your_python_version], pytest-[pytest_version], py-[py_version], pluggy-[pluggy_version]
cachedir: .pytest_cache
rootdir: [your_project_directory]
collected 1 item

test_predict.py .                                                        [100%]

============================== 1 passed in 2.21s ===============================
```

**Failed test:**

Let's say we deliberately change the expected data type in the test to `float` to simulate a failed test. Update the `test_predict.py` file:

```python
# Check the data type of the predicted_digit
assert isinstance(predicted_digit, float), f'Expected data type float, but got {type(predicted_digit)}'
```

Now, when you run the test with `pytest`, you'll get a failed test output like this:

```
============================= test session starts ==============================
platform [your_platform] -- Python [your_python_version], pytest-[pytest_version], py-[py_version], pluggy-[pluggy_version]
cachedir: .pytest_cache
rootdir: [your_project_directory]
collected 1 item

test_predict.py F                                                        [100%]

=================================== FAILURES ===================================
______________________________ test_predict_digit ______________________________

    def test_predict_digit():
        # ...
        predicted_digit = predict_digit(model, image)

        # Check the data type of the predicted_digit
>       assert isinstance(predicted_digit, float), f'Expected data type float, but got {type(predicted_digit)}'
E       AssertionError: Expected data type float, but got <class 'int'>
E       assert False

test_predict.py:19: AssertionError
=========================== short test summary info ============================
FAILED test_predict.py::test_predict_digit - AssertionError: Expected data ty...
============================== 1 failed in 2.19s ===============================
```

The failed test output shows the exact line of code where the test failed, the AssertionError message, and a summary of the failed tests. You can use this information to identify and fix issues in your code or update the test if needed. Don't forget to change the expected data type back to `int` in the test after reviewing the failed test output.

***
