---
sort: 7
---

# Hyperparameter Tuning

If you had successfully completed the self-study assignments until today, you should
now be familiar with the following concepts:

- [ ] Bias and variance
- [ ] Regression and classification
- [ ] Implementing common machine learning algorithms using ```scikit-learn```

In today's module, we will not be introducing a new model. Rather, we will be discussing a very important concept in machine learning: **hyperparameter tuning**. 

Recall that machine learning algorithms are essentially pattern recognition machines. However, we have noticed that they are sometimes prone to discover the wrong patterns. For example, they might be too sensitive to noise in the data, or they might be too simple to capture the underlying patterns in the data. Or they might be too complex and memorize the patterns in the training set, leading to poor performance on the test set. These can be tricky issues to deal with, and this is where hyperparameter tuning comes in.

:bell: how to pronounce "parameter". 
<br>
disclaimer: I spent 11 years pronouncing it as "Par-A-meter" as in "kilo-Meter". You might hear me pronounce it as "Par-A-meter" in the DataLab. I'm sorry. Old habits die hard. 

## Today's Learning Objectives:

- [ ] Understand hyperparameter tuning
- [ ] Tune the hyperparameters of a linear regression and decision tree algorithm.

## Questions or issues?
If you have any questions or issues regarding the course material, please first ask your peers or ask us in the Q&A in Datalab! Further, please use the review sessions on Friday to get help from your peers and the instructors.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Note down any important questions you might have!
 </div>

Good luck!


## Hyperparameter vs Model Parameters

If you imagine a machine learning algorithm as a black box, then the *hyperparameters* are the knobs and switches that you can use to adjust the behavior of the algorithm. For example, the number of neighbors in a k-nearest neighbors algorithm is a hyperparameter. The learning rate in a gradient descent algorithm is a hyperparameter. The maximum depth of a decision tree is a hyperparameter. The regularization parameter in a logistic regression algorithm is a hyperparameter.

:bell: Hyperparameters are the parameters that are not learned from the data. They are set before the training process begins and remain constant during the training process. In contrast, the model parameters of a model are the ones that are learned from the data. For example, the slope and intercept in a linear regression model are the parameters of the model.

Please watch the following video to get a better understanding of the distinction between hyperparameters and model parameters:

<iframe width="560" height="315" src="https://www.youtube.com/embed/ooKuyQhKc3Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Hyperparameter Tuning: Why is it important?

We perform hyperparameter tuning to help a machine learning model make better predictions. By adjusting the hyperparameters of a model, we can help it learn more effective patterns from the training data. This can lead to more accurate predictions and better performance on the test set. Additionally, hyperparameter tuning can help us to avoid overfitting, which is when a model performs well on the data it was trained on, but doesn't generalize well to new, unseen data. By finding the right hyperparameters, we can help the model to learn more generally, and to make better predictions on a wider range of data.

## Hyperparameter Tuning: The pipeline

Recall that the machine learning pipeline consists of the following steps:

1. Data collection, cleaning, exploration, and preparation
2. Split the data into training and test sets
3. Train the model on the training set
4. Evaluate the model on the test set

Hyperparameter tuning is a process that is performed after step 2, but before step 4. The process of hyperparameter tuning is as follows:

1. Split the data into training. validation and test sets
2. Train the model with default hyperparameters on the training set
3. Evaluate the model on the validation set
4. Adjust the hyperparameters of the model
5. Repeat steps 2-4 until the model performs well on the validation set
6. Train the model with the final hyperparameters on the training set
7. Evaluate the model on the test set.

In practice, we start by *identifying the hyperparameters* you want to tune. This will typically involve looking at the documentation for the machine learning algorithm you are using, and identifying the hyperparameters that have the biggest impact on model performance. Next, we *define a search space* for the hyperparameters. This will involve specifying the range of values that each hyperparameter can take, as well as any constraints on the relationships between different hyperparameters. Then, we *select a search algorithm*. There are many different search algorithms that can be used for hyperparameter tuning, and the choice of algorithm will depend on the specifics of your problem and the amount of computational resources you have available. Finally, we *train the model* using the search algorithm. This will involve running the search algorithm multiple times, each time training a new model with different hyperparameter values. The search algorithm will use the performance of the model on a validation set to guide the search and identify promising values for the hyperparameters. After the search algorithm has completed, we *evaluate the results* to determine the best hyperparameters for the model. We then train the model with the best hyperparameters on the training set, and evaluate the model on the test set.

