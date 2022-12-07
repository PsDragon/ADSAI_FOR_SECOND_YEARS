---
sort: 4
---

# Supervised Learning

On Tuesday, we discovered that Machine Learning can be of two types: Supervised and Unsupervised. Further, we saw that Supervised Learning can be of two types: Classification and Regression. In this section, we will learn about Regression Algorithms.

## Today's Learning Objectives:

- [ ] Understand what is regression.
- [ ] Implement a regression algorithm modelling pipeline using ```scikit-learn```.

For today, you are expected to create a markdown file called ```RegressionAlgorithms.md``` in your ```Machine Learning``` folder in your Github repos. In this file, please answer the questions that pop-up (:pencil:) as you navigate the content below. Further Machine Learning introduces quite a bit of new terminology. Please make sure to take notes on the new terms that you encounter (:bell:). 

## Questions or issues?
If you have any questions or issues regarding the course material, please first ask your peers or ask us in the Q&A in Datalab!

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Note down any important questions you might have!
 </div>

Good luck!

## What is regression?

Regression is a machine learning algorithm used to predict the target value given an input, or a set of inputs. Regression models, whether they are linear, multiple or logistic, are a very powerful machine learning tool! In fact, if you can answer a question or predict an outcome by simply using an easy regression model, it's probably the way to go: there's no need to overly complicate you analyses.

:bell: Regression. The meaning of the word ```regress``` is to move back towards a "normal" state. According to wiki, The term "regression" was coined by Francis Galton in the 19th century to describe a biological phenomenon. The phenomenon was that the heights of descendants of tall ancestors tend to regress down towards a normal average (a phenomenon also known as regression toward the mean).

When we talk about regression in machine learning, in 9 out of 10 instances, we are talking about linear regression. Linear regression is a statistical method that allows us to summarize and study relationships between variables. In its simplest form, linear regression is a way to find the best-fitting line for a set of data points. The line is called the regression line. The regression line is the line that minimizes the sum of the squared distances between the line and the data points. The regression line is the line that minimizes the sum of the squared distances between the line and the data points.

That was a lot to take in! Let's break it down.

### Linear Regression

Linear regression refers to the art of developing machine learning models to detect linear patterns between an input (or a set of inputs) and a target variable.

:bell: A ```linear relationship``` is a relationship between two variables in which the change in one variable is proportional to the change in the other variable. For example, if you increase the amount of time you study, your test scores will increase. This is a linear relationship. The easiest way to remember this is to think of a line. If you draw a line on a two dimensional graph (X and Y) and the line is straight, then the relationship between X and Y is linear.

You might come across the terms ```simple linear regression``` and ```multiple linear regression```. 

:bell: Simple linear regression is when you have one input and one target variable. 

:bell: Multiple linear regression is when you have multiple inputs and one target variable.

In today's lesson, we will explain the theory behind regression using simple linear regression. However, the concepts are the same for multiple linear regression and this will become more clear in week 7 when we discover linear algebra

### Representing a Linear Regression model

Linear regression models are represented by the following equation:

$$y = \theta_0 + \theta_1x$$

where $y$ is the target variable, $\theta_1$ is the slope of the line, $x$ is the input variable and $\theta_o$ is the y-intercept (or bias) parameter. You might also come across instances where people replace $\theta$ with $b$. They are the same thing.

A simple linear regression model consists of two parameters:

:bell: The ```slope``` of a linear regression model is the change in the target variable for every unit change in the input variable. 

:bell: The ```y-intercept``` is the value of the target variable when the input variable is 0.

Please watch the following video to understand what a linear regression model is and how it works.

<iframe width="560" height="315" src="https://www.youtube.com/embed/kHwlB_j7Hkc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

So we have now seen that a linear regression model uses two parameters to predict the target variable. The learning algorithm therefore tries to learn a pattern that ensures that these two parameters are as close to the actual values as possible. But how do we go about this in practice, how do we pick the right pattern among a sea of infinite patterns? This is where a ```cost function``` comes in handy.

:bell: A ```cost function``` in machine learning is a function that measures how well a model is able to detect a pattern, and hence make a good prediction. If the model is able to detect a good pattern, the cost function will return a low value. If the model is not able to detect a good pattern, the cost function will return a high value. The goal of the learning algorithm is to find a pattern that minimizes the cost function. The cost function is also known as the ```loss function```. They are the same thing.

### Cost Function for regression

The cost function for linear regression is the sum of the squared differences between the predicted values and the actual values. The cost function is represented by the following equation:

$$Error = (y - \hat{y})^2$$

where $y$ is the actual or true value and $\hat{y}$ is the predicted value. Please spend a couple of minutes to understand the cost function for linear regression. You might notice that this function is essentially estimating the errors in the values predicted by the model.

:bell: The error (or residual) of a machine learning algorithm is the difference between the actual value and the predicted value. The error is generally squared to ensure that the error is always positive because we don't care if the predicted value is lower or higher than the actual value. There are also mathematical reasons for squaring the error, but we will not go into that here.

