---
sort: 5
---

# Datalab 01: Classification Algorithms

We start with ... In addition, you will be made familiar with a technique called learning curves. Lastly, you will be introduced to an important pre-processing step - i.e. data encoding.

## 0) Learning Objectives:
Text:
1. ...
2. Implement, visualize, and evaluate a learning curve of a model trained on the youth care dataset (optional)
3. Apply one-hot encoding to the youth care dataset (optional)

Table of contents:
1. ...: Y hours
2.
3. Oosterhout Dataset: Classification Analysis: Z hours
4. Additional material (optional): 2 hours
   4.1. The learning curve
   4.2. Data encoding: One-hot encoding

## Questions or issues?
If you have any questions or issues regarding the course material, please first ask your peers or ask us in the in-class discussion at 16:00!


Good luck!


## 2) Yelp Regression Project
Now, we're introduced to TOPIC it's time ground down these fundamental by doing a workshop. Open the [Basics of Machine Learning course](https://www.codecademy.com/learn/machine-learning) on Codecademy and complete the first module: **Logistic Regression**.


## 3) Oosterhout Dataset: Classification
1. Create a python script called ClassificationOosterhout and save it to your GitHub repository.
2. Perform Logistic regression on Oosterhout dataset

## 4) Additional material (optional)

### 4.1 The learning curve

A learning curve, shows you how the error (i.e. difference between predicted and true response value for a given observation) of an ML model changes as the size of the training set increases or decreases. In doing so, it provides you with valuable information about how biased and/or varied your data is, and how your model copes with these two error types. For more information on the bias-variance trade-off, see Fortmann´s article.

The following questions will give you some guidance, while you are training and/or evaluation your ML model:

__2a__ Try to connect three learning curve variations (presented in Figure 1-3) to the relevant description. For example, Learning curve 1 = Low bias & low variance, Learning curve 2 = High bias & low variance etc. Being able to identify these three learning curve variations, will help you in selecting, and subsequently evaluating you ML model (e.g. logistic regression).

<img src="./images/lowbiaslowvariance.png" alt="low bias & low variance" width="400">

*Figure 1. Learning curve 1.*

<img src="./images/lowvariancehighbias.png" alt="high bias & low variance" width="400">

*Figure 2. Learning curve 2.*

<img src="./images/highvariancelowbias.png" alt="low bias & high variance" width="400">

*Figure 3. Learning curve 3.*

__Learning curve variations:__

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

__2b__ The training error provides information on the performance of your ML model in terms of a) variance or b) bias. Explain your answer.

__2c__ The difference between the train set error and validation set provides information on the performance of your ML model in terms of a) variance or b) bias. Explain your answer.

__2d__ visit the website of [scikit-learn](https://scikit-learn.org/stable/auto_examples/model_selection/plot_learning_curve.html#sphx-glr-auto-examples-model-selection-plot-learning-curve-py) for a Jupyter notebook on plotting learning curves.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: For more information on the application of learning curves, see Dataquest's <a href="https://www.dataquest.io/blog/learning-curves-machine-learning/"> Tutorial: Learning Curves for Machine Learning in Python </a>.
</div>

### 4.2 Data encoding: On-hot encoding

When you are working with a binary classifier (e.g. perceptron, logistic regression, SVM etc.) your outcome variable (i.e. y-variable) needs to be binary too! In other words, it should be comprised by only one or two possible values. For example, Pass/Fail, Profit/Loss, Cat/Dog, 0/1 etc.

If you have a outcome variable that is not binary, but you want to use a binary classifier, you can recode your categorical variable. The Python libraries scikit-learn and pandas provide  various data encoding functions.

A popular data encoding technique is one-hot encoding. It represents data in a sparse, - i.e. 'machine-readable' way. Terr and Howard (2018-2019), define the technique as follows:  

> One-hot encoding yields what people call dummy variables, boolean variables derived from a categorical variable where exactly one of the dummy variables is true for a given record. There is a new column for every categorical level. Missing category values yield 0 in each dummy variable (Parr and Howard, 2018-2019).

To illustrate the idea behind one-hot encoding they provide a simple example. See chapter 8.3 One-hot encoding Hydraulics_Flow of the book The Mechanics of Machine Learning (Terr and Howard, 2018-2019), which you can find, [here](https://mlbook.explained.ai/bulldozer-feateng.html).

When applying one-hot encoding to your dataset, you have to be aware of its drawbacks. Included, but not limited to:

- One-hot encoding makes your dataset prone to what data professionals call 'The curse of dimensionality'. This data encoding technique greatly increases the dimensions of your dataset (i.e. the number of variables), making your analysis both memory, and computationally expensive. In addition, one-hot encoding can complicate a regression task by increasing the chance of multicollinearity. This phenomenon occurs when a feature can be linearly predicted from the other features in the multiple linear regression model.
-  One-hot encoding cannot be applied to ordinal data. This specific type of data needs a dense, - i.e. 'human-readable', representation, such as a regular pandas dataframe. By creating 'dummy' variables out of the ordinal variable you will eliminate its intrinsic hierarchy.

Data decoding techniques are not limited to outcome variables, the features, i.e the predictors of your model, can also benefit from this kind of engineering:

> Creating a good model is more about feature engineering than it is about choosing the right model; well, assuming your go-to model is a good one like Random Forest. Feature engineering means improving, acquiring, and even synthesizing features that are strong predictors of your model's target variable. Synthesizing features means deriving new features from existing features or injecting features from other data sources. For example, we could synthesize the name of an apartment's New York City neighborhood from it's latitude and longitude. It doesn't matter how sophisticated our model is if we don't give it something useful to chew on. If there is no relationship to discover, because the features are not predictive, no machine learning model is going to give accurate predictions (Terr and Howard, 2018-2019).

Finally, there are even algorithms (e.g. perceptron) that only accept binary and/or continuous features as input. Then you have no choice, but to recode your categorical predictors.

__Documentation (Python):__

scikit-learn:
- [OneHotEncoder()](https://scikit-learn.org/stable/modules/preprocessing.html#preprocessing-categorical-features)
- [LabelBinarizer()](https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.LabelBinarizer.html)

pandas:

- [get_dummies()](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.get_dummies.html)

## 5) In-Class discussion
At 16:00, there's a meeting you're encouraged to take part in to ask questions and to discuss our progress and reflect on today activities.

Next week, we will start diving into Topic.

Next week, we will cover TOPIC!


## Resources
- [Codecademy](https://www.codecademy.com/learn/machine-learning)
- [The Mechanics of Machine Learning](https://mlbook.explained.ai/)
