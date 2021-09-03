---
sort: 15
---
# Block B: A primer
Today is a sneak peek into the next block: an introduction to machine learning and all kinds of regression and classification fun. So, today we'll explore linear regression models and machine learning models. First, there are video and text explanations followed by some exercises and a short mock-exam.


Learning objectives:
- Test Statistics: confidence intervals, p-values and ;
- Machine learning primer
- What happens when predictions fail;
- What happens when predictions succeed.

Table of contents:
1. Test Statistics: 2 hours
2. Machine learning: 1 hours
3. Mock Assessment: 1 hour


Good luck!


## 0) Test Statistics
Test statistics allow you to see how relieable your analysis actually is: are the result significatn; or likely to be true?

Confidence intervals allow us to quantify our uncertainty by defining a range of values for our predictions and assigning a likelihood that something falls within that range. And confidence intervals come up a lot like when you get delivery windows for packages, during elections when pollsters cite margin of errors, and we use them instinctively in everyday decisions. But confidence intervals also demonstrate the tradeoff of accuracy for precision - the greater our confidence, usually the less useful our range becomes.    
<iframe width="560" height="315" src="https://www.youtube.com/embed/yDEvXB6ApWc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Today we're going to begin our three-part unit on p-values. This episode discusses Null Hypothesis Significance Testing (or NHST), a framework for comparing two sets of information. In NHST, we assume that there is no difference between the two things we are observing and use our p-value as a predetermined cutoff for if something seems sufficiently rare or not to allow us to reject that these two observations are the same. This p-value tells us if something is statistically significant, but as you'll see that doesn't necessarily mean the information is significant or meaningful to you.
<iframe width="560" height="315" src="https://www.youtube.com/embed/bf3egy7TQ2Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We introduced p-values as a way to set a predetermined cutoff when testing if something seems unusual enough to reject our null hypothesis - that they are the same. But today, we're going to discuss some problems with the logic of p-values. Specifically, how they are commonly misinterpreted, how p-values don't give us exactly what we want to know, and how that cutoff is arbitrary - and arguably not stringent enough in some scenarios.  
<iframe width="560" height="315" src="https://www.youtube.com/embed/PPD8lER8ju4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We're going to finish up our discussion of p-values by looking at how they can get it wrong, and what we can do to minimise those errors. Finally, we'll discuss Type 1 (when we think we've detected an effect, but there actually isn't one) and Type 2 (when there was an effect we didn't see) errors and introduce statistical power - which tells us the chance of detecting an effect if there is one.
<iframe width="560" height="315" src="https://www.youtube.com/embed/WWagtGT1zH4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



## 2) Intro to machine learning
We've talked a lot about modelling data and making inferences about it. Today we're going to look towards the future at how machine learning is being used to build models to predict future outcomes. We'll discuss three popular types of supervised machine learning models: Logistic Regression, Linear discriminant Analysis (or LDA) and K Nearest Neighbors (or KNN).
<iframe width="560" height="315" src="https://www.youtube.com/embed/jmLid2x9eKg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Next up, we will discuss how machine learning can be used to group and label information even if those labels don't exist. Finally, we'll explore two types of clustering used in Unsupervised Machine Learning: k-means and Hierarchical clustering, and show how they can be used in many ways - from book suggestions and medical interventions to giving people better deals on pizza!
<iframe width="560" height="315" src="https://www.youtube.com/embed/IUn8k5zSI6g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



## 3) Mock Assessment
 Create an R Script called IntroIntoRegressionAndMachineLearning_[YourNameHere] and save it to the GitHUb Classroom folder of the same name in your repository:

Now we're going to try to develop some analyses we can apply on our SDG Indicator dataset: preferably the data you use for your own project.
1. Formulate and justify a linear regression analysis in less than 150 words.
2. Propose a machine learning analysis in less than 150 words.

Bonus points if you actually run the analysis in R and deliver working code.



## Questions or issues?
In case you have any questions please first ask your peers or send us a message on teams instead!

## Resources
- [https://swirlstats.com/students.html](https://swirlstats.com/students.html)
- [Swirl](https://swirlstats.com/help.html)
- http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html
- Learning Statistics with R, by D. Navarro (2018):  https://learningstatisticswithr.com/  
- Discovering Statistics using R, A. Fields et al. (2012): https://uk.sagepub.com/en-gb/eur/discovering-statistics-using-r/book236067  
