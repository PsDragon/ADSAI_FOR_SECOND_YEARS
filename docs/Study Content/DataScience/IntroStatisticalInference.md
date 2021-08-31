---
sort: 10
---

# Intro to Statistical Inference
This page introduces you to statistical inference. We start with some video explaining to grasp some basic concepts. In the workshop we will put our new knowledge into practice by doing 5 modules of a swirl course. There is no mock assessment this time because we have to cover 5 modules but we will apply our knowledge in Datalab instead.

Learning objectives:
Build upon the basic understanding of data representations by learning to create data visualisations which are:
- Common Distributions
- Asymptotic Distributions
- T-tests
- Confidence Intervals  
- Hypothesis Testing
- P Values



Table of contents:
1. Videos: 2 hours
2. Workshop: 5 hours


Good luck!

## Questions or issues?
In case you have any questions please first ask your peers or [ask us here](https://github.com/BredaUniversity/AAI-DM/issues/new) and make sure to include the year, block, GitHub page and the question you have or the problem you're experiencing in the title.


## 0) Introduciton to statistical inference
When collecting data to make observations about the world it usually just isn't possible to collect ALL THE DATA. So instead of asking every single person about student loan debt for instance we take a sample of the population, and then use the shape of our samples to make inferences about the true underlying distribution our data. It turns out we can learn a lot about how something occurs, even if we don't know the underlying process that causes it. Today, we’ll also introduce the normal (or bell) curve and talk about how we can learn some really useful things from a sample's shape - like if an exam was particularly difficult, how often old faithful erupts, or if there are two types of runners that participate in marathons!
<iframe width="560" height="315" src="https://www.youtube.com/embed/bPFNxD3Yg6U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

In this video, we’re going to talk about data relationships and what we can learn from them. We’ll focus on correlation, which is a measure of how two variables move together, and we’ll also introduce some useful statistical terms you’ve probably heard of like regression coefficient, correlation coefficient (r), and r^2. But first, we’ll need to introduce a useful way to represent bivariate continuous data - the scatter plot. The scatter plot has been called “the most useful invention in the history of statistical graphics” but that doesn’t necessarily mean it can tell us everything. Just because two data sets move together doesn’t necessarily mean one CAUSES the other. This gives us one of the most important tenets of statistics: correlation does not imply causation.
<iframe width="560" height="315" src="https://www.youtube.com/embed/GtV-VYdNt_g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Confidence intervals allow us to quantify our uncertainty, by allowing us to define a range of values for our predictions and assigning a likelihood that something falls within that range. And confidence intervals come up a lot like when you get delivery windows for packages, during elections when pollsters cite margin of errors, and we use them instinctively in everyday decisions. But confidence intervals also demonstrate the tradeoff of accuracy for precision - the greater our confidence, usually the less useful our range.  
<iframe width="560" height="315" src="https://www.youtube.com/embed/yDEvXB6ApWc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Today we're going to begin our three-part unit on p-values. In this episode we'll talk about Null Hypothesis Significance Testing (or NHST) which is a framework for comparing two sets of information. In NHST we assume that there is no difference between the two things we are observing and and use our p-value as a predetermined cutoff for if something seems sufficiently rare or not to allow us to reject that these two observations are the same. This p-value tells us if something is statistically significant, but as you'll see that doesn't necessarily mean the information is significant or meaningful to you.
<iframe width="560" height="315" src="https://www.youtube.com/embed/bf3egy7TQ2Q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We introduced p-values as a way to set a predetermined cutoff when testing if something seems unusual enough to reject our null hypothesis - that they are the same. But today we’re going to discuss some problems with the logic of p-values, how they are commonly misinterpreted, how p-values don’t give us exactly what we want to know, and how that cutoff is arbitrary - and arguably not stringent enough in some scenarios.  
<iframe width="560" height="315" src="https://www.youtube.com/embed/PPD8lER8ju4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We're going to finish up our discussion of p-values by taking a closer look at how they can get it wrong, and what we can do to minimize those errors. We'll discuss Type 1 (when we think we've detected an effect, but there actually isn't one) and Type 2 (when there was an effect we didn't see) errors and introduce statistical power - which tells us the chance of detecting an effect if there is one.
<iframe width="560" height="315" src="https://www.youtube.com/embed/WWagtGT1zH4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 1)  Workshop
Download the R swirl course [Statistical_Inference](https://github.com/swirldev/swirl_courses) by running the following code in the R-studio console:
```R
swirl::install_course("Statistical_Inference")
```
Complete module 8-11. Makes sure to open the powerpoint presenations the course asks you to open, it's useful to have different explanations of the same thing. It helps you learn: neuron that wire together, fire together. In essence consuming multiple examples helps you connect concepts in you brain making it easier to recall.

# 2)  In-Class discussion
At 16:00, there's a online meeting you're encouraged to take part in to ask questions and to discuss our progress and reflect on today activities.

That's it for today, tomorrow we're going to learn how we can analyse different relationships between variables.

## Resources
- [https://swirlstats.com/students.html](https://swirlstats.com/students.html)
- [Swirl](https://swirlstats.com/help.html)
- http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html
- Learning Statistics with R, by D. Navarro (2018):  https://learningstatisticswithr.com/  
- Discovering Statistics using R, A. Fields et al. (2012): https://uk.sagepub.com/en-gb/eur/discovering-statistics-using-r/book236067  

Course code: ADSAI_DS1
