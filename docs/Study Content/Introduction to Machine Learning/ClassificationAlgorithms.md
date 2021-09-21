---
sort: 4
---

# Classifications Algorithms

We start with ...

## 0) Learning Objectives:
Text:
1. ...

Table of contents:
1. Introduction to concepts: X hours
2. Workshop: Y hours


## Questions or issues?
If you have any questions or issues regarding the course material, please first ask your peers or ask us in the daily Q&A at 16:00!



Good luck!


## 1) Introduction
text

## 2) Workshop
Now, we're introduced to TOPIC it's time ground down these fundamental by doing a workshop. Open the [Basics of Machine Learning course](https://www.codecademy.com/learn/machine-learning) on Codecademy and complete the modules: **Classification Vs Regression** and **Classification: K-Nearest Neighbors**.

## 3) Model evaluation

In today's Codecademy course material, you have learned how to split your dataset into a training, validation, and test set (i.e. holdout method). This is an essential part of the machine learning pipeline called model evaluation.

<img src="./images/model_diagram.png" alt="Model development & evaluation" width="600"/>

*Figure 1. The machine learning pipeline (with a focus on model development and evaluation).*

When you evaluate a predictive model, its error can be decomposed into two main subcomponents: bias and variance. Understanding these two types of error, can help you to reduce the chance of overfitting or underfitting, thus improving your model's overall performance (Fortmann, 2012).

### 3.1 The bias-variance trade-off

The bias-variance trade-off allows data scientists to understand why a model behaves a certain way, and allows them to apply corrective actions. In general, the bias-variance trade-off proceeds as follows: increasing bias decreases variance, and increasing variance decreases bias. The trick is to find a balance between the two error types.

__3.1a__ Read Fortmann's essay on the bias-variance trade off. You can find the material, [here](http://scott.fortmann-roe.com/docs/BiasVariance.html).

__3.1b__ Watch the video Machine Learning Fundamentals: Bias and Variance
StatQuest with Josh Starmer.

<iframe width="560" height="315" src="https://www.youtube.com/embed/EuBBz3bI-aA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 1. Machine Learning Fundamentals: Bias and Variance
StatQuest with Josh Starmer*

__3.1c__ The prediction error of a model is composed by three elements. List the three elements. Write your answer down.

__3.1d__ In the article Fortmann presents a KNN analysis of voter party registration to explain the bias-variance trade off. 1) What are the features? 2) What is the response (i.e. y-variable)? 3) Is this a regression or classification task? Elaborate on your answers.

__3.1e__ Select a small value of K, and click the button 'Generate New Training Data' a number of times. Does the graph depict: 1) low variance or high variance? 2) low bias or high bias? Explain your answers.

__3.1f__ Does a large value for K cause a) overfitting or b) underfitting? Explain your answer.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Want to learn more on the topic of model evaluation, see Raschka's <a href="https://arxiv.org/pdf/1811.12808.pdf">Model Evaluation, Model Selection, and Algorithm
Selection in Machine Learning</a> guide.
 </div>

### 3.2 The learning model

A learning model shows you how the error (i.e. difference between predicted and true response value for a given observation) of an ML model changes as the size of the training set increases or decreases. In doing so, it provides you with valuable information about how biased and/or varied your data is.

__3.2a__ Connect three learning model types (presented in Figure 1-3) to the relevant description. For example, Learning model 1 = Low bias & low variance, Learning model 2 = High bias & low variance etc.

<img src="./images/lowbiaslowvariance.png" alt="low bias & low variance" width="400">

*Figure 2. Learning model 1.*

<img src="./images/lowvariancehighbias.png" alt="high bias & low variance" width="400">

*Figure 3. Learning model 2.*

<img src="./images/highvariancelowbias.png" alt="low bias & high variance" width="400">

*Figure 4. Learning model 3.*

__Types of learning models:__

Low bias & low variance. Characteristics:

- Relatively small error
- Small difference between the error from the train and validation set.

Low bias & high variance. Characteristics:

- Relatively small training error.
- Large difference between the error from the train and validation set.
- Downward trend in validation error indicates that the model's performance will improve with the increase of data.

High bias & low variance. Characteristics:

- Relatively large training error.
- Small difference between the error from the train and validation set.
- Train and validation error diverges rapidly.

__3.2b__ The training error provides information on the performance of your ML model in terms of a) variance or b) bias. Explain your answer.

__3.2c__ The difference between the train set error and validation set provides information on the performance of your ML model in terms of a) variance or b) bias.

# 4) Daily Q&A
At 16:00, there's a online meeting you're encouraged to take part in to ask questions and to discuss our progress and reflect on today activities.

Tomorrow we will cover TOPIC!



## Resources
- [Codecademy](https://www.codecademy.com/learn/machine-learning)
