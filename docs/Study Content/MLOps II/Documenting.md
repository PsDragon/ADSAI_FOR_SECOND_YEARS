
## MLOps: Documenting for Python

### Chapter overview

I. Virtual environments & Package management with Python <br>
II. Production-Level code with Python <br>
III. __Documentation for Python__ <br>
IV Testing with Python <br>
V. Continuous Integration with Python <br> 
VI. Deployment with Python <br>

### 1. Introduction


In the first two chapters of the knowledge module, you developed a Python program that examines the Titanic dataset. In this chapter, you will learn to document your Python code - e.g., adding comments and explanations to the code to make it easier to understand for other data professionals. Furthermore, you will learn how to utilize Sphinx, a tool that generates documentation for your code. Proper documentation is important because it helps other people to understand your code, collaborate with you, maintain the code over time, and reuse your code in their own projects.

<img src="./images/Documenting.jpg" alt="Documenting Python code" width="600">

*Figure 1. Documenting Python code.*

__After this chapter, you will be able to:__

- [ ] Explain the purpose of docstrings in Python
- [ ] Write docstrings for Python functions, either manually or using an extension in VSCode

***

### 2. Docstrings

Docstrings in Python are used to provide documentation or information about a specific function, module, or class. They are a string of text that comes directly after a function or module definition and is enclosed in triple quotes ('''...'''). The purpose of a docstring is to provide information about what a particular piece of code does and how to use it. They can describe the purpose of the function, the parameters it expects, the return value, and any exceptions that may be raised. In addition to being helpful for other developers who may be working on the code, docstrings are also used by automated tools like IDEs and documentation generators to provide documentation for your code. 

![Docstrings in VSCode](./images/Docstrings.gif)

*Figure 2. Docstrings in VSCode.*

For example, a simple docstring for a function that calculates the sum of two numbers might look like this:

```Python
def add_numbers(x, y):
    """
    This function takes two numbers as input and returns their sum.
    Parameters:
    - x: the first number to add
    - y: the second number to add
    Returns:
    - The sum of x and y
    """
    return x + y
```

When you write a docstring for a function in your code, the first sentence should give a quick explanation of what the function does. After that, you should list all the information about the things that the function needs to work properly, which are called parameters. For each parameter, you should explain what it is. Finally, you should explain what the function will give back to you after it finishes running.

There are many different docstring formatting styles available in Python, below you will find some commonly used ones:

- Google: This style of docstring is used by many popular Python projects such as TensorFlow, Pandas, and NumPy. It consists of a one-line summary, followed by a blank line, followed by a more detailed description of the function. Each parameter and return value is documented using a separate section with the format: Args:, Returns:
- NumPy: This style is similar to the Google Style, but it is more concise. It includes a one-line summary, followed by a blank line, followed by a detailed description of the function. Each parameter and return value is documented using a separate section with the format: Parameters:, Returns:
- reStructuredText: This style is similar to the NumPy Style, but it uses reStructuredText markup. It includes a one-line summary, followed by a blank line, followed by a detailed description of the function. Each parameter and return value is documented using a separate section with the format: :param name:, :return:

The choice of which style to use is largely a matter of personal preference, but it is important to be consistent in your documentation style throughout your codebase.

:pencil: __2a__ Write a docstring for one of the functions you created in your ```titanic.py``` script that follows the Google Style format.

:pencil: __2b__ Install the extension [autoDocstring](https://marketplace.visualstudio.com/items?itemName=njpwerner.autodocstring) in VSCode and use it to generate docstrings for the other functions you created in your ```titanic.py``` script.

The video below shows how to install and use autoDocstring in VSCode:

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/2xa9_A8HH3U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

*Video 2. Autodocstring in VSCode.*

***

### 3. Sphinx 

```Sphinx``` is a tool that generates documentation for your code. It is a popular tool for Python projects and is used by many popular Python projects such as TensorFlow, Pandas, and NumPy. To learn more about ```Sphinx```, please watch the following video:

</figure>
<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/Rqyby56IHus" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</figure>
<!-- blank line -->

Jokes aside, ```Sphinx``` is one the most important tools for documenting your code. Using docstrings (user or machine generated) as a basis, ```Sphinx``` can generate a website with the documentation for your code. This website can be hosted on a server and made available to the public.

To learn more about ```Sphinx```, please check out the following resources:

- [Sphinx Documentation](https://www.sphinx-doc.org/en/master/)
- [Sphinx Tutorial](https://www.sphinx-doc.org/en/master/tutorial/index.html)

> Note that tools such as ```Sphinx``` cannot be used on a Jupyter Notebook natively. You will need to install some additional extensions to make it work. But I do not ever recommend using Jupyter Notebooks for writing production-level code.

:bell: The best way to learn how to use ```Sphinx``` is to read it's documentation, try it out on a sample script, and apply it to your project scripts. In addition to creating documentation, learning how to read and engage with the documentation of popular Python projects is also a very important skill. So, please, try to read the documentation of ```Sphinx```.


### 4. Blended learning

There are many online resources available on the topic of documenting for Python. Please, check the following resources:

__Videos:__

- [Code Reviewing in Python](https://www.youtube.com/watch?v=1CKNMgG7D64&list=PLnK6m_JBRVNqskWiXLxx1QRDDng9O8Fsf)
- [Docstrings - Python Tips and Tricks #10](https://www.youtube.com/watch?v=QZhANCk5OXc)

***