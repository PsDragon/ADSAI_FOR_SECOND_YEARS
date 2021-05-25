﻿# Data Science 1, lesson 1: Workshop - Introduction to R

This lessons is about installing & understanding the R and R-studio software suite to do statistical analysis. 

## 0) Get R
In order to run swirl, you must have R 3.1.0 or later installed on your computer. 
If you need to install R, you can do so [here](https://cran.rstudio.com/)

For help installing R, check out one of the following videos (courtesy of Roger Peng at Johns Hopkins University):
- Installing R on [Windows](https://youtu.be/mfGFv-iB724)
- Installing R on [Mac](https://youtu.be/Icawuhf0Yqo)

## 1) Get R-Studio
In addition to R, it’s highly recommended that you install RStudio, which will make your experience with R much more enjoyable.
If you need to install RStudio, you can do so [here](https://www.rstudio.com/products/rstudio/download/). Select the appropriate installer for your operating system.

Tip: [change the layout](https://youtu.be/7LkAe4oAlP4) to a dark hue so you reduce the eye strain you experience over time.

## 2) Install swirl
Swirl is an interactive package for R which allows us to create interactive lessons using a basic for of AI called a Reactive Machine. Swirl will ask you a question, you respond with some input based on which swirl will respond with some output. The program doesn't learn by itself so please first ask your peers or (when they don't respond timely) [ask us or notify us of any issues you're having](https://github.com/BredaUniversity/AAI-DM/issues/new) and make sure to include the name of the course, workshop and question you have or the problem you're experiencing.

Open RStudio and type the following into the console:
```R
	> install.packages("swirl")
```

![R-Studio Interface:](https://github.com/BredaUniversity/AAI-DM/blob/9c941191576eaf85eba554ac5a77fe44bbf17668/docs/Year1/BlockA/DataScience/Courses/DS1/Day1/assets/rstudio2.png)


Note that the '>' symbol at the beginning of the line is R's prompt for you type something into the console. We include it here so you know that this command is to be typed into the console and not elsewhere. The part you type begins after '>'.

## 3) Start swirl
This is the only step that you will repeat every time you want to run swirl. First, you will load the package using the 'library()' function. Then you will call the function that starts the magic! Type the following, pressing Enter after each line:
```R
	> library("swirl")
	> swirl()
```

## 4) Install your first interactive lesson
The first time you start swirl, you'll get an introduction to swirl by the software itself. 

After which you'll be prompted to install a course. You can either install one of the recommended courses or visit the course repository for more options. There are even more courses available from the Swirl Course Network. To install a course that is not part of our course repository, type '?InstallCourses' at the R prompt for a list of functions that will help you do so.

Choose the following option: '5: Don't install anything for me. I'll do it myself.'
```R
	> 5
```

For now we're just going to start by installing an introductory course for the R software called: 'A (very) short introduction to R', by typing the following into the console:
```R
	> install_course("A_(very)_short_introduction_to_R")
```
After the course is installed you should see the following message:
'| Course installed successfully!'

You're now ready to start your first interactive lesson'

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
Run through the course by completing all 3 modules. In case you have any questions please first ask your peers or (when they don't respond timely) [ask us or notify us of any issues you're having](https://github.com/BredaUniversity/AAI-DM/issues/new) and make sure to include the name of the course, workshop and question you have or the problem you're experiencing.

# 6) The end
That's all for lesson 1. See you in Datalab!

## Resources
- https://swirlstats.com/students.html
- https://github.com/ClaudiaBrauer/A-very-short-introduction-to-R/blob/master/documents/A%20(very)%20short%20introduction%20to%20R.pdf
- https://swirlstats.com/help.html
- http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html
