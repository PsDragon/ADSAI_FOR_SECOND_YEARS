---
sort: 2
---

# Supervised Learning

Yesterday, we discovered that Machine Learning can be of two types: Supervised and Unsupervised. Today, we will be looking at Supervised Learning in detail.

For today, you are expected to create a markdown file called ```ClassificationAlgorithms.md``` in your ```Machine Learning``` folder in your Github repos. In this file, please answer the questions that pop-up (:pencil:) as you navigate the content below. Further Machine Learning introduces quite a bit of new terminology. Please make sure to take notes on the new terms that you encounter (:bell:). 

## What is Supervised Learning?

Supervised Learning is a type of Machine Learning where the data is labelled. In other words, the data is already classified into different categories or a numerical target value is provided. The model is trained on this labelled data and then it is used to predict the output for new data.

## Types of Supervised Learning

Supervised Learning can be of two types: Classification and Regression.

### Classification

Classification is a type of Supervised Learning where the output is a category. For example, given a picture of a dog, the model should be able to predict whether it is a Labrador, a Poodle, a German Shepherd, etc. In other words, the output is a discrete value. Or in other words, the output is a **class label**.

### Regression

Regression is a type of Supervised Learning where the output is a continuous value. For example, given the size of a house, the model should be able to predict its price. In other words, the output is a continuous **target value**.

:pencil: Q1. Yesterday, you identified if your creative brief requires a supervised or unsupervised learning algorithm. If you picked supervised, what type of supervised learning model is required to predict the outcome - viewer ratings? (classification or regression)

Today's lesson is about Classification. We will be looking at Regression in the next lesson.

# Learning Objectives

- [ ] Understand classification algorithms, in particular kNN.
- [ ] Understand the bias-variance tradeoff.



# Classifications Algorithms: K Nearest Neighbors

## What is kNN?

kNN is a classification algorithm that is used to classify data points based on their similarity to other data points. This is one of the easiest machine learning algorithms to train, because there is no real "training" or "learning". The model simply stores the training data and then uses it to classify new data points. When the model is asked to classify a new data point, it looks at the k nearest data points in the training data and then assigns the new data point to the class that is most common among the k nearest data points.

## How does kNN work?

Let's say we have a data set where the class labels are colours. Each point is either red or blue. We want to classify a new point. We can do this by looking at the k nearest points to the new point and then assigning the new point to the class that is most common among the k nearest points. For example, if k = 3, then we look at the 3 nearest points to the new point and then assign the new point to the class that is most common among the 3 nearest points. If 2 of the 3 nearest points are red and 1 is blue, then we assign the new point to the red class.

Please watch this video to understand kNN better.

<iframe width="560" height="315" src="https://www.youtube.com/embed/0p0o5cmgLdE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## How do we choose k?

As you may have noticed in the above video, the choice of k is very important.
The value of k is what we call a hyperparameter. 

:bell: A hyperparameter is a parameter that can be tweaked to improve a model's performance. In simpler terms, recall that machine learning models are just pattern recognizing machines. A hyperparameter is best understood as a know or a lever that can tweaked to help the model recognize patterns better (or patterns that are more useful to us). Tweaking the values of a hyperparameter is called hyperparameter tuning. 


There are several ways of choosing k. We can choose k by looking at the data and using our 'gut feelings'. If the data is very noisy such that it's hard for us to detect any useful patterns in the data, then we should choose a small value of k. If the data is very smooth and there is a pattern that clearly distinguishes the two classes, then we can choose a larger value of k. We can also choose k by looking at the bias-variance tradeoff. This is a more principled approach to hyperparameter tuning. We will learn about this later today.

## Assignment: kNN - the value of k

In this assignment, you will use knn to build a classifier. In order to do so, please follow the steps below:

1. In your Machine Learning folders (on github), create a new folder and name it ```Classification```.
2. In this folder, create a new Jupyter Notebook and name it `classification_knn.ipynb`.
2. Import the following packages `numpy`, `pandas`, `matplotlib`, `seaborn`, `scikit-learn`. Importing these packages is a good way to check if they are installed (if you are in an anaconda dev env, they are installed by default). 

> Hint: You can use the `pip` command to install these packages. For example, `pip install scikit-learn` will install the `scikit-learn` package. 

3. Follow the steps provided [here](https://www.datacamp.com/tutorial/k-nearest-neighbor-classification-scikit-learn){:target="_blank"} and copy the provided code into your notebook.

Answer the following questions:

:pencil: Q2. Can you comment on the relationship between the value of k and the accuracy of the model? Hint: check what happens when k is relatively small and when k is relatively large.

## Blended Learning: DataCamp [2 hours]

Please complete the following mandatory module on DataCamp:

- [ ] The Classification module of [Machine Learning with scikit-learn](https://app.datacamp.com/learn/courses/machine-learning-with-scikit-learn){:target="_blank"}

Please click next to continue to the lesson on the Bias-variance tradeoff.

