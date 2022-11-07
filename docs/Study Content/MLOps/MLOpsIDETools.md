---
sort: 2
---

# IDE & MLOps Tools 

In this knowledge module, you will find a list of online resources on the topics of coding practices for Data Science/AI, IDEs, and MLOps tools for experiment tracking and management. 

After this module, you will be able to:

- [ ] Provide some advantages/disadvantages of using a Jupyter notebook or Python scripts in combination with an IDE 
- [ ] Select a (open source) IDE/MLOps tool that is best suited for the object detection/reinforcement learning/robotics task based on their features

***

## 1. From Jupyter notebook to Python scripts

Until now, you have primarily written your Python code in a Jupyter notebook in either Anaconda or Google Collaboratory. From this block onwards, we will start incorporating Python scripts (i.e., files with .py extension) and an [Integrated Development Environment (IDE)](https://www.codecademy.com/article/what-is-an-ide) into our workflow. So, why would you want to switch from Jupyter notebooks to scripts? Notebooks are helpful when you perform an EDA or another small coding experiment, but when it comes to developing production-ready ML products, they present a couple of serious drawbacks compared to simple Python scripts. 

<img src="./images/ProductionCode.png" alt="Production code" width="400"/>

*Figure 1. Production code meme.*

When you work with Python scripts, installing an IDE is highly recommended. There are numerous (free) suitable IDEs available. For example:

- [PyCharm](https://www.jetbrains.com/pycharm/) (JetBrains)
- [VSCode](https://code.visualstudio.com/) (Microsoft)
- [DataSpell](https://www.jetbrains.com/dataspell/) (JetBrains, :warning: *My personal favorite!* :warning:)
- [Spyder](https://www.spyder-ide.org/) (Spyder)

Want to learn more about production Python code and the reasons why you should switch from Jupyter notebooks to scripts, check out the following blogs:

- [5 Reasons why you should Switch from Jupyter Notebook to Scripts](https://towardsdatascience.com/5-reasons-why-you-should-switch-from-jupyter-notebook-to-scripts-cb3535ba9c95by) (Khuyen Tran) 
- [Data scientists, the only useful code is production code](https://thuijskens.github.io/2018/11/13/useful-code-is-production-code/) (Thomas Huijskens)

Interested in writing your own production code in Python using [Object Oriented Programming (OOP)](https://www.codecademy.com/article/cpp-object-oriented-programming) principles, see the tutorials, lectures, and courses below:

| Title | Type of learning material |  Developer | Time to complete |  Level |
|:----------|:-------------|:------|:------|:------|
| [Learn Intermediate Python 3](https://www.codecademy.com/learn/learn-intermediate-python-3) | Course | CodeAcademy |  15 hours     |  Intermediate     |
| [Object-Oriented Programming in Python](https://app.datacamp.com/learn/courses/object-oriented-programming-in-python)|  Course | DataCamp |  4 hours    | Advanced      |
| [Object Oriented Programming with Python - Full Course for Beginners](https://www.youtube.com/watch?v=Ej_02ICOIgs) |    Video tutorial   |   FreeCodeCamp |   2 hours    |  Advanced     |

For information on how to document, and develop reproducible Python code, see:

- [Python: Coding standards and reproducible data science](https://adsai.buas.nl/Study%20Content/Programming/14.Python%20PEP8.html)
- [Make the Most Value Out of Your Code](https://towardsdatascience.com/make-most-value-of-your-code-8db8073fc43b) 
- [Ten Simple Rules for Reproducible Research in Jupyter Notebooks](https://arxiv.org/ftp/arxiv/papers/1810/1810.08055.pdf)
- [Cookiecutter: Better Project Templates](https://cookiecutter.readthedocs.io/en/stable/)

***

## 2. MLOps Tools: Experiment Tracking & Management 

To track and manage your experiments, you can deploy a Machine Learning Operations (MLOps) tool. These tools help you, among others, to log parameter settings and store model outputs. One of the more well-known tools is Tensorflow's [Tensorboard](https://www.tensorflow.org/tensorboard). Other popular tools include [Clear ML](https://clear.ml/docs/latest/) and [Weights & Biases](https://wandb.ai/site), for which the latter is often referred to as WandB.  

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/EeqhOSvNX-A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 1. Introducing Weights and Biases.*

To learn more about the different ML tools, see the [comparison](https://neptune.ai/blog/best-ml-experiment-tracking-tools) made by Patrycja Jenkner.

For 'Quickstart' guides, visit:

- [Tensorboard](https://www.tensorflow.org/tensorboard/get_started) 
- [Weights & Biases](https://docs.wandb.ai/quickstart)
- [Clear ML](https://clear.ml/docs/latest/docs/)

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Note: In our own tutorials, we will be using VSCode and DataSpell as our IDE, and Weights & Biases as out MLOps tool. 
</div>

***