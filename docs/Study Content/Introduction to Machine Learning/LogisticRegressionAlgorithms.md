---
sort: 5
---

# Logistic Regression Algorithms

Last week we discovered the foundational concepts underlying machine learning, in particular - supervised learning. 
We then learned about the two main types of supervised learning - classification and regression. We took a good look at the linear regression algorithm and how it works. Today we will focus our attention on the logistic regression algorithm - one of the most popular classification algorithms.

## Today's Learning Objectives:

- [ ] Understand logistic regression and how it works.
- [ ] Implement a logistic regression algorithm modelling pipeline using ```scikit-learn```.

For today, you are expected to create a markdown file called ```LogisticRegressionAlgorithms.md``` in your ```Machine Learning``` folder in your Github repos. In this file, please answer the questions that pop-up (:pencil:) as you navigate the content below. Further Machine Learning introduces quite a bit of new terminology. Please make sure to take notes on the new terms that you encounter (:bell:). 

## Questions or issues?
If you have any questions or issues regarding the course material, please first ask your peers or ask us in the Q&A in Datalab! Further, please use the review sessions on Friday to get help from your peers and the instructors.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Note down any important questions you might have!
 </div>

Good luck!

## What is Logistic regression?

Logistic regression is a classification algorithm used to predict a binary outcome (1 or 0, True or False, Yes or No) given a set of independent variables. However, didn't we just learn last week that regression models are used to predict a continuous target value?! Yes, we did. 

:bell: Logistic **regression** while being a classification model used to predict a class label is also a regression model. Why? Because it uses a regression technique to predict the probability of a class label. In simpler terms, a logistic regression model outputs a probability between 0 and 1, and based on that probability, we can classify the data point into a class. This will become more clear as we progress through the lesson. 

Please watch this video to refresh your understanding of the difference between classification and regression.

<iframe width="560" height="315" src="https://www.youtube.com/embed/0bR976Hd3bE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:pencil: Q1: What are the differences between classification and regression? Think in terms of the type of target variable and the type of output that the model produces. As you learn more about classification today, try to add more points that help you clearly distinguish between classification and regression.

## How does logistic regression work?

Logistic regression works by estimating the probabilities using a logistic or sigmoid function, hence the name logistic regression. The logistic function is a sigmoid function that takes in a real value and outputs a value between 0 and 1. The formula for the logistic function is as follows:

$$p = \frac{1}{1+e^{-(\theta_0 + \theta_1x)}}$$

That's some pretty complicated looking math. Don't worry, we have a video that helps!

<iframe width="560" height="315" src="https://www.youtube.com/embed/3nmAA30MDFg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

:bell: The logistic function is also known as the sigmoid function. This functions is used to ensure that the output of the logistic regression model is between 0 and 1.

You might notice that the logistic regression function contains a parameter called $$\theta_0$$ and $$\theta_1$$. These are the same parameters that we saw in the linear regression model. in sum, the logistic regression model is a linear regression model with a logistic function applied to the output.

Please watch this video to understand why it's essential to use the logistic function, in place of only using linear regression.

<iframe width="560" height="315" src="https://www.youtube.com/embed/HsXd8d5DILQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Evaluating a logistic regression model

For linear regression, we came across some metrics that can be used to evaluate the performance of a linear regression model. These metrics include:

- Mean Squared Error (MSE)
- Mean Absolute Error (MAE)
- Root Mean Squared Error (RMSE)
- r-squared (R2)
- ...

However, these metrics are not suitable for evaluating a logistic regression model. This is because the output of a logistic regression model is a probability between 0 and 1. This means that the output of a logistic regression model is not a continuous value. Therefore, we need to use metrics that can evaluate the performance of a classification model, in simple terms, a metric that can quantify how many of the true 1's and 0's were correctly classified.

The most common metrics used to evaluate the performance of a classification model are:

- Accuracy
- Precision
- Recall
- F1 score
- ROC AUC
- ...

We will discuss these metrics in more detail in Block C when you focus on image classification. For now let's focus on the metric **accuracy**.

:bell: The accuracy of a logistic regression model is the number of correct predictions divided by the total number of predictions. If we have 100 predictions and 90 of them are correct, then the accuracy of the model is 90%.

While accuracy does help us understand if the model is doing a good job in exploiting the patterns present in the data, it fails to help us understand the context. Let's use an example to understand this better.

