# Data Science 1: The World in Data & introduction to R

Hello, welcome to Data Science 1. The first lecture/workshop/session will focus on how we can see and quantify our world into data. We are going to cover some basic concepts as well as installing & understanding some software to do statistics. 


# Your lecturers

Name  | Education & Experience  | Contact
---   | ----------------------  | ---
<img src="https://github.com/BredaUniversity/AAI-DM/blob/main/docs/Year1/BlockA/DataScience/Courses/DS1/Day1/assets/BramMediumCloseUp.jpg" width="140" height="200" /> | Ongoing PhD., Neurophysiological Indicators of Learning in Games, Tilburg University​  <br> MSc., Cognitive Science & Artificial Intelligence, Tilburg University​ <br> Game Architecture and Design, Breda University of Apllied Science <br> <br> &Ranj - *Game Designer* <br> GGD Zuid-Holland-Zuid - *Floor manager* | heijligers.b@buas.nl
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
Swirl is an interactive package for R which allows us to create interactive lessons using a basic for of AI called a Reactive Machine. Swirl will ask you a question, you respond with some input based on which swirl will respond with some output. The program doesn't learn by itself so please first ask your peers or (when they don't respond timely) [ask us or notify us of any issues you're having](https://github.com/BredaUniversity/AAI-DM/issues/new) and make sure to include the name of the course, workshop and question you have or the problem you're experiencing.

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

## 5) Install your first interactive lesson
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

## 6) An introduction to R
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

## 7) Mock-Assessment
Every workshop includes a small mock-assessment to prepare you for the actual assessment deliverable you'll create in datalab.  

0) Create a word or pdf file with your student number named 'DS_L1_MockAssessment_STUDENTNUMBER' ('STUDENTNUMBER' is the text you replace with your student number in case that wasn't clear) where you answer the following questions:

1. Questions: Defining objects as data

a. Choose an object to define: e.g. in your direct vicinity or something you like or want to understand better.
b. Describe the object formally in at least 100 words.
c. Quantify the object into (at least 10) variables. 
d. Form a data-driven research question based on your variables and the formal description of the object.
e. Describe the background for your research question based on your research question, formal description, variables and other resources found online. References your sources using APA citation.

2. Questions: Defining phenomena as data

a. Choose an phenomena to define: e.g. in your direct vicinity or something you like or want to understand better. 
b. Describe the phenomena formally in at least 100 words.
c. Quantify the phenomena into (at least 10) variables. 
d. Form a data-driven research question based on your variables and the formal description of the phenomena.
e. Describe the background for your research question based on your research question, formal description, variables and other resources found online. References your sources using APA citation.


## 8) Hand-in Documentation
When you are finished with your mock-assignment you can upload your work on team in your respective hand-in slot: Microsoft Teams > Assignments > Data Science 1 > Lecture 1 > Assignemnt

Note: Future R scripts and assignments will be handed in on Github but we'll take it easy for now.

## References:
- Learning Statistics with R, by D. Navarro (2018):  https://learningstatisticswithr.com/  
- Discovering Statistics using R, A. Fields et al (2012): https://uk.sagepub.com/en-gb/eur/discovering-statistics-using-r/book236067  

## Resources
- https://swirlstats.com/students.html
- https://github.com/ClaudiaBrauer/A-very-short-introduction-to-R/blob/master/documents/A%20(very)%20short%20introduction%20to%20R.pdf
- https://swirlstats.com/help.html
- http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html