There was quite some new terminology in the previous section. Let's take a look at some of the key terms:

:bell: **Validation set**: The set of data that we use to evaluate the performance of the model. The validation set is used to guide the search algorithm, and to help us to identify the best hyperparameters for the model.

:bell: **Search space**: The set of all possible hyperparameter values that we want to search over. For example, if we are tuning the number of neighbors in a k-nearest neighbors algorithm, then the search space might be the set of all integers between 1 and 100.

:bell: **Search algorithm**: The algorithm that we use to search over the search space. For example, we might use a grid search algorithm to search over a grid of hyperparameter values. Or, we might use a random search algorithm to search over a random subset of the search space.

### Validation set and Cross-Validation

The validation set is the set of data that we use to evaluate the performance of the model. The validation set is used to guide the search algorithm, and to help us to identify the best hyperparameters for the model. The general rule of thumb when it comes to the size of the validation set is that it should be large enough to provide a reliable estimate of the model's performance. However, it should be small enough to be able to run through the search algorithm in a reasonable amount of time. The size of the validation set will depend on the specifics of your problem, the size of the training set, and the computational resources that are available. In general, the validation set should be between 10% and 30% of the size of the training set. 

**A key distinction between the validation and the test set is that the test set is only used once, at the very end of the machine learning pipeline. The validation set, on the other hand, is used multiple times throughout the machine learning pipeline.**

However, in practice, one seldom uses a validation set. This is because training data is precious, and by further splitting our training data into a validation set, we are reducing the amount of data that we have to train our model. Instead, we use cross-validation to evaluate the performance of the model. 

Please watch the following video to get a better understanding of the difference between a validation set and cross-validation:

<iframe width="560" height="315" src="https://www.youtube.com/embed/zqD0lQy_w40" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<br>

:bell: Cross-validation is a technique that involves splitting the training data into multiple folds, and then training the model on all but one fold, and evaluating the model on the remaining fold. This process is repeated multiple times, with each fold being used as the validation set once. The performance of the model is then averaged across all of the folds. This process is illustrated in the following diagram:

<figure>
    <img src=".\images\sklearn_cv_fold.PNG" />
    <br> Source: Scikit-learn documentation
</figure>
<br>

### Search space

The search space is the set of all possible hyperparameter values that we want to search over. For example, if we are tuning the number of neighbors in a k-nearest neighbors algorithm, then the search space might be the set of all integers between 1 and 100. There are no pre-defined rules for how to define the search space. The search space is defined by the problem at hand, the model, and by the computational resources that are available. 

### Search algorithm

The search algorithm is the algorithm that we use to search over the search space. There are many different search algorithms that can be used for hyperparameter tuning, and the choice of algorithm will depend on the specifics of your problem and the amount of computational resources you have available. However, the most common search algorithms are Grid Search and Random Search.

:bell: **Grid search**: A grid search algorithm searches over a grid of hyperparameter values. For example, if we are tuning the number of neighbors in a k-nearest neighbors algorithm, then a grid search algorithm would search over a grid of all possible values for the number of neighbors. The grid search algorithm is a good choice if you have a small search space, and if you have a lot of computational resources available.

:bell: **Random search**: A random search algorithm searches over a random subset of the search space. For example, if we are tuning the number of neighbors in a k-nearest neighbors algorithm, then a random search algorithm would search over a random subset of all possible values for the number of neighbors. The random search algorithm is a good choice if you have a large search space, and if you have a limited amount of computational resources available.

In sum, the process of hyperparameter tuning can be represented by the following diagram:

<figure>
    <img src=".\images\sklearn_cv.PNG" />
    <br> Source: Scikit-learn documentation
</figure>
<br>


Now that we have a better understanding of the key terms and steps involved in hyperparameter tuning, let's take a look at the process of hyperparameter tuning in more detail using standard machine learning algorithms.

# Hyperparameter tuning: K Nearest Neighbors

We start with the K Nearest Neighbors algorithm because it is a simple algorithm, and it has only a few hyperparameters that we can tune. Let's break down the process of hyperparameter tuning for the K Nearest Neighbors algorithm into the following steps:

- [ ] Load the necessary libraries and modules.

```python
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
from sklearn.metrics import accuracy_score
```

- [ ] Load the data and perform any necessary preprocessing.

```python
df = pd.read_csv('<your_data>.csv')
```

- [ ] Split the data into training, validation, and test sets with a 80-20 split.

