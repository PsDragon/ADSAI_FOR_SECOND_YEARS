# Machine Learning: Creative Brief Requirements

In order to solve the creative brief, you are expected to adhere to the following requirements.

## Datasets

The datasets provided to you are:

| Dataset: | Publisher: | Format | Description : |
| --- | --- | --- | --- |
| Op1 Viewer Ratings | Banijai Group/ KijkCijfers | .csv | Viewer Ratings for the Op1 show; different target groups and broadcast type  |
| Op1 Social Media Data | Twitter | .json | Twitter engagement related to the npo1 channel |
| Op1 Content Data | Banijai Group | .pkl | Op1 content related data|

In addition to the datasets mentioned above, you are free to pick any additional datasets of your choice, provided you can evidence that they add value to the business case.

## Models

You are free to pick any Machine Learning model of your choosing, provided you can evidence that it adds value to the business case and solves the problem statement.

Specifically, your final deliverable should:

- *Include* social media data, content data related to topics discussed in the show, and viewership ratings.  

- *Investigate* viewer ratings from daily talk shows and proactively research possible causes for its ongoing fluctuations.  

- *Analyse* how the relationship between higher and lower TV ratings is correlated with social media engagement (primarily using Twitter data).  

- *Design and Present* a descriptive analysis using for example, a Dashboard that explains the correlation between ratings and social media engagement of the selected TV show (Op1) during live transmission.  

- *Predict* the success of the selected TV show in the evening, basing your decision on Twitter engagement based on the topics posted on the same day and identify key content related variables that make a show a success (or lead to higher engagement on twitter).  

- *Evaluate* the performance of your model.

## Linear Algebra and Machine Learning

> This requirement is for an excellent criteria only. 

Given a linear regression model in the form of

**y** = ```beta```.**X**

Write a ```Python``` function to estimate the coefficients of a linear regression model using the normal equations.

&beta; = (X<sup>T</sup>X)<sup>-1</sup>X<sup>T</sup>Y

Where,

&beta; (beta) : vector of regression coefficients <br>
X : matrix of predictor variables. <br>
Y : vector of the outcome variable. <br>


Specifically, create a Python function ```LinReg``` which can solve for the coefficients of
a linear regression model using the normal equations.

```python
def LinReg(X, y):
    beta = <insert normal equations here>
    return(beta)
```

> hint: Use the function created above to solve the normal equations for linear regression and verify your solution with the standard implementation in scikit-learn.

> hint: how would you include the intercept in the beta matrix?


## Deliverable(s)

The Jupyter notebooks or .py scripts are to be uploaded to Github no later than 5pm on last data lab day. Confer with a lecturer beforehand if you're handing in something other than Jupyter notebook or .py scripts.

## References
<a id="1">[1]</a>
<https://scikit-learn.org/stable/user_guide.html>
<br>
<a id="2">[2]</a>
<https://www.analyticsvidhya.com/blog/2020/04/how-to-read-common-file-formats-python/>
<br>
