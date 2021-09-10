---
sort: 8
---

# Introduction to Probability 1
This page introduces you to probability theory. We start with some video explaining to grasp some basic concepts. Then, in the workshop, we will put our new knowledge into practice by doing 4 modules of a swirl course. This time, there is no mock assessment because this introduction to probability continues on Wednesday so we'll have one then. Instead though, we will apply our knowledge in tomorrow's Datalab.


## 0) Learning Objectives:
Enable you to understand and/or apply:
0. Data Distributions:
1. Addition rule;
2. Multiplication rules;
3. Conditional probability;
4. Law of Large Numbers;
5. Randomness;

Table of contents:
1. Introduction to concepts: 2 hour
2. Workshop: 5 hours

Good luck!



## 0) Introductory Videos
### Distributions: The Shape of Data
When collecting data to make observations about the world, it usually just isn't possible to collect ALL THE DATA. So instead of asking every single person about student loan debt for instance, we take a sample of the population, and then use the shape of our samples to make inferences about the true underlying distribution of our data. It turns out we can learn a lot about how something occurs, even if we don't know the underlying process that causes it. So today, we'll also introduce the normal (or bell) curve and talk about how we can learn some really useful things from a sample's shape - like if an exam was particularly difficult, how often old faithful erupt, or if two types of runners participate in marathons!
<iframe width="560" height="315" src="https://www.youtube.com/embed/bPFNxD3Yg6U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


Today is the day we finally talk about the normal distribution! The normal distribution is incredibly important in statistics because distributions of means are normally distributed even if populations aren't. We'll get into why this is so - due to the Central Limit Theorem - but it's useful because it allows us to make comparisons between different groups even if we don't know the underlying distribution of the population being studied.
<iframe width="560" height="315" src="https://www.youtube.com/embed/rBjft49MAO8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### Probabilities and Randomness
Today we're going to begin our journey into probabilities. We'll talk about how the addition (OR) rule, the multiplication (AND) rule, and conditional probabilities help us figure out the likelihood of sequences of events happening - from optimising your chances of having a great night out with friends to seeing Cole Sprouse at IHop!
<iframe width="560" height="315" src="https://www.youtube.com/embed/OyddY7DlV58" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


This film will to introduce you to bayesian statistics and demonstrate how this new approach to statistics has revolutionized the field from artificial intelligence and clinical trials to how your computer filters spam! We'll also discuss the Law of Large Numbers and how we can use simulations to help us better understand the "rules" of our data, even if we don't know the equations that define those rules.  But, don't worry, learning Bayesesian statistics is not part of this course.
<iframe width="560" height="315" src="https://www.youtube.com/embed/oZCskBpHWyk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


There are a many events in life that we just can’t predict, but just because something is random doesn’t mean we don’t know or can’t learn anything about it. This instructor will going to talk about how we can extract information from seemingly random events starting with the expected value or mean of a distribution and walking through the first four “moments”  - the mean, variance, skewness, and kurtosis.
<iframe width="560" height="315" src="https://www.youtube.com/embed/jL9en6NvQfk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>



[Crash course](https://www.youtube.com/channel/UCX6b17PVsYBQ0ip5gyeme-Q) makes some amazing educational videos on all kinds of topics, I highly recommend them for recreational use as well.

That's it for now; let's continue with some interactive exercises!



### 1) Workshop
Download the R swirl course [Statistical_Inference](https://github.com/swirldev/swirl_courses) by running the following code in the R-studio console:
```R
swirl::install_course("Statistical_Inference")
```
Complete modules 1 to 4. Makes sure to open the PowerPoint presentations the course asks you to open; it's helpful to have different explanations of the same thing. In addition, it helps you learn: neurons that wire together, fire together. In essence, consuming multiple examples enables you to connect concepts in your brain, making it easier to recall.

# 2)  In-Class discussion
At 16:00, there's an online meeting you're encouraged to take part in to ask questions and to discuss our progress and reflect on today activities.

Tomorrow, we will create some cool data visualisations for the findings section of our conference poster!


## Questions or issues?
In case you have any questions please first ask your peers or send us a message on teams instead!

## Resources
- [https://swirlstats.com/students.html](https://swirlstats.com/students.html)
- [Swirl](https://swirlstats.com/help.html)
- http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html
- [Learning Statistics with R, by D. Navarro (2018)](https://learningstatisticswithr.com/)
- [Discovering Statistics using R, A. Fields et al. (2012)](https://uk.sagepub.com/en-gb/eur/discovering-statistics-using-r/book236067)