```python
# Split the data into training and test sets with 20% of the data in the test set
X_train, X_test, y_train, y_test = train_test_split(data_X, data_y, test_size=0.2, random_state=42)
```

- [ ] Define the model object.

```python   
# Define the model object
knn_model = KNeighborsClassifier()
```

- [ ] Identify the hyperparameters you want to tune.

The ```scikit-learn``` documentation for the K Nearest Neighbors algorithm lists the following hyperparameters.

<figure>
    <img src=".\images\sklearn_knn.PNG" />
    <br> Source: Scikit-learn documentation
</figure>
<br>

The ```n_neighbors``` hyperparameter is the most important hyperparameter for the K Nearest Neighbors algorithm. The ```weights``` hyperparameter does play a role, but it is not as important as the ```n_neighbors``` hyperparameter in determining model performance. The rest of the parameters are not so important, so we will not tune it.

You can also use the ```scikit-learn``` function ```get_params()``` to get a list of the hyperparameters for a model object.

```python

# Get a list of the hyperparameters for the model object
knn_model.get_params()
```

- [ ] Define a search space for the hyperparameters.

:triangular_flag_on_post: The ```n_neighbors``` hyperparameter is an integer, so we will define the search space for this hyperparameter as the set of all integers between 1 and 10. The ```weights``` hyperparameter is a string, so we will define the search space for this hyperparameter as the set of all strings ```uniform``` and ```distance```.

We do this in ```scikit-learn``` by creating a dictionary where the keys are the names of the hyperparameters, and the values are the search space for each hyperparameter.

```python
knn_search_space = {
    'n_neighbors': [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    'weights': ['uniform', 'distance']
}
```

- [ ] Select a search algorithm.

We will use a grid search algorithm to search over a grid of hyperparameter values. The grid search algorithm is a good choice if you have a small search space, and if you have a lot of computational resources available. In our case the grid search will search over a grid of 10 values for the ```n_neighbors``` hyperparameter, and a grid of 2 values for the ```weights``` hyperparameter. This means that the grid search algorithm will train 20 different models [```n_neighbors``` X ```weights```], each with a different and unique set of hyperparameter values.

This can be done in scikit-learn by using the ```GridSearchCV``` class. The ```GridSearchCV``` class takes the following arguments:

- ```estimator```: The machine learning algorithm that we want to tune the hyperparameters for. In our case this is the ```KNeighborsClassifier``` model object ```knn_model```.

- ```param_grid```: The search space for the hyperparameters. In our case this is the ```knn_search_space``` dictionary that we created above.

We also need to specify the ```scoring``` metric that we want to use to evaluate the performance of the models. In our case we will use the ```accuracy``` metric because we are using a classification algorithm.

By default, the ```GridSearchCV``` class uses 3-fold cross-validation. This means that the grid search algorithm will train 20 models, and each model will be evaluated using 3-fold cross-validation. This means that the grid search algorithm will train 60 different models [```n_neighbors``` X ```weights``` X 3-fold cross-validation].

```python
#Import GridSearchCV from scikit-learn
from sklearn.model_selection import GridSearchCV

knn_grid_search = GridSearchCV(estimator=knn_model, param_grid=knn_search_space, scoring='accuracy')
```

- [ ] Train the model using the search algorithm.

```python
knn_grid_search.fit(X_train, y_train)
```

- [ ] Evaluate the results of hyper-parameter tuning using cross-validation.

Now that we have trained 60 models using the grid search algorithm, we can evaluate the results of hyperparameter tuning using cross-validation. We can do this by using the ```best_params_``` and ```best_score_``` attributes of the ```knn_grid_search``` object. This returns the best set of hyperparameter values, and the corresponding accuracy score.

For example,

```python
knn_grid_search.best_params_
```

```python
{'n_neighbors': 8, 'weights': 'uniform'}
```
These results tell us that the best set of hyperparameter values for the K Nearest Neighbors algorithm is ```n_neighbors=8``` and ```weights=uniform```. 

- [ ] Train the model on the training set using the best set of hyperparameter values.

Now that we have used hyperparameter tuning to identify the optimal model hyperparameters, we can train the model on the training set using the best set of hyperparameter values. There are several ways to do this. One way is to simply note down the optimal hyperparameters and use them to create a new model object. For example,

```python
knn_model_tuned = KNeighborsClassifier(n_neighbors=8, weights='uniform')
knn_model_tuned.fit(X_train, y_train)
```

