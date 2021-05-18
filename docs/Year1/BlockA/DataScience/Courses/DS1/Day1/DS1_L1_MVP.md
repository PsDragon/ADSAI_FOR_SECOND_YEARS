﻿# Introduction To Data Science
Hello, welcome to Data Science 1. The first lecture/workshop/session will focus on how we can see and quantify our world into data. We are going to cover some basic concepts as well as installing & understanding some software to do statistics. 


# Your lecturers

Name  | Education & Experience  | Contact
---   | ----------------------  | ---
<img src="assets/BramMediumCloseUp.jpeg" width="140" height="200" /> | Ongoing PhD., Neurophysiological Indicators of Learning in Games, Tilburg University​  <br> MSc., Cognitive Science & Artificial Intelligence, Tilburg University​ <br> Game Architecture and Design, Breda University of Apllied Science <br> <br> &Ranj - *Game Designer* <br> GGD Zuid-Holland-Zuid - *Floor manager* | heijligers.b@buas.nl
<img src="https://github.com/BredaUniversity/AAI-DM/blob/main/docs/Year1/BlockA/Programming/assets/nitinFaceSmall.png" width="140" height="200" /> | PhD., Causal Inference, University of Groningen​  <br> MSc., Artificial Intelligence, Maastricht University​ <br> Electrical Engineering, MSRIT, India <br> <br> XRCE Europe - *Machine Learning Research* <br> Bosch Transmission Technologies Ltd. - *Senior Data Scientist* | bhushan.n@buas.nl



## 0) Watch or attend the [opening lecture](https://youtu.be/dQw4w9WgXcQ)

## 1) Get R
In order to run swirl, you must have R 3.1.0 or later installed on your computer. 
If you need to install R, you can do so [here](https://cran.rstudio.com/)

For help installing R, check out one of the following videos (courtesy of Roger Peng at Johns Hopkins University):
- Installing R on [Windows](https://youtu.be/mfGFv-iB724)
- Installing R on [Mac](https://youtu.be/Icawuhf0Yqo)

## 2) Get R-Studio
In addition to R, it’s highly recommended that you install RStudio, which will make your experience with R much more enjoyable.
If you need to install RStudio, you can do so [here](https://www.rstudio.com/products/rstudio/download/). Select the appropriate installer for your operating system.

Tip: [change the layout](https://youtu.be/7LkAe4oAlP4) to a dark hue so you reduce the eye strain you experience over time.

## 3) Install swirl
Swirl is an interactive package for R which allows us to create interactive lessons using a basic for of AI called a Reactive Machine. Swirl will ask you a question, you respond with some input based on which swirl will respond with some output. The program doesn't learn by itself so please ask your peers or [us](mailto: heijligers.b@buas.nl; bhushan.n@buas.nl) anything you do not understand (well enough) and report any problems or issues [here](https://youtu.be/kxctvrZMxaQ)
Open RStudio and type the following into the console:
```R
	> install.packages("swirl")
```

![R-Studio Interface:](https://github.com/BredaUniversity/AAI-DM/blob/9c941191576eaf85eba554ac5a77fe44bbf17668/docs/Year1/BlockA/DataScience/Courses/DS1/Day1/assets/rstudio2.png)


Note that the '>' symbol at the beginning of the line is R's prompt for you type something into the console. We include it here so you know that this command is to be typed into the console and not elsewhere. The part you type begins after '>'.

## 4) Start swirl
This is the only step that you will repeat every time you want to run swirl. First, you will load the package using the 'library()' function. Then you will call the function that starts the magic! Type the following, pressing Enter after each line:
```R
	> library("swirl")
	> swirl()
```

## 5) Start your first interactive lesson
The first time you start swirl, you'll be prompted to install a course. You can either install one of the recommended courses or visit the course repository for more options. There are even more courses available from the Swirl Course Network. 

We’re going to install a course which is not part of the repository
To install a course that is not part of our course repository, type '?InstallCourses' at the R prompt for a list of functions that will help you do so.

[procedure to install in the DS1-course]

## 6) Do the workshop exercises
[procedure to open in the DS1-course]

**Content:**
1. Tutorial: A introduction to swirl by the swirl software
2. Tutorial: An introduction to R-studio by the course material

Source: http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html 

**> MVP: let them do this one; if more time: chop in sections to deliver the information when they need it: JIT**

3. Questions: Defining objects as data

Source: Bram

4. Questions: Defining phenomena as data

Source: Bram

## 7) Create the assesment building blocks
5 Questions:
- Choose an object or phenomena (form list: HYPERLINK) you want to investigate
- Describe  the object formally
- Quantify the object/phenomena into variables
- Form a data-driven research question
- Describe the background for your research question

## 8) Commit Documentation
[Instructions to commit documentation]

## References:
- https://swirlstats.com/students.html

## Resources
- https://swirlstats.com/help.html
