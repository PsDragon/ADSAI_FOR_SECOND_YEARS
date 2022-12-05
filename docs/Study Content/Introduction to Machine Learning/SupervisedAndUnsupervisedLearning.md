---
sort: 1
---

# Machine Learning

Welcome to the module on Machine Learning. In this module, first you will learn about the basics of Machine Learning and the different classes of Machine Learning algorithms. Next we will dive into the different types of Machine Learning algorithms in each class. Finally, you will learn how to implement, train, and test Machine Learning algorithms using Python, in particular using the ```scikit-learn``` library.


## Today's Learning Objectives:

- [ ] Understand what is Machine Learning.
- [ ] Understand the different classes of Machine Learning algorithms.
- [ ] Implement a simple Machine Learning modelling pipeline using ```scikit-learn```.

For today, you are expected to create a markdown file called ```IntroductionToMachineLearning.md``` in your ```Machine Learning``` folder in your Github repos. In this file, please answer the questions that pop-up (:pencil:) as you navigate the content below. Further Machine Learning introduces quite a bit of new terminology. Please make sure to take notes on the new terms that you encounter (:bell:). 

:bell: Career Tip: You can also use the [Machine Learning Glossary](https://developers.google.com/machine-learning/glossary){:target="_blank"} to look up the meaning of the terms that you encounter.

## Questions or issues?
If you have any questions or issues regarding the course material, please first ask your peers or ask us in the Q&A in DataLab!

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Note down any important questions you might have in your notes document in the assignment folder!
 </div>

Good luck and enjoy your journey into the world of Machine Learning and AI!


## What is Machine Learning?

Machine Learning is a subfield of Artificial Intelligence (AI) that focuses on the development of computer programs that can access data and use it to learn for themselves. Machine Learning is a very broad field and there are many different types of Machine Learning algorithms. From spam filters and self-driving cars, to cutting edge medical diagnosis and real-time language translation, there has been an increasing need for our computers to learn from data and apply that knowledge to make predictions and decisions. This is the heart of machine learning which sits inside the more ambitious goal of artificial intelligence. In simple terms, Machine Learning is the science of getting computers to make a prediction about an outcome without being explicitly programmed.

Please watch the following video to learn more about Machine Learning and answer the questions that follow.

<iframe width="560" height="315" src="https://www.youtube.com/embed/US2NMUfn1tQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:pencil: Q1. What is Machine Learning? <br>
:pencil: Q2. How is Machine Learning different from traditional programming?

Before we being with developing a solution based on Machine Learning, first we need to decide if the problem we are trying to solve requires machine learning or not. In simpler terms, when is Machine Learning useful? When is it not useful? Let's take a look at the following video to understand this better.

<iframe width="560" height="315" src="https://www.youtube.com/embed/8nZCGG9IcMQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:pencil: Q3. When is Machine Learning useful? Try to summarize the video in your own words, and give an example of a problem that can be solved using Machine Learning, and an example of a problem that can be solved using traditional programming

You might have come across the term ```patterns``` in the video above. This raises the questions **What are patterns?** Are there some patterns that are better than others? 

Let's start with a simple example. Suppose you are given a dataset of 1000 images of cats and dogs. You are asked to build a model that can classify an image as a cat or a dog. How would you go about doing this? 

:bell: The example images you use to train a machine learning algorithm is called the ```training set```. 

One way to do this is to look at each image and try to find some patterns that can help you classify the image. For example, you might notice that the images of cats have a certain shape, size, and color, while the images of dogs have a different shape, size, and color. You might also notice that the images of cats have a certain background, while the images of dogs have a different background. These are some patterns that you can use to classify the images.

:pencil: Q4. In the example provided, one of the patterns mentioned is the background of the image. Do you feel that this is a useful pattern for Machine Learning and AI to learn as a key feature that distinguishes dogs from cats? If you had to choose one pattern that is most useful to learn what separates dogs from cats, what would it be, and why?

To understand more about the different types of patterns that Machine Learning algorithms can find, please watch the following video. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/lOI0Gs_t6cQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We have now learned that a pattern is a regularity in the data that Machine Learning algorithms can learn. It is a characteristic that can be either be used to distinguish between different classes of data or help make predictions on future data. In the coming days, we will learn about the different types of patterns that Machine Learning algorithms can learn and exploit when it comes to making predictions and decisions. 

:bell: You might have come across the term ```models``` in the video above. A model is machine learning terminology for a mathematical representation of a pattern. In the coming days, we will learn about the different types of models that Machine Learning algorithms can find.

We have now seen that Machine Learning is the art of developing algorithms that can find patterns in data with the goal to predict an outcome. However, this raises the question **How do we know if the machine learning algorithm has found a good pattern?** In other words, how do we know if the algorithm has found a good model? Using the example of classifying images of cats and dogs, how much confidence do I have in the model to accurately classify an image it has never seen before as a cat or a dog? This is where the concept of ```evaluating``` machine learning comes in.

:bell: Evaluating or Testing Machine Learning algorithms often requires the use of an additional source of data. This is termed the ```test set```. 

Generally speaking, the test set and the training set are from the same dataset. In the above example of classifying images of cats and dogs using 1000 images, we can split the dataset into two parts, a training set (800 images) and a test set (200 images). The training set will be used to train the machine learning algorithm, and the test set will be used to evaluate the performance of the machine learning algorithm.

:pencil: Q5. What is the purpose of a test set, and can you think of any other way to evaluate the performance of a machine learning algorithm?

<mark>To summarize, Machine learning is the art of developing algorithms to exploit patterns in existing data to accurately make predictions on brand new data.</mark> 

:pencil: Q6. Do you agree with the statement that machine learning is an art? Please justify your answer.<br>

> While distinguishing between images of cats and dogs may seem trivially easy for a human, and you may be wondering why even bother, but developing a machine learning algorithm to do this is a pretty difficult task. Here's an example of a state of the art machine learning algorithm that can distinguish between images of cats and dogs with a very high accuracy.

<iframe width="560" height="315" src="https://www.youtube.com/embed/nq7_ZYJPWf0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

> The above video shows a machine learning algorithm that can distinguish between images of cats and dogs using a class of machine learning algorithms known as ```Convolutional Neural Networks (CNNs)```. We will learn more about CNNs in block C. But please note that irrespective of how complex the problem and the algorithm, we are still very much in the business of finding patterns in a training set and using those patterns to make predictions on a test set.


## Types of Machine Learning Algorithms

In the previous section, we learned that Machine Learning is the art of developing algorithms. In this section, we will learn about the different types of Machine Learning algorithms.

### Supervised Learning

Supervised learning is the most common type of machine learning. In supervised learning, the training set contains the correct answers for each example. The goal of the machine learning algorithm is to find patterns in the training set that can be used to predict the correct answer for new examples.

:bell: The correct answer for each example in the training set is either called the ```class label``` in case they are discrete categories or ```target variables``` in case of numerical examples. You might also come across the term ```response variable``` or ```dependent variable```. They all mean the same thing.

:bell: The examples used to predict the target are also called ```features``` or ```independent variables```. You might also come across the term ```inputs```. They all mean the same thing.

### Unsupervised Learning

Unsupervised learning is a type of machine learning where the training set does not contain the correct answers for each example. The goal of the machine learning algorithm is to find patterns in the training set that can be used to group the examples into different classes.

Please watch the following video to learn more about supervised and unsupervised learning.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/W01tIRP_Rqs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

:pencil: Q7. You are asked to develop a machine learning system to predict if a given X-Ray image contains a tumour or not. Would you approach this problem with a supervised learning approach, or unsupervised. Please justify your choice of an answer.<br>

:pencil: Q8. You are asked to develop a machine learning system to group the different neighbourhoods of Breda into developed and underdeveloped clusters. Would you approach this problem with a supervised learning approach, or unsupervised. Please justify your choice of an answer.<br>

## Reinforcement Learning

Reinforcement learning is a type of machine learning where the machine learning algorithm learns by interacting with its environment. The goal of the machine learning algorithm is to find patterns in the training set that can be used to maximize the reward it receives from its environment.

> Reinforcement learning is a very powerful type of machine learning commonly associated with Robotics. We will not be covering reinforcement learning in this course. You will learn more about reinforcement learning in Block B of Year 2. However, if you are interested in learning more about reinforcement learning, please watch the following video.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/2xATEwcRpy8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

:pencil: Q9. Please provide an example of a problem that uses Reinforcement learning. Attach links and videos to your answer.<br>

## Fun fact

One of the simpler patterns that machine learning algorithms try to exploit is the correlation. A correlation coefficient tells you something about how "the variables move together" i.e. does one variable change(increase/decrease) when the other variable changes (increases/decreases). For example, if you have a dataset of the number of hours a student studies and the final exam score, you can plot the data on a graph and see if there is a correlation between the number of hours studied and the final exam score. If there is a strong correlation, then you can use this pattern to predict the final exam score of a student based on the number of hours they study. This would still be an example of machine learning, but it would be a very simple example.

:pencil: Q10. What is a correlation coefficient? What does it tell you about the relationship between two variables? <br>
:pencil: Q11. Note down your high score in the [Guess the correlation](http://guessthecorrelation.com/){:target="_blank"} **in your mentor channel on teams**. Create a leaderboard and let's see who can get the highest score.


## Scikit-learn: The modelling pipeline

Now that we have understood the basics of machine learning, we are ready to learn about how to implement machine learning algorithms in Python using the ```scikit-learn``` library.
Scikit-learn is a Python library that provides a wide range of machine learning algorithms. It also provides a common interface for all the machine learning algorithms. This means that once you learn how to use scikit-learn, you can use any machine learning algorithm in scikit-learn with the same interface. This is very useful as it allows you to easily compare the performance of different machine learning algorithms.

For today, we will re-visit out famous dataset: The titanic dataset. We will use this dataset to predict the chances of survival. We will use the following steps to implement machine learning in Python using scikit-learn.

- [ ] Load the dataset
- [ ] Split the dataset into training and test sets
- [ ] Create a machine learning model
- [ ] Train the model using the training set
- [ ] Evaluate the model using the test set

Please click [here](https://code.visualstudio.com/docs/datascience/data-science-tutorial){:target="_blank"} and follow the instructions provided to run your first (or second by now) machine learning model in Python using scikit-learn! 

Make a note of the following commands:

- ```from sklearn.model_selection import train_test_split```
- ```from sklearn.linear_model import <modelname>```
- ```model_object = <modelname>()```    
- ```model_object.fit(X_train, y_train)```
- ```model_object.predict(X_test)```
- ```model_object.score(X_test, y_test)```

(:bell:) Career Tip: You can also use the [Scikit-learn cheat sheet](https://www.codecademy.com/courses/machine-learning/articles/scikit-learn-cheatsheet){:target="_blank"} to look up the different model APIs and the operations you can perform on them.

:pencil: Q12. What is the accuracy of your model? Report the accuracy on the training as well as test set <br>
:pencil: Q13. What is the difference between the accuracy on the training and test set? What do you observe?<br>
:pencil: Q14. In your own words, what is the difference between ```model_object.fit()``` and ```model_object.predict```<br>
:pencil: Q15. Do you think your Model does a good job when it comes to predicting new data?<br>


# Creative Brief: Machine Learning

Recall that the creative brief for this block is:

**Specifically, the goal for this block is to <mark>develop a model that predicts viewer ratings (using Twitter and content data, and any additional data you can collect) using Machine Learning Algorithms</mark> and write a report on it. Additionally, the report should contain a section on AI ethics using the knowledge acquired during this block.**

:pencil: Q16. Is this a form of supervised or unsupervised learning? Why?<br>
:pencil: Q17. What is the target variable?<br>
:pencil: Q18. Please try to list out some variables that you feel can be used to predict the target variable (be creative and do not restrict yourselves to the data at hand)<br>

# Blended Learning: DataCamp [2 hours]

Please complete the following course on DataCamp. This course is  mandatory.

- [ ] [Understanding Machine Learning](https://app.datacamp.com/learn/courses/understanding-machine-learning){:target="_blank"}

:+1: That's it for today! 
