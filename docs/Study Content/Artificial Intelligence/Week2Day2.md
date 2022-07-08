---
sort: 7
---

## Taxonomy of AI (1)

In today's independent study material, you will learn to define the terms 'data', 'information' and 'knowledge'. Furthermore, we will look at the four types of data analysis methods - i.e. descriptive, diagnostic, and predictive. 

## Learning objectives

1. Define the terms 'data', 'information' and 'knowledge'
2. Describe the four types of data analysis methods; descriptive, diagnostic, predictive, and prescriptive
2. Provide an example for each of the four types of data analysis methods

## Questions or issues?

If you have questions or issues regarding the course material, please fill out the 'How Can We Help?' form under the section ['Ask me anything'](https://adsai.buas.nl/Contact%20Us/). A member of our teaching staff will respond as soon as possible.

***

## 1) What is data, information and knowledge?

>An ounce of information is worth a pound of data.
<br>An ounce of knowledge is worth a pound of information.
<br>An ounce of understanding is worth a pound of knowledge ([Source](http://faculty.ung.edu/kmelton/documents/datawisdom.pdf)). 

__1a__ Although the terms 'data', 'information', and 'knowledge' are often used interchangeably, they are not the same. Read [From Data to Wisdom](http://faculty.ung.edu/kmelton/documents/datawisdom.pdf) by Ackoff, and [Data Demystified — DIKW model](https://towardsdatascience.com/rootstrap-dikw-model-32cef9ae6dfb
) by Figueroa to see how these terms represent different stages of value creation from data. 

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Use the incognito mode of your browser to freely access blogs posted on popular AI/Data Science websites, such as medium.com, and towardsdatascience.com.
</div>

__1b__ Watch the video on data information, and knowledge by Charlie Broomfield. 

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/QsP5WGv0aQc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 1. Theory 1 Topic 4.1.1 Data Information and Knowledge.*

Now, let us take a closer look at the DIKW pyramid, and complete an exercise to deepen our understanding of the aforementioned concepts.

<img src="./images/DIKW.jpg" alt="Doctors emergency room" width="600"/>

*Figure 1. DIKW pyramid.*

__1c__ Provide two additional examples, where you specify the four DIKW stages: 

| A. Example  |  B. Data |  C. Information  | D. Knowledge | E. Wisdom |
|---|---|---|---|---|
| 1. [Snow](https://blog.hslu.ch/majorobm/2020/03/18/kne-knowledge-management-part-1/) | It is snowing  | The temperature dropped below 0 degrees, the humidity went up by 5% within the last two hours and it started snowing at 5 p.m.   | Due to the drop in temperature and the increase in humidity, water particles in the cloud froze to ice on tiny grains of dust. More and more particles gathered together which renders the atmosphere unable to hold them anymore. On their way down to earth, the remaining water vapor freezes and crystals form which connect and hook together thereby creating a snowflake.      | Based on previous observations and statistical models, we are able to predict the weather in the future. We developed an understanding of the different interactions between temperature changes, evaporation and snow.| 
| 2.    |   |   |   |   | | 
| 3.   |   |   |   |   | | 

Fill in the blank spots. 

***

## 2) Data analysis methods

Data analysis is the process of transforming raw data, such as texts, images, audio, numbers, and videos, into usable information. There are many different data analysis methods, depending on the type of research. The four most commonly used methods are listed below:

- Descriptive Analytics: tells you what happened in the past
- Diagnostic Analytics: helps you understand why something happened in the past
- Predictive Analytics: predicts what is most likely to happen in the future
- Prescriptive Analytics: recommends actions you can take to affect those outcomes ([Source](https://insightsoftware.com/blog/comparing-descriptive-predictive-prescriptive-and-diagnostic-analytics/))

In the field of AI, we mainly perform predictive analytics:

> Predictive analytics is the use of data, statistical algorithms and machine learning techniques to identify the likelihood of future outcomes based on historical data. The goal is to go beyond knowing what has happened to providing a best assessment of what will happen in the future ([Source](https://www.sas.com/nl_nl/insights/analytics/predictive-analytics.html)).

However, you cannot successfully perform a predictive analysis before you have completed a descriptive and diagnostic analysis.  

#### Example: COVID-19

<img src="./images/hospital.jpg" alt="Doctors emergency room" width="400"/>

*Figure 2. Emergency room.*

Let us say you work as an emergency room doctor in a hospital, and you, on average, treat ten patients daily. Suddenly, the number of patients admitted to the emergency room rises starkly.

*__Descriptive analytics__* would help you explain what happened by effectively visualizing comprehensive, accurate, and real-time data. Tools: Power BI, Tableau, Excel, SQL, etc.

__2a__ Watch the video What is Descriptive Analytics? - Data Science Wednesday by Decisive Data.

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/cHGhSj_Ax-0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 2. What is Descriptive Analytics? - Data Science Wednesday.*

*__Diagnostic analytics__*, in turn, explores the data further, looking to separate patterns (e.g., correlation) and find the causes of the issue at hand. In other words, it helps you answer the 'Why' question, - i.e., 'Why is there a sharp increase in the number of patients admitted to the emergency room?'. The patient's symptoms, such as couching, and muscle ache, might, for example, point toward one specific viral infection, such as COVID-19.

__Tools:__ Power BI, Excel, R, Python, etc.

__2b__ Watch the video What is Diagnostic Analytics? - Data Science Wednesday by Decisive Data.

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/BPshmz9qxxU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 3. What is Diagnostic Analytics? - Data Science Wednesday.*

Then, *__predictive analytics__* would answer the question 'What will happen in the future?' by providing a forecast of the number of patients with COVID-19-related symptoms that need to be admitted to the emergency room in the next couple of weeks.

__Tools:__ R, Python, Weights & Biases, AWS SageMaker, Azure Machine Learning etc.

__Technique:__ Machine learning

__2c__ Watch the video The Fundamentals of Predictive Analytics - Data Science Wednesday by Decisive Data.

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/4y6fUC56KPw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 4. The Fundamentals of Predictive Analytics - Data Science Wednesday.*

Finally, *__prescriptive analytics__* would help you decide what to do next, - e.g., to account for the increase in patients with COVID-19-related symptoms admitted to the emergency room, it is suggested to increase the number of staff accordingly.

__Tools:__ R, Python, SPSS, SAS, etc.

__Technique:__ Statistical modelling

__2d__ Watch the video What is Prescriptive Analytics? - Data Science Wednesday by Decisive Data.

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/046dYegfGrc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 5. What is Prescriptive Analytics? - Data Science Wednesday.*

__2e__ Come up with at least one situation, where you could deploy a descriptive, diagnostic, predictive, and prescriptive analysis. Elaborate on your answer.

__2f__ [Power BI](https://powerbi.microsoft.com/en-us/) is one of the most popular dashboarding tools. List another dashboarding tool, and provide at least one 'strength' and 'weakness'. Write your answer down.  

__2g__ In Week 4, you will start to develop your own dashboard with Power BI. In our program, we stimulate self-directed learning, which includes setting your own goals, and identifying relevant sources of information (in the first two years under supervision of a teaching staff member). Let start with the latter; find at least three useful Power BI resources for your Block A project (e.g., books, online tutorials, etc.). List the resources (, and share them with your peers via a post in Microsoft Teams' 'Coffee Corner').  

Block B, will be all about predictive analytics. In particular, you will learn to model data using various machine learning algorithms, such as logistic regression and k-means clustering. This block, we will use to teach you the basics of descriptive and diagnostic analytics by analysing Sustainable Development Goals data with a dashboarding tool called Power BI. More on this next week!

***

## 3) DataLab preparation (Week 2, DataLab 1)

- [ ] Search the Internet, and find out what the Loebner Prize is all about. Open your [**YourName_blockA_DataLabPreparation**] markdown file, and list at least three facts. Elaborate on your findings. Commit the changes, and push the markdown file to your personal BUas repository, which is listed [here](ADD LINK).

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Note: When you are finished with the independent study material, and still have some time left, try to apply your newly gained knowledge to the Creative Brief.
</div>

***
