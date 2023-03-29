---
sort: 3
---

## MLOps: Testing with Python

### Chapter overview

I. Virtual environments & Package management with Python <br>
II. Production-Level code with Python <br>
III. Documentation for Python <br>
IV __Testing with Python__ <br>
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

:pencil: __2a__ Apply type hinting to the functions you created in your ```titanic.py``` script.

***

### 3. Logging

### Add material by Nitin

***

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

:pencil: __4a__ Use the debugger to debug the ```titanic.py``` script. Did you find any bugs? If so, fix them.

***

### 5. Unit testing

### Add material by Nitin

***

### 6. Blended learning

There are many online resources available on the topic of testing with Python. Please, check the following resources:

***
