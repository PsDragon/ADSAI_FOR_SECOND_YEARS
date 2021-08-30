---
sort: 5
---

# Intro to Variables and Dataframes

We start with a brief recap of what we learned in the [Intro to R](https://vigilant-giggle-149c38cd.pages.github.io/Study%20Content/DataScience/IntroToR.html). After that, we are going to learn about and work with different types of variables, vectors, matrices and data frames. Subsequently, we will focus on putting our new knowledge into practice by creating your own toy data frame.

## 0) Learning Objectives:
Enable you to understand, manipulate and create:
1. variables;
2. vectors;
3. matrices;
4. data frames.

Table of contents:
1. Introduction to concepts: 1 hour
2. Workshop: 6 hours
3. Mock-assessment: 1 hours


Good luck!

In case you have any questions,
 please first ask your peers or (when they don't respond timely) [ask us or notify us of any issues you're having](https://github.com/BredaUniversity/AAI-DM/issues/new) and make sure to include the name of the course, workshop and question you have or the problem you're experiencing.

## 1) Introduction
### 1.1 Variables
Let's start with the most basic container for information: The variable. Essentially it's just a container that contains a value that can change depending on a given condition. The following video covers the fundamental concepts of variables from a mathematical perspective.
<iframe width="560" height="315" src="https://www.youtube.com/embed/tHYis-DP0oU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

The next video zooms into variables in the context of data & computer science; more specifically: how variables work in R.
<iframe width="560" height="315" src="https://www.youtube.com/embed/ZxV-kf0yBss" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


### 1.2 vectors
Whereas a variable stores a single value, a vector stores multiple values of the same kind in one dimension.
<iframe width="560" height="315" src="https://www.youtube.com/embed/w5dOALbZ9HE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 1.2 Matrices
Matrices store multiple (usually  numeric) values of the same type in *two* dimensions arranged into a fixed number of rows and columns. So every row, or observation or element, contains a value (if it's blank) for every collum.
![Enter the (data in the) matrix](https://media.makeameme.org/created/what-if-i-aac0fffe8b.jpg)
So it's essentially a table with values of the same type. It's exciting stuff.
<iframe width="560" height="315" src="https://www.youtube.com/embed/O7KL17QZNqg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### 1.4 Dataframes
And finally, there's the data frame which is similar to the matrix but can store different types of data in two dimensions.
<iframe width="560" height="315" src="https://www.youtube.com/embed/9f2g7RN5N0I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 2) Workshop - Variables, Vectors and Dataframes

Install the following course and do modules 1, 4 and 7.

```R
  > swirl::install_course("R Programming")
```

 If you have any questions, first, ask your peers before you [ask us or notify us of any issues you're having](https://github.com/BredaUniversity/AAI-DM/issues/new) regarding the study content. Make sure to include the name of the year, block and GitHub page in the title when you report the issue or question.

## 3) Mock-Assessment

This mock assessment is about applying the concepts we learned today to a real-world situation. Today we're interested in your day, what did you have for lunch and breakfast for example? Sounds straightforward, right? So let's get started!

Create an R-script following these instructions:

1. Create a variable called 'lunch' with a string describing an item you had for lunch: food only
2. Delete the variable
3. Create a vector named 'drinks' containing all your drinks you ate today: as strings
4. Create a vector named 'foods' listing all the food you ate today; as strings.
5. Create a matrix containing the food and drinks you had today
6. Create a data frame from the matrix and add the times; as numerical values, when you ate or drank something

Finished with your mock-assignment? You can upload your R-script on [github classrooms](HYPERLINK)

If you have any questions or issues, [ask us here](https://github.com/BredaUniversity/AAI-DM/issues/new) and make sure to include the year, block, GitHub page and the question you have or the problem you're experiencing in the title.

## Resources
- [https://swirlstats.com/students.html](https://swirlstats.com/students.html)
- [Swirl](https://swirlstats.com/help.html)
- http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html
- Learning Statistics with R, by D. Navarro (2018):  https://learningstatisticswithr.com/  
- Discovering Statistics using R, A. Fields et al. (2012): https://uk.sagepub.com/en-gb/eur/discovering-statistics-using-r/book236067  
