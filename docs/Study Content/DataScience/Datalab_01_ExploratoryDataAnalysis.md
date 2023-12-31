---
sort: 7
---

# Datalab 01: Exploratory Data Analysis

This data-lab day will focus on Exploratory Data Analysis (EDA). First, we will cover 5 modules of the aptly named swirl course: Exploratory Data Analysis. After which, we will work on the project brief, specifically the EDA methodology section, and apply descriptive analyses to generate descriptive statistics and visualisations to populate (= fill) the EDA Methodology section of the conference poster of our data-lab project.

## Learning Objectives
Enable you to:
1. generate descriptive statistics;
2. generate descriptive visualisations;
3. write a basic EDA methodology.

Table of contents:
0. Mock-Assessment Review: 0.5 Hours
1. Workshop on Exploratory Data analysis: 4 hours
2. Exploratory Data Analysis on SDG Indicators dataset: 3 hours
3. Day reflection: 16:00 - 17:00

## 0) Mock-Assessment review: Variables and Descriptive data
Now, let's all find a partner (as in a classmate, not in a romantic sense) and get our mock-assessments out (assuming you made them :p) and discuss them. Specifically, analyse and evaluate one another work by:
- Simply showing one another how you created your variables, vectors and data frame for the Intro to Variables mock assessment. Or what you did and did not manage; we're in a safe space to learn, and not succeeding is part of that :).
- Showing one another your calculations and solutions for parts A and B of the Descriptive Analyses mock assessment.

## 1) Workshop part: Exploratory Data Analyses
Download the R swirl course [Exploratory Data Analysis](https://swirlstats.com/scn/eda.html) by running the following code in the R-studio console:
```R
swirl::install_course("Exploratory Data Analysis")
```
Complete module 1 to 5


## 2) Project Brief part: Exploratory Data Analysis
Now that we have performed all EDA techniques we could need to address your problem statement, we can continue working on the project brief.

Download the dply, tidyr and ggplot2 [Cheatsheets](https://www.rstudio.com/resources/cheatsheets/). They're extremely useful when working in R, not just for this project, so be sure to use them in the future.

**Step 1.** Open your conference poster and inspect the EDA Methodology section. Then, save the poster to your "DataScience1_ConferencePoster" GitHub repository and be sure to save and upload your poster regularly. Now look at the feedback you have received on your poster by navigating to your GitHub repository and clicking on the 'Pull requests' header. There should be a feedback thread over there.

**Step 2.** Get your notes from the last data lab and read the Introduction you wrote for the poster. Then, go to the [SDG website](https://sdg-tracker.org/) and make **a selection of the variables** you think are interesting in the context of the problem statement.



**Step 3.** Download the **relevant** [SDG data](https://unstats.un.org/sdgs/indicators/database/) and create a dataset which **only contains the variables you selected** (apart from identifier data such as the year or geographic area). Then, save the dataset as a CSV file to your "DataScience1_ConferencePoster" repository.

Now open the poster and write the Data Selection Section.


**Step 4.** Open R-studio and create a script. Generate descriptive statistics for each variable using the 'summary()' function and save all the results in a table. Then export the table as a 1,366 x 768 pixels .jpeg file and save it to your GitHub repository.

Now, open the poster and write the Data Cleaning Sections.


**Step 5.** Generate appropriate descriptive visualisations for your variables and save them as 1,366 x 768 pixels JPEG file to your GitHub repository. Make sure to at least generate of each variable an appropriate:
1. Scatterplot
2. Histogram
3. Boxplot

Now open the poster and write the Data Selection and Data Visualisation Sections. Save your script on your GitHub repository and name it aptly: e.g. "SDGIndicatorExploratoryDataAnalysis".

**Step. 6.** Read and potentially iterate on your poster, then save your poster to your GitHub repository!


## 2)  In-Class discussion
At 16:00, we'll all get together in Datalab to discuss our progress and reflect on today activities.

Next week we're going to cover some fundamental concepts of probability theory. It's much more fun than it sounds, I promise. :p


## Questions or issues?
In case you have any questions, please first ask your peers or send us a message on teams instead! We're available on working days from 9:00 tot 17:00.

## Resources:
- [SDG database](https://unstats.un.org/sdgs/indicators/database/)
- [SDG website](https://sdg-tracker.org/)
- [Cheatsheets](https://www.rstudio.com/resources/cheatsheets/) - Specifically the dply, tidyr and ggplot2 spreadsheats.
