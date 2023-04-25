---
sort: 1
---

## MLOps: Virtual environments & Package management with Python

### Chapter overview

I. __Virtual environments & Package management with Python__ <br>
II. Production-Level code with Python <br>
III. Documentation for Python <br>
IV Testing with Python <br>
V. Continuous Integration with Python <br> 
VI. Deployment with Python <br>

### 1. Introduction

Hi there :sparkles: :books: :smiley:. Welcome to the first chapter of the __*MLOps with Python*__ knowledge module. In this module, you will learn about virtual environments and package management in Python. Throughout this module, you will be guided towards online resources that will help you acquire knowledge of various MLOps topics. In addition, we created some Python exercises, using the Titanic dataset, for you to practice your newly gained knowledge; you will build your first Python package! After completing the chapter, you should be able to apply your knowledge to the Creative Brief. Let us get started :rocket:!

__After this chapter, you will be able to:__

- [ ] Define the terms 'virtual environment', 'package management' and 'technical debt' in machine learning
- [ ] Describe the relative importance of ML code in a real-world ML system
- [ ] Explain the benefits of using virtual environments and package management in Python 
- [ ] Create a virtual environment in Python 
- [ ] Install Python packages in a virtual environment using the package manager Poetry

<img src="./images/PythonEnvPackage.jpg" alt="Python setup for production ready ML code" width="600">

*Figure 1. Python setup for production ready ML code.*

Using a virtual environment along with a package manager enables efficient management of dependencies and packages required for a machine learning project in a well-organized manner. For example, it will combat what we call 'technical debt' (More on this in the next section!) by making your code reproducible, which in turn will simplify the collaboration with other data professionals (Yes, you will be working in a team this block...).

***

### 2. What is technical debt?

Technical debt is a term used in software development that describes the expense of maintaining a codebase that was not created with maintainability and scalability as priorities. In machine learning, technical debt can be the result of poorly designed models, data pipelines, or infrastructure that are challenging to maintain, scale, or improve over time.

<img src="./images/TechnicalDebt.png" alt="Raster vs. vector data" width="600">

*Figure 1. Technical debt and the machine learning life-cycle.*

:bell: ML code is makes up only a small fraction of the total codebase in a real-world ML system. This means that the majority of the codebase is not ML code, but rather code that is used to manage the ML system :open_mouth: (See Figure 1.).

Technical debt can accumulate in machine learning projects that rely on outdated or poorly documented code, inefficient data pipelines, or unoptimized systems. To prevent technical debt, it is essential to adhere to software development best practices such as documenting the code, testing and validating the models, optimizing code performance, and designing the system with scalability and maintainability in mind. Refactoring and reviewing the code frequently is also necessary to identify and address technical debt before it becomes a significant problem. Virtual environments and package management in Python can be beneficial in reducing technical debt in machine learning projects by keeping track of dependencies and organizing them properly.

Want to learn more about technical debt in machine learning? Check out the following video and article:

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/V18AsBIHlWs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

*Video 1. Machine Learning, Technical Debt, and You - D. Sculley (Google).*

Original scientific paper by D. Sculley et al. regarding technical debt in machine learning systems:

- [Hidden Technical Debt in Machine Learning Systems](https://proceedings.neurips.cc/paper/2015/file/86df7dcfd896fcaf2674f757a2463eba-Paper.pdf)

:pencil: __2a__ Find a GitHub ML project that you like and check out the codebase. How many lines of code are ML code? How many lines of code are not ML code? What is the ratio of ML code to non-ML code? Write your answer down.

:pencil: __2b__ Would you say that the project has a lot of technical debt? Why or why not? Write your answer down.

***

### 3. Virtual environment

<img src="./images/GergelySzerovay.jpg" align="left" width="80"/>

> I have over two decades of professional experience as a developer, I know a wide variety of frameworks and programming languages, and one of my favorites is Python. I've been teaching it for quite some time now, and according to my experience, establishing Python environments is a challenging topic - [Gergely Szerovay](https://www.freecodecamp.org/news/why-you-need-python-environments-and-how-to-manage-them-with-conda-85f155f4353c/), Freecodecamp contributer. 

<br clear="left"/>

By creating a virtual environment, you can ensure that your project has access to the required dependencies and packages without affecting the global Python installation (i.e, 'base'). Additionally, virtual environments can be easily shared with others, making it easier to collaborate on projects. Thus, using a virtual environment in Python for your machine learning projects is a best practice that helps maintain a clean and organized development environment.

Let us take a look at how to create a virtual environment in Python using [Conda](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html).

__Step 1: Install Conda__

If you have not installed Conda yet, you can download it from the official [Anaconda](https://www.anaconda.com/products/individual) website.

__Step 2: Create a virtual environment__

Open up your terminal or command prompt and type the following command to create a new virtual environment:

```bash
conda create --name myenv
```
This command creates a new virtual environment called 'myenv'. You can replace 'myenv' with any name you like.

__Step 3: Activate the virtual environment__

To start using the virtual environment, you need to activate it. Type the following command to activate the 'myenv' environment:

```bash
conda activate myenv
```
__Step 4: Install packages in the virtual environment__

With the virtual environment activated, you can install any packages you need. For example, to install the popular data science package pandas, you can use the following command:

```bash
conda install pandas
```
This will install Pandas and any dependencies it needs in the 'myenv' environment.

__Step 5: Deactivate the virtual environment__

To exit the virtual environment and return to your regular environment, type the following command:

```bash
conda deactivate
```

That is it! You have successfully set up a virtual environment for Python using Conda.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Note: The manual installation of CUDA and CuDNN, which are essential for accelerating compute-intensive applications like deep learning (e.g., GPU-enabled Tensorflow), can be a difficult and error-prone task to perform at the system-wide level. However, Conda's 'cudatoolkit' can make this process much simpler as it manages the installation and administration of these dependencies on your device.
</div>

In addition to Conda, there are several other tools available for managing Python environments. Below you can find some of the most widely used ones:

- [Virtualenv](https://pypi.org/project/virtualenv/): This is a tool for creating isolated Python environments. It can be used to manage different versions of Python and Python packages. It is lightweight and simple to use.
- [Pyenv](https://pypi.org/project/pyenv/): This is a tool for managing multiple versions of Python on a single machine. It can be used to install and switch between different versions of Python, and to create virtual environments.
- [Venv](https://pypi.org/project/venv/): This is a module included in Python's standard library that can be used to create virtual environments. It is similar to Virtualenv, but with some added functionality.
- [Pipenv](https://pypi.org/project/pipenv/): This is a tool that combines virtual environment creation with package management. It creates a virtual environment for each project and manages package dependencies using a Pipfile.
- [Docker](https://hub.docker.com/): This is a tool for creating lightweight, portable containers that can be used to package applications and their dependencies. It can be used to create isolated environments for Python applications.

Each of these alternatives has its own strengths and weaknesses, so it is important to evaluate each one based on your specific needs and requirements.

:pencil: __3a__ Create new directory named ['src'](https://packaging.python.org/en/latest/tutorials/packaging-projects/). For now you do not need to know why it is called 'src'. You will learn more about this naming convention in one of the next knowledge module chapters. 

:pencil: __3b__ Download the [Titanic](https://web.stanford.edu/class/archive/cs/cs109/cs109.1166/problem12.html) dataset in CSV format and save it to the directory 'src'. 

:pencil: __3c__ Create a Python script called ```titanic.py``` and place it in the same directory as the Titanic dataset.

:pencil: __3d__ Use a virtual environment manager such as Venv, Conda, or Pipenv to create a new virtual environment called ```titanic-env```.

***

### 4. Package management

[Poetry](https://python-poetry.org/) is a Python package manager that aims to provide a simple and efficient way to manage dependencies in your Python projects. It allows you to define your project's dependencies in a [```pyproject.toml```](https://betterprogramming.pub/a-pyproject-toml-developers-cheat-sheet-5782801fb3ed) file, which is more user-friendly than the traditional [```requirements.txt```](https://learnpython.com/blog/python-requirements-file/) file. With Poetry, you can easily install, update, and remove dependencies, as well as create virtual environments for your projects.

Some of the key features of Poetry include:

- Dependency management: Poetry allows you to define dependencies and their versions in a single file. It also resolves dependencies and ensures that they are compatible with each other.
- Virtual environments: Poetry automatically creates and manages virtual environments for your projects, which helps to keep your dependencies isolated from each other.
- Packaging: Poetry can package your project as a Python wheel or source distribution, which makes it easy to distribute and install your project on other systems.
- Plugin system: Poetry has a plugin system that allows you to extend its functionality. For example, there are plugins for integrating Poetry with other tools like Pytest or Black.

Overall, Poetry simplifies the process of managing dependencies in your Python projects, making it easier to share and distribute your code.

:pencil: __4a__ Activate the ```titanic-env``` virtual environment and install the package Poetry. 

Here is a quick guide on how to install Poetry on a Windows machine:

__Step 1: Open the command prompt on your Windows machine__

You can do this by pressing the Windows key and typing 'cmd' into the search bar, then selecting 'Command Prompt' from the search results. You can also use the terminal in your IDE:

<img src="./images/Terminal.png" alt="Terminal in VSCode" width="1000">

*Figure 2. Terminal in VSCode.*

__Step 2: Install Poetry using the following command:__

```bash
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
```
If you do not have curl installed, you can download the script manually from this link: https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py and save it to your local machine.

__Step 3: Add Poetry to your PATH environment variable__

Windows 10/11 instructions: 

1. Press the 'Win' key on your keyboard, then type 'Environment Variables' and click on 'Edit the system environment variables'.
2. In the 'System Properties' window that appears, click on the 'Environment Variables' button at the bottom right.
3. In the 'Environment Variables' window, under 'User variables' (the top section), find the 'Path' variable, and click on the 'Edit' button. If there isn't a 'Path' variable, click on the 'New' button to create one.
4. In the 'Edit environment variable' window, click on the 'New' button and then paste %APPDATA%\Python\Scripts. If you had to create a new 'Path' variable, set the variable name to 'Path' and the value to %APPDATA%\Python\Scripts.
5. Click 'OK' to save the changes and close the 'Edit environment variable' window. Then click 'OK' again to close the 'Environment Variables' window, and finally 'OK' to close the 'System Properties' window.

After completing these steps, you will have added %APPDATA%\Python\Scripts to your user PATH, and the changes should take effect immediately. If you have any command prompts or applications open that rely on the PATH, you may need to restart them for the changes to take effect.

For more instructions on how to add a directory to your user PATH on other operating systems, click [here](https://python-poetry.org/docs/#installing-with-the-official-installer). 

__Step 4: Verify that Poetry is installed correctly by typing the following command:__

```bash
poetry --version
```

If the installation was successful, this should display the version number of Poetry.

That is it! You now have Poetry installed on your Windows machine.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Note: You may also choose to publish your project as a package on the Python Package Index (PyPI), which is a collection of open-source software for the Python programming language, if you are willing to take on an additional challenge. For more details, contact coding wizard Nitin. 
</div>

:pencil: __4b__ Then, use Poetry to install the following packages:

- [ ] ```pandas```
- [ ] ```numpy```
- [ ] ```matplotlib```
- [ ] ```seaborn```
- [ ] ```sklearn```

For example, if you want to install the Pandas package, you can use the following command:

```bash
poetry add pandas
```

:pencil: __4c__ Import the necessary packages in your ```titanic.py``` script and conduct a basic exploratory data analysis on the Titanic dataset. 

:pencil: __4d__ Train a logistic regression model on the dataset, and evaluate its performance.

***

### 5. Blended learning

There are many online resources available on the topic of virtual environments and package management in Python. Please, check the following resources:

__Videos:__

- [How to Create and Use Virtual Environments in Python With Poetry](https://www.youtube.com/watch?v=0f3moPe_bhk)
- [Visual Studio Code (Windows) - Setting up a Python Development Environment and Complete Overview](https://www.youtube.com/watch?v=-nh9rCzPJ20)

__Books/articles/webpages etc.:__

- [Python Virtual Environments: A Primer](https://realpython.com/python-virtual-environments-a-primer/)

***