The above cost function is for a single prediction. In reality, our model needs to find patterns that minimize the cost function for all the data points. This is represented by the following equation:

$$Error = \frac{1}{n}\sum_{i=1}^{n}(y_i - \hat{y}_i)^2$$

where $y_i$ is the actual or true value and $\hat{y}_i$ is the predicted value for the $i^{th}$ data point. 

Please watch this video to understand how the cost function for regression works.

<iframe width="560" height="315" src="https://www.youtube.com/embed/yuH4iRcggMw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:pencil: Q1: In your own words, try to explain what a linear regression model is and how it works using a simple example.

### Estimating the parameters

Now that we have seen how a linear regression model is represented, and the cost function used to find the right pattern, let's see how we can estimate the parameters of the model. The learning algorithm does this by using an optimization algorithm. The optimization algorithm is the algorithm that tries to find the best values for the parameters. There are several approaches to this, but the most common one is gradient descent and the normal equations. 

:bell: Optimization algorithms are algorithms that try to find the best values for the parameters of a model. They ensure that the model learns to discover the most relevant patterns by finding parameter values that minimize the cost function. There are several optimization algorithms, but the most common ones are gradient descent and (for linear algorithms) the normal equations.

> We will discuss ```gradient descent``` in block C, and the ```normal equations``` in week 7 of this block when we learn more about linear algebra.

### Evaluating a Linear Regression model

We have now seen how a linear regression model works and how to estimate it's parameters. We are now ready to train the model on some data and evaluate it's performance. There are three metrics that are commonly used to evaluate the performance of a linear regression model:

:bell: The ```mean squared error``` is the average of the squared differences between the predicted values and the actual values. The mean squared error is represented by the following equation:

$$MSE = \frac{1}{n}\sum_{i=1}^{n}(y_i - \hat{y}_i)^2$$

:bell: The ```root mean squared error``` is the square root of the mean squared error.

The root mean squared error is more commonly used than the mean squared error because it is in the same units as the target variable. The lower the root mean squared error, the better the model is at predicting the target variable.

:bell: The ```r-squared``` is a metric that is used to measure the goodness of fit of a linear regression model. 

:pencil: Q2: Do you think it's advisable to focus on one metric rather than 3? Why or why not?

Well done! If you have made it this far, you have now completed the first part of today. You have learned quite a bit about the theory underlying a linear regression model. In the next part of this block, we will learn how to use the scikit-learn library to implement a linear regression model in Python.

:computer: :hourglass_flowing_sand: :coffee: :headphones:

## Feature Engineering

Before we start implementing a linear regression model, we first need to understand the concept of feature engineering. In this lesson, we will learn about feature engineering. 

:bell: Feature engineering is the process of transforming raw data into features that better represent the underlying problem to the predictive models, resulting in improved model accuracy on unseen data. 

A simple example of feature engineering is dealing with categorical variables. ```Scikit-learn``` does not accept categorical variables as input. So we need to convert categorical variables into numerical variables. This is known as ```one-hot encoding``` or ```dummy encoding```.

Please watch the following video to understand what feature engineering is and how it works.

<iframe width="560" height="315" src="https://www.youtube.com/embed/WXHLLO4FnZs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


## Blended Learning: Implementing Linear Regression using Scikit-Learn [2 hours]

Please complete the Regression module of [Supervised Learning with scikit-learn](https://app.datacamp.com/learn/courses/supervised-learning-with-scikit-learn){:target="_blank"}, the minimum you are expected to complete is until the section ```Regression Performance```. 

<figure>
    <img src=".\images\regressionDataCamp.PNG" />
    <figcaption></figcaption>
</figure>
<br>


## Preparation for the DataLab

Tomorrow in the DataLab we will continue working on the use-cases, and from week 5 onwards start applying Machine Learning to the creative brief. Please ensure that you are prepared.

- [ ] Completed the Regression module of [Supervised Learning with scikit-learn](https://app.datacamp.com/learn/courses/supervised-learning-with-scikit-learn){:target="_blank"} until the section ```Regression Performance```
- [ ] Completed the [writing] homework assignments and uploaded ```RegressionAlgorithms.md``` to your GitHub repository.


## Additional Resources

These are some additional resources that you can use to learn more about linear regression. 

:warning: These videos can be pretty technical and may assume a lot of prior mathematical knowledge. If you are struggling to understand the concepts covered in these videos, please do not worry. 

- [ ] [Linear Regression](https://www.youtube.com/watch?v=ZkjP5RJLQF4){:target="_blank"} by StatQuest with Josh Starmer
- [ ] [Linear Regression](https://www.youtube.com/watch?v=vCHtY6Me5FI&list=PLoROMvodv4rOzrYsAxzQyHb8n_RWNuS1e&index=9){:target="_blank"} by Stanford Online (Statistical learning).
- [ ] [Multiple Linear Regression](https://www.youtube.com/watch?v=o9hoLdylWKo&list=PLoROMvodv4rOzrYsAxzQyHb8n_RWNuS1e&index=11){:target="_blank"} by Stanford Online (Statistical learning).





