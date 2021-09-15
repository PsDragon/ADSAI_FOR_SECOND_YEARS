---
sort: 11
---

# Analysing Relationships between Variables

We start by a brief refresher to sigma notations and by revisiting correlation and applying it. Then, we're going to take a deep dive into measures of association by doing the Codecademy course into hypothesis testing in R. There's no mock assessment since we'll need our time for the course. Still, we'll apply our new knowledge tomorrow in class!

Learning objectives:
- Correlations;
- Regression analyses;



Please follow the links below to continue the class:
1. Correlations: .5 hours
2. Mock-Assessment 1: 1 hour
3. Regression: 2 hours
2. Mock-Assessment 2: 1 hour


## Questions or issues?
If you have any questions, please first ask your peers or ask us in the daily Q&A at 16:00!


Good luck!


## 0) Correlations
In this video, we will talk about data relationships and what we can learn from them. We'll focus on correlation, a coefficient that measures how two variables "move" together. We'll also introduce some good statistical terms you've probably heard of, like regression coefficient, correlation coefficient (r), and r^2. But first, we'll need to introduce a helpful way to represent continuous bivariate data - the scatter plot. The scatter plot has been called "the most useful invention in the history of statistical graphics", but that doesn't necessarily mean it can tell us everything. For example, just because two data sets move together doesn't necessarily mean one CAUSES the other. This gives us one of the essential tenets of statistics: correlation does not imply causation.
<iframe width="560" height="315" src="https://www.youtube.com/embed/GtV-VYdNt_g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The purpose of your data science project is not to do a correlational analysis in R yourself: the goal is to suggest an analysis based on your research question and data. But, if you want to go more in-depth into correlation and play around in R, I suggest doing [these excercises](https://www.r-bloggers.com/2017/04/correlation-and-correlogram-exercises/). Next year, we're going to advance our knowledge of statistics and go into hypothesis testing; for now you should just know what it means if variables are correlated.

## 1) Mock assessment 1
 Create an R Script called "CorrelationMockAssessment" and save it to your repository.

 Now, look at the following table. It displays the age and glucose level of a given subject.

| Subject | Age (X) | Glucose Level (Y) |
| ------- | -------- | ------------------- |
| 1 | 43 | 99 |
| 2 | 21 | 65 |
| 3 | 25 | 79 |
| 4 | 42 | 75 |
| 5 | 57 | 87 |
| 6 | 59 | 81 |

 1. Use [this artcile](https://www.statology.org/correlation-coefficient-by-hand/) article to calculate the Pearson Correlation Coefficient between Age X and Glucose Level Y by hand, or in R using [operators only](https://www.datamentor.io/r-programming/operator/). If you do it by hand, upload a foto of your written calculations to GitHUb instead of a script.

Save the file to your GitHub repository when you're done.

## 2) Intro to Regression
Today we're going to introduce one of the most flexible statistical tools - the General Linear Model (or GLM). GLMs allow us to create many different models to help describe the world - you see them a lot in science, economics, and politics. For example, today we're going to build a hypothetical model to look at the relationship between likes and comments on a trending YouTube video using the Regression Model. We'll be introducing other popular models over the next few episodes.
<iframe width="560" height="315" src="https://www.youtube.com/embed/WWqE7YHR4Jc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Download the R swirl course [Regression_Models](https://github.com/swirldev/swirl_courses) by running the following code in the R-studio console:
```R
swirl::install_course("Regression_Models")
```
Complete module 1.

## 3) Mock Assessment 2
 Create an R Script called "LinearRegressionMockAssessment" and save it to the GitHUb Classroom folder of the same name in your repository:

Now we're going to try to develop some analyses we can apply on our SDG Indicator dataset: preferably the data you use for your own project.
1. Formulate and justify a linear regression analysis in less than 150 words. So, we're only asking you for a comment regarding this one.

Bonus points if you actually run the analysis in R and deliver working code.


# 4) Daily Q&A
At 16:00, there's an online meeting you're encouraged to take part in to ask questions and to discuss our progress and reflect on today activities.

Tomorrow we're going to cover writing a discussion section for our conference poster!


## Resources
- [Swirl](https://swirlstats.com/help.html)
- [Learning Statistics with R, by D. Navarro (2018)](https://learningstatisticswithr.com/)
- [Discovering Statistics using R, A. Fields et al. (2012)](https://eds.b.ebscohost.com/eds/detail/detail?vid=2&sid=785a4ba4-77c1-4205-be1c-f6cd920efb78%40pdc-v-sessmgr02&bdata=JnNpdGU9ZWRzLWxpdmU%3d#AN=bus.KOHA.OAI.BUAS.28091&db=cat08862a)