Assume that you are building a binary classification algorithm using logistic regression to predict whether a given x-ray image has a tumour or not. The test dataset contains 1000 images, 900 of which do not have a tumour and 100 of which do have a tumour. We build a classifier that predicts that all the images do not have a tumour. 

:pencil: Q2: What is the accuracy of this classifier? <br>
:pencil: Q3: Is this a good classifier? Why or why not? <br>
:pencil: Q4: Using this ML model, your doctor informs you that you *do not* have a tumour, what would you do? Would you trust the doctor? Why or why not? <br>
:pencil: Q4: What additional information can the doctor provide regarding the model that will help you gain trust in it's decision?<br>

Please watch this video to help answer the questions above.

<iframe width="560" height="315" src="https://www.youtube.com/embed/BYQQlCVt4aE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

You may have noticed that the video introduces terms such as **precision** and **recall**. These are two of the most common metrics used to evaluate the performance of a classification model. In the above example, the accuracy of the model is 90%. However, this is a pretty dumb (and dangerous) model because it fails to detect tumours in images which do have a tumour in reality. However, **90% accuracy does have a nice ring to it! :smile:**

This is where precision and recall come in. Precision and recall are two metrics that help us understand the context of the model's performance.

:bell: Precision is the number of true positives divided by the total number of positive predictions. It is therefore the proportion of positive prediction that are actually correct. It is also known as sensitivity.

:bell: Recall is the number of true positives divided by the total number of actual positives. It is therefore the proportion of actual positives that are correctly predicted. It is also known as specificity.

While this can be confusing at first read, using a confusion matrix can help us understand these metrics better. 

:bell: A confusion matrix is a table that is used to describe the performance of a classification model on a set of test data for which the true values are known. 

The confusion matrix for the above example (the x-ray classifier) is as follows:

| | Predicted no_tumour | Predicted tumour |
| --- | --- | --- |
| Actual no_tumour | 900 | 0 |
| Actual tumour | 100 | 0 |

The confusion matrix is a 2x2 matrix because we are dealing with a binary classification problem.  More generally, a 2X2 confusion matrix is represented as:

| | Predicted class 0 | Predicted class 1 |
| --- | --- | --- |
| Actual class 0 | True Positive (TP) | False Positive (FP) |
| Actual class 1 | False Negative (FN) | True Negative (TN) |

The formula for precision and recall are as follows:

$$Precision = \frac{TP}{TP + FP}$$

$$Recall = \frac{TP}{TP + FN}$$

Please watch this video to understand how to interpret a confusion matrix.

<iframe width="560" height="315" src="https://www.youtube.com/embed/7MVWM8tQhYY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


:pencil: Q5: Using our x-ray classifier confusion matrix, what is the precision of this classifier? <br>
:pencil: Q6: Using our x-ray classifier confusion matrix, what is the recall of this classifier? <br>
:pencil: Q7: Now that you know that accuracy alone doesn't help, what additional information can the doctor provide regarding the model that will help you gain trust in it's decision?<br>


Well done! If you have made it this far, you have now completed the theory for today. You have learned quite a bit about the theory underlying a logistic regression model. In the next part of this block, we will learn how to use the scikit-learn library to implement a linear regression model in Python. 

For an example of how to use scikit-learn to implement a logistic regression model, please click [here](https://www.datacamp.com/tutorial/understanding-logistic-regression-python).

> Please note that we will go deeper into building and evaluating classification models in Block C. The focus of this block remains regression.

:computer: :hourglass_flowing_sand: :coffee: :headphones:


## Assignment: Making Friends with Machine Learning

To solve this assignment:

- [ ] Open the Block B notes document in your Block B assignment on teams.
- [ ] On a new page, add the heading "Assignment: Making Friends with Machine Learning".
- [ ] Ensure that you have your favourite snacks and drinks ready.
- [ ] Watch the video below.
- [ ] Note down the top 5 learning points you learned from the video. Please ensure that you write these in your own words and not copy-paste from the video. Furthermore, please ensure that you write at least a couple of sentences for each point, explaining why you consider it to be important.

<iframe width="560" height="315" src="https://www.youtube.com/embed/lYWt-aCnE2U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## That's all for today!

Please remember to upload your ```LogisticRegressionAlgorithms.md``` to Github.
Tomorrow we learn more about trees and forests. To get started early, please watch the following video.

<iframe width="560" height="315" src="https://www.youtube.com/embed/5dif4MtOkv4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



