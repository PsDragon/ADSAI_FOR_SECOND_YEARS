---
sort: 12
---

# Analysing Relationships between Variables

We start by a brief refresher to correlation and applying it. Then, we're going to take a deep dive into measures of association by doing the Datacamp course into hypothesis testing in R. There's are 2 Datalab Preparation sections this time to prepare us for applying our new knowledge tomorrow in class!

Learning objectives:
- Correlations;
- Regression analyses.



Please follow the links below to continue the class:
1. Correlations: .5 hours
2. Datalab Preparation 1: 1 hour
3. Regression: 2 hours
2. Datalab Preparation 2: 1 hour


## Questions or issues?

If you have questions or issues regarding the course material, please fill out the 'How Can We Help?' form under the section ['Ask me anything'](https://adsai.buas.nl/Contact%20Us/). A member of our teaching staff will respond as soon as possible.

***


## 0) Workshop
First, it's time for the [the workshop part](https://app.datacamp.com/learn/courses/intermediate-data-modeling-in-power-bi) of this class to expand our data modeling skills in Power BI so we can better write the discussion section. Complete the entire course and upload the certificate to github, reference the certificate in your learning log for this week.

If you get stuck, first ask your peers and then us!

The purpose of your data science project is not to do a correlational analysis in R yourself: the goal is to suggest an analysis based on your research question and data. But, if you want to go more in-depth into correlation and play around in R, I suggest doing [these excercises](https://www.r-bloggers.com/2017/04/correlation-and-correlogram-exercises/). Next year, we're going to advance our knowledge of statistics and go into hypothesis testing; for now you should just know what it means if variables are correlated.

## 1) Correlations
In this video, we will talk about data relationships and what we can learn from them. We'll focus on correlation, a coefficient that measures how two variables "move" together. We'll also introduce some good statistical terms you've probably heard of, like regression coefficient, correlation coefficient (r), and r^2. But first, we'll need to introduce a helpful way to represent continuous bivariate data - the scatter plot. The scatter plot has been called "the most useful invention in the history of statistical graphics", but that doesn't necessarily mean it can tell us everything. For example, just because two data sets move together doesn't necessarily mean one CAUSES the other. This gives us one of the essential tenets of statistics: correlation does not imply causation.
<iframe width="560" height="315" src="https://www.youtube.com/embed/GtV-VYdNt_g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The purpose of your data science project is not to do a correlational analysis in R yourself: the goal is to suggest an analysis based on your research question and data. But, if you want to go more in-depth into correlation and play around in R, I suggest doing [these excercises](https://www.r-bloggers.com/2017/04/correlation-and-correlogram-exercises/). You can also follow [this step plan for Power BI](https://www.mssqltips.com/sqlservertip/5197/correlation-analysis-using-correlation-plot-in-power-bi-desktop/. Next year, we're going to advance our knowledge of statistics and go into hypothesis testing; for now you should just know what it means if variables are correlated.


### A) Datalab Preparation 1
 Create an Power BI file called "CorrelationDatalabPreparation" and save it to your repository, or a piece of paper..

 1. Now, look at the following table. It displays the age and glucose level of a given subject.

| Subject | Age (X) | Glucose Level (Y) |
| ------- | -------- | ------------------- |
| 1 | 43 | 99 |
| 2 | 21 | 65 |
| 3 | 25 | 79 |
| 4 | 42 | 75 |
| 5 | 57 | 87 |
| 6 | 59 | 81 |

**Create a table for the data if using Power BI.&&

 1. Use [this artcile](https://www.statology.org/correlation-coefficient-by-hand/) article to **calculate the Pearson Correlation Coefficient between Age X and Glucose Level Y** by hand, or [in Power BI using DAX](https://www.youtube.com/watch?v=xtRXakHARZg&ab_channel=Curbal) or . If you do it by hand, upload a foto of your written calculations to GitHUb instead of a .pbix file.

Save the file to your GitHub repository when you're done.

## 2) Intro to Regression
Today we're going to introduce one of the most flexible statistical tools - the General Linear Model (or GLM). GLMs allow us to create many different models to help describe the world - you see them a lot in science, economics, and politics. For example, today we're going to build a hypothetical model to look at the relationship between likes and comments on a trending YouTube video using the Regression Model. We'll be introducing other popular models over the next few episodes.
<iframe width="560" height="315" src="https://www.youtube.com/embed/WWqE7YHR4Jc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### B) Datalab Preparation 2
 Create an .pbix file called "LinearRegressionDatalabPreparation" and save it to your the GitHUb.

Now we're going to try to develop some analyses we can apply on our SDG Indicator dataset: preferably the data you use for your own project.
1. Formulate and justify a linear regression analysis in less than 150 words. So, we're only asking you for a comment regarding this one.

Bonus points if you actually [model the analysis in Power BI](https://iterationinsights.com/article/linear-regression-in-power-bi/).



## Preparation for next datalab:
- Datalab Preparation 1 from yesterday;
- Datalab Preparation 2 & 3 of today.

Tomorrow we're going to cover writing a discussion section for our conference dashboard!


## Resources
- [Descriptive Statistics, by Statistics LibreTexts)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Introductory_Statistics_(OpenStax)%2F02%253A_Descriptive_Statistics)
- [Graphing Distributions, by Statistics LibreTexts.)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Introductory_Statistics_(Lane)%2F02%253A_Graphing_Distributions)
-  [Descriptive Statistics, by Statistics LibreTexts)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Introductory_Statistics_(Shafer_and_Zhang)%2F02%253A_Descriptive_Statistics)
 - [Displaying and ANalysing Data with Graphs, by Statistics LibreTexts)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Inferential_Statistics_and_Probability_-_A_Holistic_Approach_(Geraghty)%2F02%253A_Displaying_and_Analyzing_Data_with_Graphs)