Another way is to use the ```best_estimator_``` attribute of the ```knn_grid_search``` object. This returns the model object that was trained using the best set of hyperparameter values; and then we train the model again. For example,

```python   
knn_model_tuned = knn_grid_search.best_estimator_
knn_model_tuned.fit(X_train, y_train)
```

Lastly, one can also use the ```refit``` argument of the ```GridSearchCV``` class to automatically train the model on the training set using the best set of hyperparameter values; and populate the ```best_estimator_``` attribute. For example,

```python   
knn_grid_search = GridSearchCV(estimator=knn_model, param_grid=knn_search_space, scoring='accuracy', refit=True)
knn_model_tuned = knn_grid_search.best_estimator_
```

- [ ] Evaluate the model on the test set.

```python
knn_model_tuned.score(X_test, y_test)
```

Congratulations! You have successfully tuned the hyperparameters of a machine learning model using cross-validation. In this tutorial we have used the grid search algorithm to tune the hyperparameters of the K Nearest Neighbors algorithm. The grid search algorithm is a good choice if you have a small search space, and if you have a lot of computational resources available. However, if you have a large search space, or if you do not have a lot of computational resources available, then you should consider using a different search algorithm (e.g., random search).

Please watch this video to recap the concepts that we have covered in this tutorial.

<iframe width="560" height="315" src="https://www.youtube.com/embed/pKxrm26ACa4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# Hyperparameter Tuning: Tree-Based Algorithms

When we are building a tree-based algorithm, we can tune the hyperparameters of the algorithm to improve the performance of the model. Similar to knn, we can use cross-validation to tune the hyperparameters of a tree-based algorithm. Please see the [documentation](https://scikit-learn.org/stable/modules/generated/sklearn.tree.DecisionTreeClassifier.html) of the tree-based algorithms in ```scikit-learn``` for a list of the hyperparameters of each algorithm.

The hyperparameters that have a large impact on the performance of a tree-based algorithm are:

:triangular_flag_on_post: ```max_depth```: This controls the depth of the tree. A large value of ```max_depth``` can lead to overfitting, and a small value of ```max_depth``` can lead to underfitting.

:triangular_flag_on_post: ```criterion```: This controls the function that is used to measure the quality of a split. The two most common functions are ```gini``` and ```entropy```.

## [OPTIONAL] Blended Learning: DataCamp
To learn more about tuning the hyperparameters of a tree-based algorithm, please complete the following course on DataCamp.

- [ ] the section **Model Tuning** in the course [Machine Learning with Tree-Based Models in Python](https://app.datacamp.com/learn/courses/machine-learning-with-tree-based-models-in-python) and uploaded the evidence to your GitHub repository and learning logs.

# Hyperparameter Tuning: Linear Regression

When we are building a linear regression algorithm, we can tune the hyperparameters of the algorithm to improve the performance of the model. Technically, this is known as regularized linear regression. 

:bell: regularized linear regression is a type of linear regression algorithm that uses a regularization term to prevent overfitting. A regularization term is a term that is added to the cost function of the linear regression algorithm. The regularization term penalizes the model for having large coefficients. This means that the regularization term encourages the model to have small coefficients, and thus prevents overfitting and improves the performance of the model.

There are two types of regularization terms that we can use when building a regularized linear regression algorithm:

:bell: L1 regularization: This is also known as Lasso Regression.

:bell: L2 regularization: This is also known as Ridge Regression.

The key difference between L1 and L2 regularization is that L1 regularization encourages the model to set some coefficients to zero, whereas L2 regularization encourages the model to have small coefficients. In practice, L1 is often used to select the most important features, and L2 is often used to improve the performance of the model.

To understand how L1 and L2 regularization work, please read through this [post](https://www.datacamp.com/tutorial/tutorial-lasso-ridge-regression).

:hourglass_flowing_sand: It is beyond the scope of today to cover the details of L1 and L2 regularization in detail. However, knowing that they exist and can be used to improve the performance of a linear regression algorithm is important.


# Preparation for the DataLab

Tomorrow in the DataLab we will continue working on the use-cases and soon, start building machine learnings models to solve the creative brief, and tune them using the concepts learned today. Please ensure that you are prepared by completing the following courses.

- [ ] the section **Hyperparameters and Parameters** and **Grid Search** in the course [Hyperparameter Tuning in Python](https://app.datacamp.com/learn/courses/hyperparameter-tuning-in-python) and upload the evidence to your GitHub repository and learning logs.
