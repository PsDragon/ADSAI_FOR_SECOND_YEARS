---
sort: 15
---
# Explanatory versus Predictive Modelling Approach
Today is a sneak peek into the next block: an introduction to machine learning, testing the validity of your statistical analyses and what consitutes a good or bad prediction. So, today we'll explore some theoretical concepts which won't be part of the conference poster for this block. Finally, we'll have a short mock-exam to play around with some concepts we learn today.


Learning objectives:
- Test Statistics: confidence intervals and p-values;
- Machine learning primer;
- Making good and bad predictions.

Table of contents:
1. Test Statistics: 1 hour
2. Good and bad predictions: 1 hour
3. Machine learning: 1 hours
4. Mock Assessment: 1 hour


Good luck!


## 0) Descriptive analyses

<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/data-science-foundations-fundamentals-5/descriptive-analyses?autoplay=false&claim=AQFLUUcCMFXA5AAAAXvPfCB087aZmzNq44ULXX1VPO-J0wCE3o4VnT6MvADQL5jlwCS81GKWY5wKKQ45taAJrRfpESTqkZ6ckAMB5znNCBbgWCerRUYd-hvGsJvm77pi8qvlvuJtpcbQ3eO1VaN2xO_eXfiwEdVQr3fwcnzXAz3AqE5_ljAa4AQT_a_y8Yn7SSVDHaeZl6SpfBMfb2AP4JkDEAQL1GwIOKBTrpx1MhNy43CjWeADagO0DiCaMHSU9GTted1fKqIU3eI8Q-Cgw4U_J9Pi3cg2tXwCKo-Z_BT4VaXo1LGj9mpYvl4ysMlxltdxmMpfCkqkc0992TdFckXzGF9hMGerMbLvdaja6EAuLraJ3IWbWobCTJv6Ok-Q_0VFR_33L_aHyq3hiYQk5r1H1EaphhW03oQi0kl6rtmpx2YQlfCgMrNydFdcOo-2YJRcGWsvys8wh-mJu06VBh2p3FDViXDs7uEpazbpOTL9ZxSdaay6knkYg9pz9k6rQ-cxqlV_umRDaJAtJ-NyaVXe-24m3zD7pXS7e7M4OwjiOCDGDqMaRUkpFG8kIJABGqfBoqu72O9K2_92W8oXS7jkqM6NM7jK9icyHRRPyEfWYSAztHZ4K_avIHgBdM0bYLYuzmviJND4i8uvfXtTQJtIjTweT3iJiyhFUdXbMjrYbrWs2eIl7TqrS-nhurcD-UCr0aihXzupTs48X2cEYj6-YrD-bh8541tOKZ5-ek5g9ADgYr4&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BrDasUdUbRJCZVS6X%2BCNFGg%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5/descriptive-analyses?trk=embed_lil">Descriptive analyses</a></strong> from <strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5?trk=embed_lil">Data Science Foundations: Fundamentals</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/barton-poulson?trk=embed_lil">Barton Poulson</a></strong></p>


## 1) Predictive models
<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/data-science-foundations-fundamentals-5/predictive-models?autoplay=false&claim=AQHsd34ZISRWhwAAAXvPe3j42WLVsIAmJNsBaxQ10iLbGftIqEY0Ii9McjSJVUhrZnV8QkEv6WnqLaj8wtW7ZDShDX5t44RVuNJRh065_9ysgpyISm60J6g-C_qoH0Pj-59Kiy8WYMUzS6ILjw1ddhjZP-CFSSJbI0r4K5HYJL1u1JLb3emYAYW9HsilGn2wtTycvHvfvikeGGgXm2zRdrXVQySkxYad7A5JnY4mJucELpWUkjPgRVSpw_iPjmJFXQZlSTzcMw2zLvyDiGPTlZfsa3mqtuMF2vMgXxuEvuQUHs1o0aaadTZDB5PQCzUnozY5YKYOryKKZFryv9fmsvgb-wttGaFQWRw3PIN70UfSihf--BQIXDcZmSdu_ksGVRFNtZ9EQI8or8ek-Daj4m1WXI8bnWejKpZlNNwdAqIMZHYI6L1-5OQfkYm_LNjsuXZiXMuFMNX-_kRjg0isjwO8qeiUpkvqXUWj3DhVTkbPhL8uVI8DlGyX4hYUoa4U7CcOo7-tup3oqbbHmjqe226iU_91XMVUXtUgZN-E2A-t4qzzMy1AoTuFZILtal_MWUTLW2lRSMonsgPamThE3EPF7o-uezDRwcoq7X4NFdZrSAqOwx9UEYsIVO00l5zhLdNDCr7njCrBblfiS7j_M2peYQr3p9NwLYo3lSyXZ4RLwMNyM6A3jd7lWZSPnQ2-lWpJ6ZmtfLdnKJH11PZubkqqc3Q53nt1NS_cRU3JB1FdEjr_CAk&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BSMmiVclGRvScQhwvhH41Tw%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5/predictive-models?trk=embed_lil">Predictive models</a></strong> from <strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5?trk=embed_lil">Data Science Foundations: Fundamentals</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/barton-poulson?trk=embed_lil">Barton Poulson</a></strong></p>


### Good and bad predictions
We’re going to talk about why many predictions fail - specifically we’ll take a look at the 2008 financial crisis, the 2016 U.S. presidential election, and earthquake prediction in general. From inaccurate or just too little data to biased models and polling errors, knowing when and why we make inaccurate predictions can help us make better ones in the future. And even knowing what we can’t predict can help us make better decisions too.
<iframe width="560" height="315" src="https://www.youtube.com/embed/5l60dMUhY5o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We're going to take a look at some of the times we've used statistics to gaze into our crystal ball, and actually got it right! We'll talk about how stores know what we want to buy (which can sometimes be a good thing), how baseball was changed forever when Paul DePodesta created a record-winning Oakland A's baseball team, and how statistics keeps us safe with the incredible strides we've made in weather forecasting.
<iframe width="560" height="315" src="https://www.youtube.com/embed/uJFdLKkuYc4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>




## 3) Mock Assessment
 Create an R Script called BLA and save it to the GitHUb Classroom folder of the same name in your repository:




## Questions or issues?
In case you have any questions, please first ask your peers or send us a message on teams instead!

## Resources
- [https://swirlstats.com/students.html](https://swirlstats.com/students.html)
- [Swirl](https://swirlstats.com/help.html)
- http://swirlstats.com/scn/A_(very)_short_introduction_to_R.html
- Learning Statistics with R, by D. Navarro (2018):  https://learningstatisticswithr.com/
- Discovering Statistics using R, A. Fields et al. (2012): https://uk.sagepub.com/en-gb/eur/discovering-statistics-using-r/book236067
