---
sort: 3
---

# Evaluating Machine Learning Algorithms: The bias-variance trade-off

In today's blended learning, you have learned how to split your dataset into a training and test set (i.e. holdout method). This is an essential part of the machine learning pipeline called model evaluation.

The reason why we always evaluate a model on a test set is that we want to know how well our model will perform on unseen data. If we would train our model on the entire dataset, then it will indeed perform well on the training set, but it will not generalize well to unseen data. This is called overfitting.

:bell: **Overfitting**: The model performs well on the training set, but not on the test set.

The opposite of overfitting is underfitting. Underfitting is when the model performs poorly on both the training set and the test set. This is because the model is too simple to capture the underlying patterns in the data.

:bell: **Underfitting**: The model performs poorly on both the training set and the test set.

Overfitting and underfitting are two extremes. In reality, we want to find a model that performs well on both the training set and the test set. This is called the **sweet spot**. Identifying the sweet spot is the key to building a good machine learning model, and is why Machine Learning is more of an art than a science. There is sadly no one-size-fits-all solution and it will depend on the dataset and the problem at hand. However, there are some guidelines that can help you find the sweet spot. One of the key concepts in this regard is the **bias-variance trade-off**.

## Bias and variance

When you evaluate a predictive model (classification or regression), its error can be decomposed into two main sub-components: bias and variance. Understanding these two types of error can help you to reduce the chance of overfitting or underfitting, thus improving your model's overall performance (Fortmann, 2012).

<img src="./images/model_diagram.png" alt="Model development & evaluation" width="600"/>

*Figure 1. The machine learning pipeline (with a focus on model development and evaluation).*

The bias-variance trade-off allows data scientists to understand why a model behaves a certain way, and if the model is overfitting or underfitting. The sweet spot is where we have the least bias, and the least variance. In general, there is often a trade-off as increasing bias decreases variance, and increasing variance decreases bias. The trick is to find a balance between the two error types.

:orange_book: Read Fortmann's essay on the bias-variance trade-off. You can find the material, [here](http://scott.fortmann-roe.com/docs/BiasVariance.html){:target="_blank"}.

:pencil: Q3 List, and describe the four different cases representing combinations of both high and low bias and variance (See Figure 1. in Fortmann's essay).

:tv: Watch the video Machine Learning Fundamentals: Bias and Variance by StatQuest with Josh Starmer.

<iframe width="560" height="315" src="https://www.youtube.com/embed/EuBBz3bI-aA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 1. Machine Learning Fundamentals: Bias and Variance by StatQuest with Josh Starmer*

## Optional Assignments

 Answering the following questions will help you with your understanding of the bias-variance trade-off.

:pencil: Q4 The prediction error of a model is composed of three elements. List the three elements. Write your answer down.

:pencil: Q5 In the article Fortmann presents a KNN analysis of voter party registration to explain the bias-variance trade-off. 1) What are the features? 2) What is the response (i.e. y-variable)? 3) Is this a regression or classification task? Elaborate on your answers.

:pencil: Q6 Select a small value of K, and click the button 'Generate New Training Data' several times. Does the graph depict: 1) low variance or high variance? 2) low bias or high bias? Explain your answers.

:pencil: Q7 Does a large value for K cause a) overfitting or b) underfitting? Explain your answer.

<img src="./images/overfitting.jpeg" alt="low bias & low variance" width="400">

*Figure 2. A case of overfitting...*

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Want to learn more on the topic of model evaluation, see Raschka's <a href="https://arxiv.org/pdf/1811.12808.pdf">Model Evaluation, Model Selection, and Algorithm
Selection in Machine Learning</a> guide.
 </div>


# Datalab Preparation

- [ ] Completed the course [Understanding Machine Learning](https://app.datacamp.com/learn/courses/understanding-machine-learning){:target="_blank"} and uploaded the certificate to your github repos.
- [ ] Completed the Classification module of [Machine Learning with scikit-learn](https://app.datacamp.com/learn/courses/machine-learning-with-scikit-learn){:target="_blank"} and uploaded the evidence of completion to your learning logs.
- [ ] Completed the [writing] homework assignments and uploaded ```IntroductionToMachineLearning.md``` and ```ClassificationAlgorithms.md``` to your GitHub repository.
- [ ] Completed the [code] homework assignments and uploaded `classification_knn.ipynb` to your GitHub repository.

> In tomorrow's DataLab, we will continue working on the use-cases from last week. This Friday, you will learn more about use-case 5, which introduces machine learning to the creative brief mix.

