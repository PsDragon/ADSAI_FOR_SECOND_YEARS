---
sort: 2
---
# Intro to R

This lesson is about installing & understanding the R programming language and R-studio software suite. R is a programming language based on Python (another programming language) to do statistical programming. The R-studio application is a suite to run and easily operate R. R-studio is an industry-standard tool for doing statistical analysis, it's free and has a wide range of libraries just for statistical analysis.

It's [becoming more popular](http://r4stats.com/articles/popularity/), and when looking at the amount of package developed over time we can see that the growth curve is amazing: it follows a rapid parabolic arc (quadratic fit with R-squared=.995).


<figure>
    <img src=".\assets\PackagesOnCranOverTime.png" />
    <figcaption>Amount of packages developed of time</figcaption>
</figure>
<br>

Within the data-science descipline there is some debate on whether Python or R are better; but apart from personal preference, it's really a matter of what you want to do:
<iframe width="560" height="315" src="https://www.youtube.com/embed/1gdKC5O0Pwc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 0) Get R
So, we'll be using R for exploring the basics of data science in this block. Specifically, we will use a package called Swirl. To run Swirl, you must have R 3.1.0 or later installed on your computer. [So install R, you can do so by clicking on this sentence.](https://cran.rstudio.com/)

For help installing R, check out one of the following videos (courtesy of Roger Peng at Johns Hopkins University):
- Installing R on [Windows](https://youtu.be/mfGFv-iB724)
- Installing R on [Mac](https://youtu.be/Icawuhf0Yqo)

## 1) Get R-Studio
In addition to R, you have to install RStudio, which will make your experience with R much more enjoyable.
[Click here to install RStudio](https://www.rstudio.com/products/rstudio/download/). Make sure to select the appropriate installer for your operating system.

Tip: [change the layout](https://youtu.be/7LkAe4oAlP4) to a dark hue so you reduce the eye strain you experience over time.

## 2) Install swirl
Swirl is an interactive package for R, which allows us to create interactive lessons. Swirl uses a basic form of Symbolic AI called a Reactive Machine: the program is logic-based so it perceives the world and reacts to it in a pre-determined way. Essentially, Swirl will ask you a question, you respond with some typed input based on which swirl will respond with some output: text, numbers, operations or visualisations.
Therefore, the program does not learn by itself, so please first ask your peers or [ask us or notify us of any issues you are having](https://github.com/BredaUniversity/AAI-DM/issues/new) and make sure to include the name of the course, workshop and question you have or the problem you are experiencing.

Open RStudio and type the following into the console:
```R
	> install.packages("swirl")
```


<figure>
    <img src=".\assets\rstudio2.png" />
    <figcaption>R-Studio Interface</figcaption>
</figure>
<br>

Note that the '>' symbol at the beginning of the line is R's prompt for you type something into the console. We include it here, so you know that this command must be typed into the console and not elsewhere. The part you type begins after '>'.

## 3) Start swirl
This is the only step that you will repeat every time you want to run Swirl. First, you will load the package using the 'library()' function. Then you will call the function that starts the magic! Type the following, pressing Enter after each line:
```R
	> library("swirl")
	> swirl()
```

## 4) Install your first interactive lesson
The first time you start swirl, you'll get an introduction to swirl by the software itself.

After which, you'll be prompted to install a course. You can either install one of the recommended courses or visit the course repository for more options. There are even more courses available from the Swirl Course Network. To install a course that is not part of our course repository, type '?InstallCourses' at the R prompt for a list of functions that will help you do so.

Choose the following option: '5: Don't install anything for me. I'll do it myself.'
```R
	> 5
```

For now, we're just going to start by installing an introductory course for the R software called: 'A (very) short introduction to R', by typing the following into the console:
```R
	> install_course("A_(very)_short_introduction_to_R")
```
After the course is installed you should see the following message:
'| Course installed successfully!'

You're now ready to start your first interactive lesson!

## 5) An introduction to R
Start swirl again and the corresponding course by typing the following commands:
```R
	> swirl()
```
Now start the 'A (very) short introduction to R' course, module 1 by typing:
```R
	> 1
	> 1
```
Run through the course by completing all 3 modules, which should take about 1 to 2 hours.

# 6) In-Class discussion
At 16:00, there's a online meeting you're encouraged to take part in to ask questions and to discuss our progress and reflect on today activities.

That's all for lesson 1. Tomorrow we're going to look at the project we'll be working on the coming 3 weeks. See you in Datalab!


## Questions or issues?
In case you have any questions please first ask your peers or send us a message on teams instead! We're available on working days from 9:00 tot 17:00.

## Resources
- [https://swirlstats.com/students.html](https://swirlstats.com/students.html)
- [A Very Short Introduction to R](http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html) and the accompanying [Github repository] (https://github.com/ClaudiaBrauer/A-very-short-introduction-to-R/blob/master/documents/A%20(very)%20short%20introduction%20to%20R.pdf)
- [Swirl](https://swirlstats.com/help.html)
- http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html
