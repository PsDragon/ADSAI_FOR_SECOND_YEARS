---
sort: 15
---
# Explanatory versus Predictive Modelling Approach
Today we will review different types of analyses; and all the different terms people like to give them (that's a downside of an emerging field, R.I.P. us). We're also going to look at what constitutes a good or bad prediction. So, today we'll explore some theoretical concepts and allow you to form a clearer picture of what constitutes data science. Therefore, we won't do a mock assignment as we don't apply this theory to our paper directly. You can, however, use your improved vocabulary to supplement the discussion and conclusion section of your conference poster.

Learning objectives:
- understanding predictive analysis;
- understanding explanatory analysis;
- understanding the difference between descriptive, predictive and explanatory analysis;
- understanding what Big Data is;
- making good and bad predictions.

Table of contents:
0. Difference between descriptive, predictive and explanatory analysis: 0.5 hours
1. Descriptive analyses: 0.5 hours
2. Predictive analyses: 0.5 hours
4. Good and bad predictions: 0.5 hours

## Questions or issues?
If you have any questions, please first ask your peers or ask us in the daily Q&A at 16:00!

Good luck!


## 0) Differences between descriptive, predictive and explanatory  analysis
In the last weeks, we mainly looked at different kinds of descriptive analyses: what can we tell by the features of the data, such as summary statistics, clustering of data or a visualisation of the distribution of the dataset. Descriptive statistics are like the groundwork and foundations of a building: you need to prepare them before you start building any models. Once set up, you can begin conducting explanatory or predictive analyses. These are distinct in that explanatory analyses are based on a hypothesis: you make assumptions about the data, whereas predictive models don't make these assumptions and just try to predict an outcome based on the dataset.

The following videos explain this difference in more detail:

Predictive analyses (or models) are also called predictive analytics or inferential statistics depending on the context you used them in; for our purposes, they are interchangeably, though.
<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/data-science-foundations-fundamentals-5/predictive-analytics?autoplay=false&claim=AQEEnQ_3dSBz0wAAAXvk7DfWWccaOqPCLzWruT8AIwEZLdN2FoY4fVPcRydBlOV7KoiJiscztJH8y9Se5Mst1RTtasVL2_pzW1GOG1sFfgjaO93lDFSz4JtpAXsV1UpEnt42FwIWhhQ3rSdbDVsuiUxUFWaBOJ79Y-KVt4eTGBPeF7m_SgaNYIZ-Mpb0lPnwjS99g9SFnzZVoo7XFvEhkLDdMXV2KqaYLrukQjMkGd-kKM_BkmvkwkPJQPFGsAZ2rT6VlNK3lXWuJheG8xqgILd4E-yHm9pYwbg6YfiyIaKKQw9LDeduaRqigoWFgQwSsEdhRWeb2W-C4eKRfuxppHPATUTn8zwqnAZV-RTzk3VBamPKU8KM3XDaKTnkBnpYs5ZiVXLVLKllacvAcJihnvN5snScm_7rYJfkOBTwBNmNaC-y_kKdeCVWXa4O94Jfebec5IlHqpX2Yy9Ycb2K5VWVlj4-8xFW8WKLDBOLo3EJ25lbxvyEc8HMzn1IKYVLOMgaWLCUciLSRReuKboWtVBwgGcRMmmthCwpqnRvrI4AkwqpD57MSz7vQMBuCq4Ao0tgD-skEIsbPzngZY_w2BjZh201DqKnaOJcgTDiEhLfLJktbWI-nardtls5UDLsXZfu-O-ZiD-qWFZTQtGEcO6aBnBSqQJ1MzD-OLzl8ltX2YMBQ_4PKh5KrEsnoWcoVdd5griwIfYCZLqwAngTtFAjKaiY4nRE_eVkm7BOQkE9SEPXAjE&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BKOLdZJKZS%2FWtO9NI%2FWblig%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5/predictive-analytics?trk=embed_lil">Predictive analytics</a></strong> from <strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5?trk=embed_lil">Data Science Foundations: Fundamentals</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/barton-poulson?trk=embed_lil">Barton Poulson</a></strong></p>

Explanatory analyses (or models) are also called prescriptive analytics and rely on causal relationships and probability theory. Given the likelihood that a causal relationship is true, one should observe X or Y. That's why you need a hypothesis and need to make assumptions about your data; otherwise, you're doing predictive analysis. Explanatory/prescriptive analysis are terms more often used in the business world, but in the world of science, they will be called inferential (or inductive) statistics.

<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/data-science-foundations-fundamentals-5/prescriptive-analytics?autoplay=false&claim=AQHghnQ95RzivQAAAXvk9J7-18uROfg1zsgfJTX4fA2MJC8BkM_YFWLll_v7uhMyasXuSyyilrh5yP_f65PHt8djd2Vhd57zh_fnXX6juPYM6bYIKYhnDJ4nooO5SObL5jR1kF1lFJ7jEcjTnCdXh96CcWQ5IwCQILVkHf9HW11vbRdDOttl_f3JLPM50iCVACNPVlrS_MlUBoHb-v_sxe9tJ6PeOBaCeOhoH4TJOg-V4llSn4dUbUeUTNsCn9g1Z-yMbfDITkNx7oRpzRQSe9ociJgioK2rcHm0RKPi7KHATojZKfZLyl5xzBD5MJehXWywPL-Rs-p6raShX7nUAOskb0UrOQ0Iywzb46xghJRnKRm37JD59N4Wo8U4MMRkJaFavKJmTWqUrMqLk_ZlA-7dAzdD9vwDB3uCkIdT5LoZTCqXnCFKV_wvvRqP5LY_e-KfZ3obmC_xataOJ4lHlvhzN62THS_EF0r9XZ84QuMeCUZLrnrundLEJGuNlojkWNK_uEesj5vyMV08YfL-Ha9te904GQJja5ZAr02-2SjYW1muMVY2y-GHxSQ22zyP4SKGT9QBJ27c2yoofyQ0o0Jdo_FcgMNcgjlm8SQK9IwhCYl8T-1aHUya7Zgz4SMQr3oEd7s7xalISZVOCC8uMIcYj2uXCVzQqtBzvRlbV9HTJaqJSVji08M3IMvbX99Vgom3SK-cBRAHuvm4Tx5eFtvr-rAmlgLVn5y35dkR8TW1iUtoKjQ&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BwfPhGwXlR6CU%2FS9hsbiAnQ%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5/prescriptive-analytics?trk=embed_lil">Prescriptive analytics</a></strong> from <strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5?trk=embed_lil">Data Science Foundations: Fundamentals</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/barton-poulson?trk=embed_lil">Barton Poulson</a></strong></p>

Next year, we will dive deeper into explanatory analyses and hypothesis testing. But, for now, all you need to know is the difference between the two.

## 1) Descriptive analyses
Descriptive statistics now might seem a bit boring. So why don't we explain and predict all these cool and exciting things right now? What are we waiting for?!?! ☹
Well, that's because the data science landscape is getting more complex as technology gets more advanced. To illustrate, let's get a brief overview of Big Data, a fancy term, but it shows why descriptive analyses are so critical in this day and age.


<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/data-science-foundations-fundamentals-5/big-data?autoplay=false&claim=AQF-BJG7Kax9WQAAAXvlBuLRIClm1ZdJ22TjeRmRyjqDu7NK1mpjoTRV81GXryE7AORDz9-63gi_Es6M4Di1UgU0Z5iv4xeFh2w4z3qy1NxwXBFwci39Gn1HwCymhUWJW4wwZ3qUrJw755W9OAqiDTby9yosbbd2lLgALRtUkCxnOGIoVmP23AiXJqmpzXFX0rZ7lcIPTzxyf01gxIEsKLUQPkLiMEfjmzQsP0jWB4fv5cxJPrQxdsjK4zfmKti3Q9ymDUvsCsznHIFeqQFzaxEUeNkuF7w3PNNVTkdXfoRUMCD3MK9MPd-KiAqRDl-rggxoZhHAxwDIwTWpMtDAc-bmGQhWjwCv_Fe5m9uCsA_vH8gpfFi5a7EE5SWq_GZTar2XMW5cr8RzpZBscaBUR7hE5VH8G-AzO8BxH6JO8HUMq0ggAu2GmimjlsOUX_G6SVZda4MOtwn4t5O7DPxHxr4NQcA9YMJwNTZIxk2SDAEy4eOKVdzOnaFfLqkgBXpOoqofMNdQy4fDqcKRt_ZQYaagVc2spdfQ3yyPMABoqQjAbqFX2YqlJL3o3iaUqn6Ze-XrnZyukh1-wLMDJIPHyNYuRFz7v2YLyJLwy6a7D_KvYdH7OvoWk13RrKYS4kKXovEVnY94yydshoTdM-UDpsrzmmghSBuX4WcdEo0bNy8pvtBU6kO-26gF8JH55Xbv-IcFislFB9QYH5WTXXJEKQCPx-QTErgDRoW2fQt53QtxcAU2lpM&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BSCPTBzegQOyjsVwJnSM5%2Bg%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5/big-data?trk=embed_lil">Big data</a></strong> from <strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5?trk=embed_lil">Data Science Foundations: Fundamentals</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/barton-poulson?trk=embed_lil">Barton Poulson</a></strong></p>

So, let's review descriptive statistics again with renewed vigour and enthusiasm!

<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/data-science-foundations-fundamentals-5/descriptive-analyses?autoplay=false&claim=AQFLUUcCMFXA5AAAAXvPfCB087aZmzNq44ULXX1VPO-J0wCE3o4VnT6MvADQL5jlwCS81GKWY5wKKQ45taAJrRfpESTqkZ6ckAMB5znNCBbgWCerRUYd-hvGsJvm77pi8qvlvuJtpcbQ3eO1VaN2xO_eXfiwEdVQr3fwcnzXAz3AqE5_ljAa4AQT_a_y8Yn7SSVDHaeZl6SpfBMfb2AP4JkDEAQL1GwIOKBTrpx1MhNy43CjWeADagO0DiCaMHSU9GTted1fKqIU3eI8Q-Cgw4U_J9Pi3cg2tXwCKo-Z_BT4VaXo1LGj9mpYvl4ysMlxltdxmMpfCkqkc0992TdFckXzGF9hMGerMbLvdaja6EAuLraJ3IWbWobCTJv6Ok-Q_0VFR_33L_aHyq3hiYQk5r1H1EaphhW03oQi0kl6rtmpx2YQlfCgMrNydFdcOo-2YJRcGWsvys8wh-mJu06VBh2p3FDViXDs7uEpazbpOTL9ZxSdaay6knkYg9pz9k6rQ-cxqlV_umRDaJAtJ-NyaVXe-24m3zD7pXS7e7M4OwjiOCDGDqMaRUkpFG8kIJABGqfBoqu72O9K2_92W8oXS7jkqM6NM7jK9icyHRRPyEfWYSAztHZ4K_avIHgBdM0bYLYuzmviJND4i8uvfXtTQJtIjTweT3iJiyhFUdXbMjrYbrWs2eIl7TqrS-nhurcD-UCr0aihXzupTs48X2cEYj6-YrD-bh8541tOKZ5-ek5g9ADgYr4&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BrDasUdUbRJCZVS6X%2BCNFGg%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5/descriptive-analyses?trk=embed_lil">Descriptive analyses</a></strong> from <strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5?trk=embed_lil">Data Science Foundations: Fundamentals</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/barton-poulson?trk=embed_lil">Barton Poulson</a></strong></p>


## 1) Predictive models
Predictive modelling is a flavour of data science where statistics are used to predict outcomes. It is not based on probability theory but on detection theory: trying to identify meaningful information which helps the prediction and separates the unhelpful information (or noise) in the data.

<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/data-science-foundations-fundamentals-5/predictive-models?autoplay=false&claim=AQHsd34ZISRWhwAAAXvPe3j42WLVsIAmJNsBaxQ10iLbGftIqEY0Ii9McjSJVUhrZnV8QkEv6WnqLaj8wtW7ZDShDX5t44RVuNJRh065_9ysgpyISm60J6g-C_qoH0Pj-59Kiy8WYMUzS6ILjw1ddhjZP-CFSSJbI0r4K5HYJL1u1JLb3emYAYW9HsilGn2wtTycvHvfvikeGGgXm2zRdrXVQySkxYad7A5JnY4mJucELpWUkjPgRVSpw_iPjmJFXQZlSTzcMw2zLvyDiGPTlZfsa3mqtuMF2vMgXxuEvuQUHs1o0aaadTZDB5PQCzUnozY5YKYOryKKZFryv9fmsvgb-wttGaFQWRw3PIN70UfSihf--BQIXDcZmSdu_ksGVRFNtZ9EQI8or8ek-Daj4m1WXI8bnWejKpZlNNwdAqIMZHYI6L1-5OQfkYm_LNjsuXZiXMuFMNX-_kRjg0isjwO8qeiUpkvqXUWj3DhVTkbPhL8uVI8DlGyX4hYUoa4U7CcOo7-tup3oqbbHmjqe226iU_91XMVUXtUgZN-E2A-t4qzzMy1AoTuFZILtal_MWUTLW2lRSMonsgPamThE3EPF7o-uezDRwcoq7X4NFdZrSAqOwx9UEYsIVO00l5zhLdNDCr7njCrBblfiS7j_M2peYQr3p9NwLYo3lSyXZ4RLwMNyM6A3jd7lWZSPnQ2-lWpJ6ZmtfLdnKJH11PZubkqqc3Q53nt1NS_cRU3JB1FdEjr_CAk&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BSMmiVclGRvScQhwvhH41Tw%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5/predictive-models?trk=embed_lil">Predictive models</a></strong> from <strong><a href="https://www.linkedin.com/learning/data-science-foundations-fundamentals-5?trk=embed_lil">Data Science Foundations: Fundamentals</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/barton-poulson?trk=embed_lil">Barton Poulson</a></strong></p>

Machine learning and deep learning are good examples of predictive models, and we'll dive into machine learning next block!


### Good and bad predictions
We’re going to talk about why many predictions fail - specifically we’ll take a look at the 2008 financial crisis, the 2016 U.S. presidential election, and earthquake prediction in general. From inaccurate or just too little data to biased models and polling errors, knowing when and why we make inaccurate predictions can help us make better ones in the future. And even knowing what we can’t predict can help us make better decisions too.
<iframe width="560" height="315" src="https://www.youtube.com/embed/5l60dMUhY5o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

We're going to take a look at some of the times we've used statistics to gaze into our crystal ball, and actually got it right! We'll talk about how stores know what we want to buy (which can sometimes be a good thing), how baseball was changed forever when Paul DePodesta created a record-winning Oakland A's baseball team, and how statistics keeps us safe with the incredible strides we've made in weather forecasting.
<iframe width="560" height="315" src="https://www.youtube.com/embed/uJFdLKkuYc4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

# 2) Daily Q&A
At 16:00, there's a online meeting you're encouraged to take part in to ask questions and to discuss our progress and reflect on today activities.

Tomorrow we will recap block A, specifically descriptive analyses because they're so fundamental.

## Resources
- [Learning Statistics with R, by D. Navarro (2018)](https://learningstatisticswithr.com/)
- [Discovering Statistics using R, A. Fields et al. (2012)](https://eds.b.ebscohost.com/eds/detail/detail?vid=2&sid=785a4ba4-77c1-4205-be1c-f6cd920efb78%40pdc-v-sessmgr02&bdata=JnNpdGU9ZWRzLWxpdmU%3d#db=cat08862a&AN=bus.KOHA.OAI.BUAS.28091)
