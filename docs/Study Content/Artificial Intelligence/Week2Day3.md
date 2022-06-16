---
sort: 8
---

## Taxonomy of AI (1)


In today's independent study material, you will be introduced to three types of data analysis methods - i.e. descriptive, diagnostic, and predictive. Furthermore, we will look at the different predictive modelling approaches, where we will focus on the concept of 'learning'.

## Learning objectives

1. Define the terms 'Symbolic AI', 'Machine learning', 'Connectionist AI', 'Inference', and 'Expert system'
2. Compare and contrast the four types of data analysis methods; descriptive, diagnostic, predictive, and prescriptive
3. Describe the three predictive modelling approaches; rule-based systems/Symbolic AI, (classic) machine learning, and deep learning/Connectionist AI
4. Explain the difference between 'supervised' and 'unsupervised' machine learning
5. Provide at least one advantage, and one disadvantage of each of the three predictive modelling approaches; rule-based systems/Symbolic AI, (classic) machine learning, and deep learning/Connectionist AI

## Questions or issues?

If you have questions or issues regarding the course material, please fill out the 'How Can We Help?' form under the section ['Ask me anything'](https://adsai.buas.nl/Contact%20Us/). A member of our teaching staff will respond as soon as possible.

***

## 1) Data analysis methods

### 1.1 Introduction

Data analysis is the process of transforming raw data, such as texts, images, audio, numbers, and videos, into usable information. There are many different data analysis methods, depending on the type of research. The four most commonly used methods are listed below:

- Descriptive Analytics: tells you what happened in the past
- Diagnostic Analytics: helps you understand why something happened in the past
- Predictive Analytics: predicts what is most likely to happen in the future
- Prescriptive Analytics: recommends actions you can take to affect those outcomes ([Source](https://insightsoftware.com/blog/comparing-descriptive-predictive-prescriptive-and-diagnostic-analytics/))

In the field of AI, we mainly perform predictive analytics:

> Predictive analytics is the use of data, statistical algorithms and machine learning techniques to identify the likelihood of future outcomes based on historical data. The goal is to go beyond knowing what has happened to providing a best assessment of what will happen in the future ([Source](https://www.sas.com/nl_nl/insights/analytics/predictive-analytics.html)).

__1.1a__ Watch the video The Fundamentals of Predictive Analytics - Data Science Wednesday by Decisive Data.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/4y6fUC56KPw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 1. The Fundamentals of Predictive Analytics - Data Science Wednesday.*

As stated in the video, you cannot successfully perform a predictive analysis before you have completed a descriptive and diagnostic analysis.

#### Example: COVID-19

<img src="./images/hospital.jpg" alt="Doctors emergency room" width="500"/>

*Figure 1. Emergency room.*

Let us say you work as an emergency room doctor in a hospital, and you, on average, treat ten patients daily. Suddenly, the number of patients admitted to the emergency room rises starkly.

__Descriptive analytics__ would help you explain what happened by effectively visualizing comprehensive, accurate, and real-time data. Tools: Power BI, Tableau, Excel, SQL, etc.

__Diagnostic analytics__, in turn, explores the data further, looking to separate patterns (e.g., correlation) and find the causes of the issue at hand. In other words, it helps you answer the 'Why' question, - i.e., 'Why is there a sharp increase in the number of patients admitted to the emergency room?'. The patient's symptoms, such as couching, and muscle ache, might, for example, point toward one specific viral infection, such as COVID-19.

__Tools:__ Power BI, Excel, R, Python, etc.

Then, __predictive analytics__ would answer the question 'What will happen in the future?' by providing a forecast of the number of patients with COVID-19-related symptoms that need to be admitted to the emergency room in the next couple of weeks.

__Tools:__ R, Python, Weights & Biases, AWS SageMaker, Azure Machine Learning etc.
__Technique:__ Machine learning

Finally, __prescriptive analytics__ would help you decide what to do next, - e.g., to account for the increase in patients with COVID-19-related symptoms admitted to the emergency room, it is suggested to increase the number of staff accordingly.

__Tools:__ R, Python, SPSS, SAS, etc.
__Technique:__ Statistical modelling

__1.1b__ Come up with at least one situation, where you could deploy a descriptive, diagnostic, predictive, and prescriptive analysis. Elaborate on your answer.

__1.2c__ [Power BI](https://powerbi.microsoft.com/en-us/) is one of the most popular dashboarding tools. List another dashboarding tool, and provide at least one 'strength' and 'weakness'. Write your answer down.  

Block B, will be all about predictive analytics. In particular, you will learn to model data using various machine learning algorithms, such as logistic regression and k-means clustering. This block, we will use to teach you the basics of descriptive and diagnostic analytics by analysing Sustainable Development Goals data with a dashboarding tool called Power BI. More on this next week!

***

### 1.2 Predictive analytics: To learn or not to learn...

Artificial intelligence is a wide-ranging field of research that focuses on building intelligent machines capable of performing tasks that typically require human intelligence. In this section, we will take a look at the three main approaches to predictive modelling in the field of AI:

<img src="./images/ParadigmsAI.png" alt="The field of AI" width="700"/> \
*Figure 2. The field of AI.*

Rule-based systems/Symbolic AI also referred to as 'Good Old Fashioned AI,' states that '... all intelligent behaviour can be captured by a system that reasons logically from a set of facts and rules describing the domain' (Russel and Norvig, 2020). In contrast, (Classic) Machine learning and Deep learning/Connectionist AI do not require a symbolic representation. By feeding the systems with raw information, it can analyse and construct its own implicit knowledge, which in turn can be used to solve a data task, such as the one below.

#### Example: GP health check

Imagine being a data scientist whose task is to develop an analytical model to assist GPs in assessing patients' overall health by predicting if they are 'fit' or 'unfit' based on a few health-related characteristics.

Before you can start to build your model, i.e., apply an algorithm to your dataset, you must select one of the three approaches:

<img src="./images/ParadigmsAILearning.jpg" alt="Types of predictive analytics (learning)" width="700"/> \
*Figure 3. Types of predictive analytics (learning).*

Let us use the following patient record as input for our analytical model:

<img align="left" src="./images/UnhealthyPerson.jpg" alt="Patient record" width="500"/>

&nbsp;&nbsp;&nbsp;Name: Hans Janssen
&nbsp;&nbsp;&nbsp;Age: 29
&nbsp;&nbsp;&nbsp;Exercise: 0 hours per week
&nbsp;&nbsp;&nbsp;Food: every day a bowl of Brinta, and at least five times per week junk food
&nbsp;&nbsp;&nbsp;Work: at last 60 hours per week

<br clear="left"/>
<br>

To determine if a patient is 'fit' or 'unfit,' you could create the following flowchart that shows the various outcomes from a series of decisions:

<img src="./images/DecisionTreeV2.jpg" alt="Decision Tree" width="600"/>

*Figure 2. GP health check: 'Is a patient fit?'.*

A flowchart or decision tree, such as the one depicted above, is a typical example of a rule-based system/Symbolic AI model; it requires handcrafted rules created by a (domain) professional. A rule could be, for instance, if a patient is below 30, and eats lots of junk food, the model should classify this patient as 'unfit':

<img src="./images/UnhealthyPersonOutput.png" alt="Patient model output" width="500"/>

<br>
<br>

The problem with these rule-based system/Symbolic AI models is that they are rigid; the rules, and nothing else, determine if an action or inaction should be taken. Consequently, models who deploy this approach do not respond well to a changing environment. For instance, say all the major fast-food vendors have improved their menus in terms of health; on average, their food contains significantly more nutrients and less harmful fats than before. As a result, regularly eating fast food is not considered unhealthy anymore. However, your rule-based system/Symbolic AI model still thinks it is one of the decisive factors of an unhealthy lifestyle. Therefore, a patient who should be classified as 'fit' based on their junk food eating habits will be classified as 'unfit'.      

It is here where the other approaches, (classic) machine learning, and deep learning/Connectionist AI, come to the rescue. Although using different styles of learning, both 'learn' from the data that is fed to them.

If we look at (classic) machine learning, we see it has a separate feature extraction and model building phase. Features are distinctive characteristics of input patterns that help in differentiating between the various output categories (i.e., 'fit' and 'unfit'). For example, feature extraction, executed by the data scientist, helps the machine learning model identify essential properties of input patterns such as regular exercise and eating junk food. Concerning model building, a machine learning model 'learns' from past data and adjusts its responses accordingly.  Initially, the model will misclassify patients such as Hans Janssen, but eventually, it will adjust its rules to account for the changed situation:

<img src="./images/UnhealthyPersonOutputV2.png" alt="Patient model output" width="500"/>
<br>
<br>

Deep learning/Connectionist AI, completely automates the feature extraction and model building phase. The model, not the data scientist, engineers the features; they are 'learned' through evaluating past data, and are often perceived as uninformative from the human perspective due to their numerical and distributed nature. Remember, computers think in ones and zeros, while we humans tend to think in high-level concepts such as exercise and eating lots of fast food. Concerning model building, deep learning/Connectionist AI models work similarly to (classic) machine learning models. They both learn from past experiences.

To deepen our understanding, let us watch a couple of videos, and complete some exercises:

__1.2a__ Watch the video 'What is Machine Learning?' by IBM.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/9gGnTQTYNaE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 2. 'What is Machine Learning?' by IBM.*

__1.2b__ Define the terms 'supervised' and 'unsupervised' learning. How do these types of machine learning differ from each other? Write your answer down.

__1.2c__ Watch the video on symbolic AI by the YouTube channel CrashCourse.

<iframe width="560" height="315" src="https://www.youtube.com/embed/WHCo4m2VOws?controls=0&amp;start=2" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 3. Symbolic AI by CrashCourse.*

__1.2d__ Define the terms 'inference', and 'expert system' (Be concise!).

__1.2e__ Are artificial neural networks (ANNs) similar to the human brain? Support your answer with arguments.

__1.2f__ An ANN uses a a) symbolic or b) connectionist approach to AI? Select one of the options, and explain your choice.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Visit <a href="https://playground.tensorflow.org/#activation=tanh&batchSize=10&dataset=circle&regDataset=reg-plane&learningRate=0.03&regularizationRate=0&noise=0&networkShape=4,2&seed=0.12586&showTestData=false&discretize=false&percTrainData=50&x=true&y=true&xTimesY=false&xSquared=false&ySquared=false&cosX=false&sinX=false&cosY=false&sinY=false&collectStats=false&problem=classification&initZero=false&hideText=false/">Tensorflow's Playground</a> to experiment with artificial neural networks (no code needed).
</div>

In the last couple of years, there has been a reappraisal of symbolic AI because, among others, it is less susceptible to the so called 'Problem of opacity'. Minsky defines the problem as follows: '... the knowledge embodied inside a network's numerical coefficients is not accessible outside that net.' (1991). In other words, it is difficult to know why these connectionist models do what they do or how they work.

__1.2g__ Can you think of a real-life scenario where an AI method that uses a symbolic approach would be more suited than a method that uses a connectionist approach? Explain your answer.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Note: When you are finished with the independent study material, and still have some time left, try to apply your newly gained knowledge to the Creative Brief.
</div>

***