---
sort: 6
---

# Descriptive Analyses & Visualisations

We start of with an introduction into descriptive statistics and visualising descriptive data. Subsequently, in the workshop we will briefly focus on data cleaning: specifically getting and cleaning data; important for datalab tomorrow. For the rest of the workshop we will practice doing exploratory data analyses wherefore descriptive statistics and visualisations are fundamental.

## 0) Learning Objectives
Fundamentals of Exploratory Data Analysis, specifically you will learn to understand and apply:
1. Data Cleaning
2. Descriptive statistics: Measures of central tendancy and spread
3. Descriptive visualisations: Measures of central tendancy and spread

Table of contents:
1. Introduction: 1 hours
2. Workshop: 7 hours

We don't have a mock-assessment today because we will practice on our own data in datalab tomorrow.


Good luck!

In case you have any questions please first ask your peers or (when they don't respond timely) [ask us or notify us of any issues you're having](https://github.com/BredaUniversity/AAI-DM/issues/new) and make sure to include the name of the course, workshop and question you have or the problem you're experiencing.


## 1) Introduction
We're first going to explore how we can describe and interpret our raw data without analysing any causal relationships. In other words, we're going to look at what we can tell about the data by itself.
"Descriptive statistics are brief descriptive coefficients that summarize a given data set, which can be either a representation of the entire or a sample of a population. Descriptive statistics are broken down into measures of central tendency and measures of variability (spread)." ([investopedia, Retrieved 14-07-2021](https://www.investopedia.com/terms/d/descriptive_statistics.asp))

### Measures of Central tendancy
These essential describe the center of the dataset:
<iframe width="560" height="315" src="https://www.youtube.com/embed/kn83BA7cRNM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Measures of Spread (or Variability)
which describe the dispersion with the dataset:
<iframe width="560" height="315" src="https://www.youtube.com/embed/R4yfNi_8Kqw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Visualisating data
It's really helpful to visualise data: most people intuitively know how to read a graph but when given the same scientific relationships in writing or math they don't have a clue. Using more of our sensory capacity: visual processing and spatial awareness is a game changer to get more in-depth knowledg of the data you're interested in.

![Renee Decartes enjoying his chill life in Amsterdam](http://static1.squarespace.com/static/51b10198e4b00987e7d6891b/51b10199e4b00987e7d68923/5259a2c6e4b0107b3307992d/1508313165899/CkcQMCeWsAAkjdf.jpg?format=1500w)

We have Renee Decartes with his cartesian coordinate system to thank for graphical respresentations of data as we know today: enabling us to use algebra to describe geometry.

<iframe width="560" height="315" src="https://www.youtube.com/embed/hEWY6kkBdpo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/HMkllhBI91Y" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 2) Workshop
Exploratory Data Analysis sadly takes a lot of practice, so that's what we'll do. You'll be looking up information, assessing, cleaning data and creating descriptive statistics and visualisations of data.

So let's get cracking!

### Step 1
Download the R swirl course [Getting and Cleaning Data](https://swirlstats.com/scn/getclean.html) by running the following code in the R-studio console:
```R
swirl::install_course("Getting and Cleaning Data")
```
Complete module 1.

### Step 2
Download the R swirl course [Data Analysis](https://github.com/swirldev/swirl_courses/tree/master/Data_Analysis) lessons directly from the Swirl Git repo and install the lessons manually. Then complete all 3 modules: Central Tendancy, Data Visualisation and Dispersion.

### Step 3
Download the R swirl course [Exploratory Data Analysis](https://swirlstats.com/scn/getclean.html) by running the following code in the R-studio console:
```R
swirl::install_course("Exploratory Data Analysis")
```
Complete module 1 to 5

## 3) The End
That was it for today, [tomorrow](https://vigilant-giggle-149c38cd.pages.github.io/Study%20Content/DataScience/Datalab_01_ExploratoryDataAnalysis.html) we'll continue until module 10 and then we'll perform an exploratory data analysis on our own the data for project brief based on the problem statement and research question we made in the previous [datalab](https://vigilant-giggle-149c38cd.pages.github.io/Study%20Content/DataScience/Datalab_00_SDG_Indicators.html).


In case you have any questions left [ask us or notify us of any issues you're having](https://github.com/BredaUniversity/AAI-DM/issues/new) and make sure to include the name of the year, block and question you have or the problem you're experiencing in the title.

## Resources
- [https://swirlstats.com/students.html](https://swirlstats.com/students.html)
- [Swirl](https://swirlstats.com/help.html)
- http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html
- Learning Statistics with R, by D. Navarro (2018):  https://learningstatisticswithr.com/  
- Discovering Statistics using R, A. Fields et al (2012): https://uk.sagepub.com/en-gb/eur/discovering-statistics-using-r/book236067  
