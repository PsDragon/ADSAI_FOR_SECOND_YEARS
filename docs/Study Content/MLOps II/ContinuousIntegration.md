---
sort: 8
---

## MLOps: Continuous Integration Tools with Python 

### Chapter overview

I. Virtual environments & Package management with Python <br>
II. Production-Level code with Python <br>
III. Documentation for Python <br>
IV Testing with Python <br>
V. __Continuous Integration Tools with Python__ <br> 
VI. Deployment with Python <br>

### 1. Introduction

In this chapter, you will learn how to implement basic client side Continuous Integration (CI) tools in your Python project, by utilizing Pre-commit hooks. CI is a development methodology in which code changes are frequently merged into a central repository (e.g., a GitHub repository), with automated tests and builds to ensure the codebase remains functional. Pre-commit hooks are a type of [Git hook](https://www.atlassian.com/git/tutorials/git-hooks), which are scripts that automatically run based on specific events in a Git repository.

__After this chapter, you will be able to:__

- [ ] Define the concept of Continuous Integration (CI).
- [ ] Define the term 'pre-commit hook'. 
- [ ] Explain some of the benefits of Continuous Integration (CI).
- [ ] Apply Client-side Continuous Integration (CI) tools in your Python project by using Pre-commit hooks.
<img src="./images/ContinuousIntegration.png" alt="Continuous Integration with Python" width="600"/>

*Figure 1. Continuous Integration (CI) workflow.*

Please, watch the following video to learn more about Continuous Integration (CI):

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/1er2cjUq1UI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

*Video 1. What is Continuous Integration?.*

:pencil: __1a__ Describe the concept of Continuous Integration (CI) in your own words.

***

## 2. Pre-commit

Git hooks are scripts that are executed automatically by Git when certain events occur, such as before or after a commit, push, or merge. These scripts allow you to customize and automate your Git workflow to suit your needs. Git comes with a set of default hooks that can be found in the .git/hooks directory of your Git repository.

One type of Git hook is the pre-commit hook. A pre-commit hook is a script that runs before a commit is made to ensure that the commit meets certain criteria or standards. Pre-commit hooks can be used to perform various checks, such as running code formatting tools, linting code, checking for security vulnerabilities, or running tests.

<div style="text-align: center">
<img src="./images/MergeMeme.gif" alt="Pre-commit hook" width="80%"/>

*Figure 2. Git merge meme.*
</div>

To create pre-commit hooks for our project we will use the [pre-commit](https://pre-commit.com/) package. Let us start with setting up the pre-commit package, which among other things, allows us to check for trailing white spaces in our code before committing it to our repository.

:pencil: __2a__ Install the pre-commit package. To do so, you can use the following command:

```bash
poetry add pre-commit
```

:pencil: __2b__ Create a pre-commit configuration file in your project folder: 

```bash
poetry run pre-commit sample-config | out-file .pre-commit-config.yaml -encoding utf8
```

:pencil: __2c__ Ensure that the checks (i.e., hooks) are run before committing your code to the repository. To do so, run the following command:

```bash
poetry run pre-commit install
```
The default pre-commit configuration file contains the following code:

```yaml
repos:
-   repo:
    hooks:
    -   id: trailing-whitespace
    -   id: end-of-file-fixer
    -   id: check-yaml
    -   id: check-added-large-files
```

These will enforce some basic checks before you commit your code.
The ```trailing-whitespace``` hook checks for trailing white spaces in your code. The ```end-of-file-fixer``` hook ensures that your code ends with a new line. The ```check-yaml``` hook checks that your YAML files are valid. The ```check-added-large-files``` hook checks that you are not adding large files to your repository. If any of these checks fail, the commit will be aborted. You will have to fix the issue and try to commit the changes again. This is a good way to ensure that your code is always in a good state before you commit it to your repository. Especially, if you are working in a team.


:pencil: __2d__ Check that the pre-commit hooks are working as expected. To do so, try to commit some code that contains trailing white spaces. You should get an error message similar to the following:

```bash
$ git commit -m "Add pre-commit hooks"
Trim Trailing Whitespace.................................................Failed
hookid: trailing-whitespace

Files were modified by this hook. Additional output:

1 file(s) would be reformatted, 1 file(s) would be left unchanged.
```

The error message indicates that the ```trailing-whitespace``` hook failed. The error message also indicates that one file would be reformatted and one file would be left unchanged. This is because the ```end-of-file-fixer``` hook automatically adds a new line to the end of your code.

***

## 3. Advanced pre-commit hooks :hook:

Manually checking code with flake8 and Black before sharing it with colleagues or pushing it to a git repository can be cumbersome. To simplify this process, we can add some additional pre-commit hooks to our configuration file :sunglasses:. 

Let's do a quick recap on the tools 🧰 before adding them as pre-commit hooks :hook::

### Flake 8

Flake 8 is a Python linter that helps identify potential errors, style issues, and violations of programming conventions in your code. It combines the functionality of several popular Python linters, such as PyFlakes, pycodestyle, and McCabe. Using Flake 8 in your data science projects ensures code quality and reduces the chances of bugs. Flake 8 is also highly configurable, allowing you to customize it to suit your needs, however, it only checks for errors and style issues, it does not fix them.

Docs: [Flake 8 Documentation](https://flake8.pycqa.org/en/latest/)

### Black

Black is an opinionated Python code formatter that enforces consistent code formatting throughout your project. It takes away the burden of manually formatting your code and ensures readability and consistency, which is essential in data science projects with multiple collaborators.

Docs: [Black Documentation](https://black.readthedocs.io/en/stable/)

### isort

isort is a Python library that sorts imports alphabetically and automatically separates them into sections. It helps keep your import statements neat, tidy, and readable, making it easier to manage dependencies in your data science projects.

Docs: [isort Documentation](https://pycqa.github.io/isort/)

### Mypy

Mypy is a static type checker for Python that helps catch type errors before runtime. By adding type hints to your code and using Mypy, you can prevent potential bugs and improve code readability in your data science projects.

Docs: [Mypy Documentation](https://mypy.readthedocs.io/en/stable/index.html)

:pencil: __3a__ Add the following code to the .pre-commit-config.yaml file:

```yaml
repos:
-   repo: https://github.com/pre-commit/pre-commit-hooks
    rev: v3.2.0
    hooks:
    -   id: trailing-whitespace
    -   id: end-of-file-fixer
    -   id: check-yaml
    -   id: check-added-large-files
-   repo: https://github.com/pycqa/flake8
    rev: 8f9b4931b9a28896fb43edccb23016a7540f5b82
    hooks:
    -   id: flake8
```

This code adds the Flake 8 hook to the pre-commit configuration file. The Flake 8 hook checks your code for errors and style issues. The Flake 8 hook is configured to use the default Flake 8 settings. You can customize the Flake 8 settings by adding a `.flake8` file to your project folder. We will do this in the next section.

Commit the changes to the repository and check that the pre-commit hooks are working as expected. Most likely flake 8 will find some issues in your code. You can fix these issues manually and try to commit the changes again.

In order to reformate your code automatically, we will add the Black and isort hooks to the pre-commit configuration file.

:pencil: __3b__ Add the following code to the .pre-commit-config.yaml file:

```yaml
-   repo: https://github.com/psf/black
    rev: a3e8247a41089175827a69e5413278ffdc28aff2
    hooks:
    -   id: black
-   repo: https://github.com/PyCQA/isort
    rev: 7b69d092ae4885dcc45648538ae780a6326bcd1e
    hooks:
    -   id: isort
```	

The `repo` key specifies the repository that contains the hook. The `rev` key specifies the commit hash of the repository. The `hooks` key specifies the hook that you want to add to your pre-commit configuration file. In this case, we are adding the Black and isort hooks.

:pencil: __3c__ Commit the changes to the repository and check that the pre-commit hooks are working as expected. 

Black will reformat your code automatically. Isort will automatically sort imports. If you want to check the changes that Black and Isort made to your code, you can use the `git diff` command. For example, if you want to check the changes that Black made to the `main.py` file, you can use the following command:

```bash
$ git diff main.py
```

***

## 4. Configuring Black and Flake8 for Compatibility ⚙️

To ensure compatibility between Flake 8 and Black, you need to configure their settings to work together seamlessly. For example, Black uses a default line length of 88 characters, while Flake 8's default is 79 characters. To align these settings, follow these steps:

1. Create a `.flake8` file in the root directory of your project.

2. Add the following settings to the `.flake8` file:

```toml
[flake8]
max-line-length = 88
extend-ignore = E203, W503
```

This configuration sets the maximum line length for Flake 8 to 88 characters (which is the same as Black) and disables certain Flake 8 rules that conflict with Black's formatting.
***
## 5. Blended learning

There are many online resources available on the topic of Continuous Integration with Python. Please, check the following resources:

__Courses:__

- [Developing Python Packages](https://app.datacamp.com/learn/courses/developing-python-packages)

__Books/articles/webpages etc.:__

- [Pre-commit hooks](https://python-poetry.org/docs/master/pre-commit-hooks/)
- [Supported hooks](https://pre-commit.com/hooks.html)

***
