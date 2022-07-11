---
sort: 16
---
# Explanatory versus Predictive Modelling Approach + more Reporting
Today we will review different types of analyses; and all the different terms people like to give them (that's a downside of an emerging field; R.I.P. us). We're also going to look at what constitutes a good or bad prediction. So, today we'll explore some theoretical concepts and allow you to form a clearer picture of what constitutes data science. Therefore, we won't do a mock assignment as we don't apply this theory to our dashboard directly. You can, however, use your improved vocabulary to supplement the discussion and conclusion section of your dashboard.

Learning objectives:
- understanding predictive analysis;
- understanding explanatory analysis;
- understanding the difference between descriptive, predictive and explanatory analysis;
- understanding what Big Data is;
- making good and bad predictions.

Table of contents:
0. Difference between descriptive, predictive and explanatory analysis: 2 hours (Optional)
4. Good and bad predictions: 0.5 hours
5. Workshop on reporting: 5.5 - 7.5 hours

## Questions or issues?

If you have questions or issues regarding the course material, please fill out the 'How Can We Help?' form under the section ['Ask me anything'](https://adsai.buas.nl/Contact%20Us/). A member of our teaching staff will respond as soon as possible.

***



## 0) Differences between predictive and explanatory  analysis
In block A we discussed these thoroughly the difference between [descriptive, diagnostic, predictive and prescriptive analytics](https://adsai.buas.nl/Study%20Content/Artificial%20Intelligence/Week2Day2.html#2-data-analysis-methods); please click the link if you need a refresher! In the last weeks we took a step back and we mainly looked at different kinds of descriptive analyses: what can we tell by the features of the data, such as summary statistics, clustering of data or a visualisation of the distribution of the dataset. Descriptive statistics are like the groundwork and foundations of a building: you need to prepare them before you start building any models. Once set up, you can begin conducting diagnostic, predictive or explanatory analyses. These are distinct in that diagnostic analysis look for a cause based on a set of effects, whereas explanatory analyses are based on a hypothesis: you make assumptions about the data, whereas predictive models don't make these assumptions and just try to predict an outcome based on the dataset potentially given some historic insight. 
To get to know more about predicting and explaining, [read the following paper](https://github.com/BredaUniversityADSAI/ADS-AI/raw/3489e4a73b8e11c1ac3daaae934301a8af06b629/docs/Study%20Content/DataScience/assets/To%20Explain%20or%20to%20Predict%20-%20Galit%20Shmueli.pdf).

### Big Data
Descriptive statistics now might seem a bit boring. So why don't we explain and predict all these cool and exciting things right now? What are we waiting for?!?! ☹
Well, that's because the data science landscape is getting more complex as technology gets more advanced. To illustrate, let's get a brief overview of Big Data, a fancy term, but it shows why descriptive analyses are even more critical in this day and age.


<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/data-science-foundations-fundamentals-5/big-data?autoplay=false&claim=AQF-BJG7Kax9WQAAAXvlBuLRIClm1ZdJ22TjeRmRyjqDu7NK1mpjoTRV81GXryE7AORDz9-63gi_Es6M4Di1UgU0Z5iv4xeFh2w4z3qy1NxwXBFwci39Gn1HwCymhUWJW4wwZ3qUrJw755W9OAqiDTby9yosbbd2lLgALRtUkCxnOGIoVmP23AiXJqmpzXFX0rZ7lcIPTzxyf01gxIEsKLUQPkLiMEfjmzQsP0jWB4fv5cxJPrQxdsjK4zfmKti3Q9ymDUvsCsznHIFeqQFzaxEUeNkuF7w3PNNVTkdXfoRUMCD3MK9MPd-KiAqRDl-rggxoZhHAxwDIwTWpMtDAc-bmGQhWjwCv_Fe5m9uCsA_vH8gpfFi5a7EE5SWq_GZTar2XMW5cr8RzpZBscaBUR7hE5VH8G-AzO8BxH6JO8HUMq0ggAu2GmimjlsOUX_G6SVZda4MOtwn4t5O7DPxHxr4NQcA9YMJwNTZIxk2SDAEy4eOKVdzOnaFfLqkgBXpOoqofMNdQy4fDqcKRt_ZQYaagVc2spdfQ3yyPMABoqQjAbqFX2YqlJL3o3iaUqn6Ze-XrnZyukh1-wLMDJIPHyNYuRFz7v2YLyJLwy6a7D_KvYdH7OvoWk13RrKYS4kKXovEVnY94yydshoTdM-UDpsrzmmghSBuX4WcdEo0bNy8pvtBU6kO-26gF8JH55Xbv-IcFislFB9QYH5WTXXJEKQCPx-QTErgDRoW2fQt53QtxcAU2lpM&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BSCPTBzegQOyjsVwJnSM5%2Bg%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5/big-data?trk=embed_lil">Big data</a></strong> from <strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5?trk=embed_lil">Data Science Foundations: Fundamentals</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/barton-poulson?trk=embed_lil">Barton Poulson</a></strong></p>


## 1) Good and bad predictions
We’re going to talk about why many predictions fail - specifically we’ll take a look at the 2008 financial crisis, the 2016 U.S. presidential election, and earthquake prediction in general. From inaccurate or just too little data to biased models and polling errors, knowing when and why we make inaccurate predictions can help us make better ones in the future. And even knowing what we can’t predict can help us make better decisions too.
<iframe width="560" height="315" src="https://www.youtube.com/embed/5l60dMUhY5o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We're going to take a look at some of the times we've used statistics to gaze into our crystal ball, and actually got it right! We'll talk about how stores know what we want to buy (which can sometimes be a good thing), how baseball was changed forever when Paul DePodesta created a record-winning Oakland A's baseball team, and how statistics keeps us safe with the incredible strides we've made in weather forecasting.
<iframe width="560" height="315" src="https://www.youtube.com/embed/uJFdLKkuYc4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 2) Workhop: Reporting
Time for the [the workshop part](https://app.datacamp.com/learn/courses/report-design-in-power-bi) of this class to expand our data reporting skills in Power BI so we can better write the and report your results. Complete the entire course and upload the certificate to github, reference the certificate in your learning log for this week.


## 3) Work on dashboard
Use your extra time to start working on your dashboard! Remember that on Wednesday we have a mock-presentation to practise and gather feedback, whereas the actual final presentation is this Friday! Remember that **the deadline for handing in the Dashboard is Thursday of week 7 at 17:00!**

## Up Next
Tomorrow we will look into user-experience design and work on our dashboard presentation for wednesday (mock-presentation to gather feedback).

## Resources
- [Descriptive Statistics, by Statistics LibreTexts)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Introductory_Statistics_(OpenStax)%2F02%253A_Descriptive_Statistics)
- [Graphing Distributions, by Statistics LibreTexts.)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Introductory_Statistics_(Lane)%2F02%253A_Graphing_Distributions)
-  [Descriptive Statistics, by Statistics LibreTexts)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Introductory_Statistics_(Shafer_and_Zhang)%2F02%253A_Descriptive_Statistics)
 - [Displaying and ANalysing Data with Graphs, by Statistics LibreTexts)](https://statics.teams.cdn.office.net/evergreen-assets/safelinks/1/atp-safelinks.html?url=https%3A%2F%2Fstats.libretexts.org%2FBookshelves%2FIntroductory_Statistics%2FBook%253A_Inferential_Statistics_and_Probability_-_A_Holistic_Approach_(Geraghty)%2F02%253A_Displaying_and_Analyzing_Data_with_Graphs)
