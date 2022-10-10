---
sort: 12
---

# Analysing Relationships between Variables

We start by a expanding on our knowledge of correlations and applying it. Then, we're going to dive deeper into measures of association by doing a Datacamp course on modelling data. There's are 2 Datalab Preparation sections this time to prepare us for applying our new knowledge tomorrow in class; discussing our findings and proposing an analysis to perform on the data!

Learning objectives:
- Modelling data in Power BI
- Correlational analyses;
- Regression analyses.



Please follow the links below to continue the class:
0. Workshop: 3 hours
1. Correlations - Datalab Preparation 1: 1.5 hour
2. Regression - Datalab Preparation 2: 1.5 hour


## Questions or issues?

If you have questions or issues regarding the course material, please fill out the 'How Can We Help?' form under the section ['Ask me anything'](https://adsai.buas.nl/Contact%20Us/). A member of our teaching staff will respond as soon as possible.

***


## 0) Workshop
First, it's time for the [the workshop part](https://app.datacamp.com/learn/courses/data-modeling-in-power-bi) of this class to expand our data modeling skills in Power BI so we can better write the discussion section. Complete the entire course and upload the certificate to github, reference the certificate in your learning log for this week.

If you get stuck, first ask your peers and then us!

The purpose of your data science project is not to do a correlational or regression analysis yourself: the goal is to suggest an analysis based on your research question and data. Next year, we're going to advance our knowledge of statistics and go into hypothesis testing; for now you should just know what it means if variables are correlated or have a linear relationship.

## 1) Correlations
In this video, we will talk about data relationships and what we can learn from them. We'll focus on correlation, a coefficient that measures how two variables "move" together. We'll also introduce some good statistical terms you've probably heard of, like the regression coefficient, correlation coefficient (r), and explained variance r^2. But first, we'll need to introduce a helpful way to represent continuous bivariate data - the scatter plot. The scatter plot has been called "the most useful invention in the history of statistical graphics", but that doesn't necessarily mean it can tell us everything. For example, just because two data sets move together doesn't necessarily mean one CAUSES the other. This gives us one of the essential tenets of statistics: correlation does not imply causation.
<iframe width="560" height="315" src="https://www.youtube.com/embed/GtV-VYdNt_g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The purpose of your data science project is not to do a correlational analysis in Power BI yourself: the goal is to suggest an analysis based on your research question and data. But, if you want to go more in-depth into correlation and play around in Power BI, I suggest following [this step plan for Power BI](https://www.mssqltips.com/sqlservertip/5197/correlation-analysis-using-correlation-plot-in-power-bi-desktop/.) Next year, we're going to advance our knowledge of statistics and go into hypothesis testing; for now you should just know what it means if variables are correlated.


## Datalab Preparation 1
Get a piece of paper to write on, or create an Power BI file called "CorrelationDatalabPreparation" and save it to your repository.

 1. Now, look at the following table. It displays the age and glucose level of a given subject.

| Subject | Age (X) | Glucose Level (Y) |
| ------- | -------- | ------------------- |
| 1 | 43 | 99 |
| 2 | 21 | 65 |
| 3 | 25 | 79 |
| 4 | 42 | 75 |
| 5 | 57 | 87 |
| 6 | 59 | 81 |

Create a table for the data if you're using Power BI.

 2. Use [this artcile](https://www.statology.org/correlation-coefficient-by-hand/) article to **calculate the Pearson Correlation Coefficient between Age X and Glucose Level Y** by hand, or [in Power BI using DAX](https://www.youtube.com/watch?v=xtRXakHARZg&ab_channel=Curbal). If you do it by hand, upload a foto of your written calculations to GitHUb/your Learning Log instead of a .pbix file but make sure to name the image file: 'CorrelationDatalabPreparation'.

Now we're going to try to develop a correlational analysis we can apply on our SDG Indicator dataset: preferably on the data you use for your own project and related to your problem statement.
3. Formulate and justify a correlational analysis in less than 150 words. So, we're only asking you for a written proposal, not executing the analysis but feel free to challenge yourself! Doing the actual analysis is part of the Gold Medal for this block after all!

Save the file(s) to your GitHub repository when you're done.

## 2) Intro to Regression
Today we're going to introduce one of the most flexible statistical tools - the Linear Model (or LM). LMs allow us to create many different models to help describe the world - you see them a lot in science, economics, and politics. A  linear model allows us to describe a relationship where one variable; the predictor (or independent) variable, is predicting an increase or decrease in another variable; the outcome (or dependent) variable. As an example the video below discusses a hypothetical model to look at the relationship between likes and comments on a trending YouTube video using the Regression Model. 
<iframe width="560" height="315" src="https://www.youtube.com/embed/WWqE7YHR4Jc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


## Datalab Preparation 2
Get a piece of paper to write on or create an .pbix file called "LinearRegressionDatalabPreparation" and save it to your the GitHUb.

Now we're going to try to develop some analyses we can apply on our SDG Indicator dataset: preferably the data you use for your own project.
1. Formulate and justify a linear regression analysis in less than 150 words. So, we're only asking you for a written proposal, not executing the analysis but feel free to challenge yourself! Doing the actual analysis is part of the Gold Medal for this block after all!

Bonus points if you actually [model the analysis in Power BI](https://iterationinsights.com/article/linear-regression-in-power-bi/).

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Get the Gold challenge by actually doing a correlational or linear regression analysis in Power BI. For this challenge you'll have to find a way to do that without any assistance from us! We provided you with some tutorials yesterday you could use. Make sure to reference which instruction you used and evidence your analysis in your dashboard and learning log!
</div>


## Preparation for next datalab:
- Datalab Preparation on variability from yesterday;
- Datalab Preparation 1 & 2 of today.

Tomorrow, we're going to cover writing a discussion section for our conference dashboard!


## Resources
- [Descriptive Statistics, by Statistics LibreTexts)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Introductory_Statistics_(OpenStax)%2F02%253A_Descriptive_Statistics)
- [Graphing Distributions, by Statistics LibreTexts.)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Introductory_Statistics_(Lane)%2F02%253A_Graphing_Distributions)
-  [Descriptive Statistics, by Statistics LibreTexts)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Introductory_Statistics_(Shafer_and_Zhang)%2F02%253A_Descriptive_Statistics)
 - [Displaying and ANalysing Data with Graphs, by Statistics LibreTexts)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Inferential_Statistics_and_Probability_-_A_Holistic_Approach_(Geraghty)%2F02%253A_Displaying_and_Analyzing_Data_with_Graphs)
