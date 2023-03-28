---
sort: 2
---

## MLOps: Production-Level code with Python

### Chapter overview

I. Virtual environments & Package management with Python <br>
II. __Production-Level code with Python__ <br>
III. Documentation for Python <br>
IV Testing with Python <br>
V. Continuous Integration with Python <br> 
VI. Deployment with Python <br>

### 1. Introduction

In this module, you will learn to write production-level code with Python. Until now, you have mostly written your Python code in a Jupyter notebook in either Anaconda or Google Colaboratory. From this block onwards, we will increasingly start incorporating Python scripts (i.e., files with .py extension) and an [Integrated Development Environment (IDE)](https://www.codecademy.com/article/what-is-an-ide) into our workflow. So, why would you want to switch from Jupyter notebooks to scripts? Notebooks are helpful when you perform an EDA or another small coding experiment, but when it comes to developing production-ready ML products, they present a couple of serious drawbacks compared to simple Python scripts. 

<img src="./images/ProductionCode.png" alt="Production code" width="400"/>

*Figure 1. Production code meme.*

:bell: 'Production-level' refers to code that is designed to be implemented in practical, real-world scenarios such as applications, systems, or products. It involves optimizing the code for factors such as performance, reliability, scalability, and maintainability to ensure its suitability for deployment.

__After this chapter, you will be able to:__

- [ ] Describe the process of code formatting/linting with Python
- [ ] Apply code formatting/linting techniques to a Python script using commonly used tools, such as Isort, Black and Flake8

:warning: When you work with Python scripts, installing an IDE is highly recommended. There are numerous (free) suitable IDEs available. For example:

- [PyCharm](https://www.jetbrains.com/pycharm/) 
- [VSCode](https://code.visualstudio.com/) (Recommended)
- [DataSpell](https://www.jetbrains.com/dataspell/) 
- [Spyder](https://www.spyder-ide.org/) 

***

### 2. Refactoring 

## Material by Nitin

***

### 3. Linters & Code formatters 

Who does not have one or more 'Untitled' Jupyter Notebook on your computer? I think most of us are guilty of this offense :sweat_smile:. These notebooks are often the result of a quick experiment or a small coding exercise. However, when you want to write production-level code, you want to make sure that your code is readable, consistent, and well-documented. For most of us this is difficult to achieve without the help of tools. Luckily, there are tools that can help you to write better code, called linters and code formatters.

<img src="./images/UntitledNotebook.jpg" alt="Untitled notebook meme" width="400"/>

*Figure 2. 'Untitled' notebook meme.*

In this section, we will cover three commonly used tools: [Isort](https://pycqa.github.io/isort/), [Black](https://black.readthedocs.io/en/stable/), and [Flake8](https://flake8.pycqa.org/en/latest/). Isort automatically sorts and organizes Python imports, Black automatically formats code based on a style guide called [PEP8](https://peps.python.org/pep-0008/) (Sounds familiar, right? ...), and Flake8, a linter, checks for issues with code style, syntax, and logic. The latter, works together with Black to ensure that your code looks and works as it should.

:pencil: __3a__ Use Poetry to install the packages Isort, Black and Flake8 in the ```titanic-env``` environment. Use the following command:

```bash
poetry add [package name]
```

:warning: To enable Isort, Black and Flake8 in your IDE, you have to change some settings. For example, in VSCode, you have to go to 'File', then 'Preferences', and 'Settings':

- __Isort:__

![Enable Isort in VSCode](./images/Isort.gif)

- __Black:__

![Enable Black in VSCode](./images/Black.gif)

- __Flake8:__

![Enable Flake8 in VSCode](./images/Flake8.gif)

:pencil: __3b__ Use Isort to sort the imports in your ```titanic.py``` script.

For example, if you want to run a package with Poetry on your ```titanic.py``` script, you can use the following command:

```bash
poetry run [package name] titanic.py
```

:pencil: __3c__ Use Flake8 to check the formatting of your ```titanic.py``` script. If there are any formatting errors, use Black to automatically fix them.

:pencil: __3d__ What errors did Flake8 find in your ```titanic.py``` script? How did Black fix them? Write your answer down. 

***

### 4. Blended learning

There are many online resources available on the topic of production-level code with Python. Please, check the following resources:

__Courses:__

- [Software Engineering for Data Scientists in Python](https://app.datacamp.com/learn/courses/software-engineering-for-data-scientists-in-python)
- [Developing Python Packages](https://app.datacamp.com/learn/courses/developing-python-packages)

__Videos:__

- [Code Reviewing in Python](https://www.youtube.com/watch?v=1CKNMgG7D64&list=PLnK6m_JBRVNqskWiXLxx1QRDDng9O8Fsf)

__Books/articles/webpages etc.:__

- [5 Reasons why you should Switch from Jupyter Notebook to Scripts](https://towardsdatascience.com/5-reasons-why-you-should-switch-from-jupyter-notebook-to-scripts-cb3535ba9c95by)
- [Data scientists, the only useful code is production code](https://thuijskens.github.io/2018/11/13/useful-code-is-production-code/) 

***
