---
sort: 3
---

# Virtual environments & PyTorch

In this knowledge module, you will find a list of online resources to help you to create a virtual conda environment, which enables you to use PyTorch with GPU support.

After this module, you will be able to:

- [ ] Create a virtual conda environment, which enables you to use PyTorch with GPU support 
- [ ] Describe the trends regarding the Paper Implementations grouped by framework
- [ ] Explain why PyTorch/Tensorflow is most prevalent in academia/industry

***

## 1. Virtual environment 

To enable GPU computing on our local device (i.e. laptop), we need to create a conda environment and install a special Python library called cudatoolkit. Each GitHub project has its own minimum hardware/software requirements, and installation process. So, before you create your environment, carefully check the 'get started'/installation guide of the algorithm/toolkit you are interested in. For example: [mmdetection](https://mmdetection.readthedocs.io/en/latest/get_started.html#installation). For a tutorial, see video below:

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/GMSjDTU8Zlc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 1. PyTorch & CUDA Setup - Windows 10.*

Other useful resources:

- [Managing environments in Anaconda](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#activating-an-environment)
- [cudatoolkit](https://anaconda.org/anaconda/cudatoolkit)

***

## 2. PyTorch

<img src="./images/PyTorch.jpg" alt="detectron2" width="400"/>

Until now, you have mostly worked with the python framework Tensorflow, in particular Keras. Throughout this project you will work with another popular framework called PyTorch. It is is scientific computing package, which serves two main purposes:

- A replacement for NumPy to use the power of GPUs and other accelerators
- An automatic differentiation library that is useful to implement neural networks ([Source](https://pytorch.org/tutorials/beginner/deep_learning_60min_blitz.html))

Generally speaking, PyTorch is most prevalent in academia, while Tensorflow dominates industry:

- [The State of Machine Learning Frameworks in 2019](https://thegradient.pub/state-of-ml-frameworks-2019-pytorch-dominates-research-tensorflow-dominates-industry/)
- [Paper Implementations grouped by framework](https://paperswithcode.com/trends)

Thus, when working with novel/SOTA deep learning algorithms, which is exactly what we are going to do this block, you will likely encounter PyTorch based code because researchers who develop these algorithms usually work in academia. Sounds logical, right?  

__Want to learn how to work with PyTorch? Check out the following resources:__ 

| Title | Type of learning material |  Developer | Time to complete |  Level |
|:----------|:-------------|:------|:------|:------|
| [Deep Learning with PyTorch](https://app.datacamp.com/learn/courses/deep-learning-with-pytorch) | Course | DataCamp |  3 hours     |  Intermediate     |
| [Deep Learning with PyTorch: A 60 Minute Blitz ](https://pytorch.org/tutorials/beginner/deep_learning_60min_blitz.html)|  Tutorial | PyTorch |  1 hours    | Beginner      |
| [Learn PyTorch for Deep Learning: Zero to Mastery book](https://www.learnpytorch.io/) |    Online book  |   learnpytorch.io |   ... hours    |  Intermediate     |
| [PyTorch Fundamentals](https://learn.microsoft.com/en-us/training/paths/pytorch-fundamentals/) |    Learning path/courses  |   Microsoft |   3.5 hours    |  Intermediate     |

***

