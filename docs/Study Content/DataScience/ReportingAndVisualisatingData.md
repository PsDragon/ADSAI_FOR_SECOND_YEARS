---
sort: 13
---

# Reporting and Visualising Data

We start by looking back at our goal for the poster presentation: answering our research question. With that goal in mind, we will look at our report as a convincing narrative that we can supplement with helpful illustrations; or data visualisations. Then we'll start to dive into more advanced data visualisations and see if we can use our newfound knowledge on our data science project: the conference poster.

## Learning Objectives
Enable you to:
1. Make compellingly data reports;
2. Make compellingly data visualisations;

Please follow the links below to continue the class:
1. Lecture: 1.5 hours
3. Mock-Assessment: 6.5 (on your own discretion)

## Questions or issues?
If you have any questions, please first ask your peers or ask us in the daily Q&A at 16:00!

Good luck!


## 0) How do we report and visualise our data?
Well, essentially, you want to present your data, model, and information in such a way that it convinces the target audience. So let’s start by do the **entire** course below. It explains in detail how to present your data; by telling a story:
<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/learning-data-science-tell-stories-with-data/welcome?autoplay=false&claim=AQGLF8kjasMeUAAAAXuen5TSfhdh2cAnvMoTsvO52lYxxEb4n7Lygsq8xgWVc_t2uKuHWUouAfnbN-YZ2Or60T165YU6VLzBCBvpYTn_P7dOlCJRoAVJ-JJ8yldYWuk1v_lKzTu1GpQzzTuF1ZeNKT6MwFX_Oi691AqGuZOivDa49QpPKPpOKon-v-KsCIHbgJJVTW6VtpRbB89ZboYvRGmkUJ5ede3tplOLocmHOWtbgzbZcA041klfxZa-9zzTyzS0crqn-vFaIfJCcgssS17v8L7U6nsFgRhozesQJnxU9aELJmxp73k0N0_6mIIt4d2ucwto-bsGBvVZYPC_cGJKXM2RTs5clYbZqdYyTcNjR7QjM31Vhp_cSzsHzYX2KC-N1tWplU5zR8dFoRUviI6JbgAe9gbS0MAuhWblCAdAn8rewXw6tTfdfLFjJu0fkRjZ6yR37oAZwuf-XMDb_N2uXKNdAwDoF8Jc5dIBAGiFAAVXtGR4NLfuzHb6b7Hjs16BiU7SRWmTcUEcwNfQ8vVmRG1d61T4mkAqQlkyDq5xa-8qdVxgYRGKefkOliHUPG6D889Qzf82LJh8cCtCCdghQXr0tDhVAKrRRVZTBEg0As2WDfbDhYrchMkbJR3aq0twDECCb_S8FYTeaUgEFKHoVgVaMU7m4LcIcouQegttP-JLLJGYO3pFZZbbBHcQWn7494g3KmXgk1CgrTMFe_FAEM9DVvH2h80rSQJX9PM3aA&lipi=urn%3Ali%3Apage%3Ad_learning_content%3Bs0uW2hImQlqa7OO2gkel9Q%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/learning-data-science-tell-stories-with-data/welcome?trk=embed_lil">Welcome</a></strong> from <strong><a href="https://www.linkedin.com/learning/learning-data-science-tell-stories-with-data?trk=embed_lil">Learning Data Science: Tell Stories With Data</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/doug-rose?trk=embed_lil">Doug Rose</a></strong></p>


<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: If you are done early, and you want to learn some extra fancy data visualisations skills: do modules 8, 9 and potentially 10 as well of the Exploratory Data Analysis course in Swirl. This is not mandatory but offered to those who are interested.
</div>

## 1) ggplot2: Advanced data visualisations
Making data visualisations with a professional fidelity is something you'll learn over the course of year 1 and 2. However, there is no harm in trying this out, given that you're already confident about your data visualisation skills and understand how to and what makes your graphs better.

Watch the following video to get an idea of what ggplot2 is all about and the suite of packages it's developed for: the tidyverse.
<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/data-visualization-in-r-with-ggplot2/introducing-ggplot2?autoplay=false&claim=AQEJysFaaF2JKgAAAXvO7u_FroSokUC8s-QLb-y8xDveHU12iDExthC7T49LeYbQoS6WHEzLUHYQFe__wBBHQ98PF99wlmbjO9V99jNYbC-vKEiNTAWReNeRRvBLsHOogpk_JHgqznjID4sE2Lgq0qgMwwqXwsqf6TJMqxpMONjV5-Ir3xkLSJiDiC3nhJGUXszzYtJCyZ7QYaDBJgKwr2PN-fhrWTJpGHOIhBRDvRuSdrsSVjYpfWtOJKhkQ1b0KRWw7WWEHnP1_Qah-l0DhVgoVGXodxgA3vNt0Ea7b7EfC5PlKyvEUtYQXqCEJxshbPYUsyGUzxLFug_SfDj4955EdqTUytO_GrfRsRiVLzxvfdVhLayafABZ2RSeJCn1o_PdPyrGKI6rBaq0HCtbXs23JvgWbYpdeWMpLoqJ0J4EDkKCi2FzwbBwrIWtYMlurF-0_sQJN7lykDD4KTWUH1zneZM7K90gdxEhbNK9sdpbWsjPVhlFU0KcBckRq0GSF9PcexijA2PtAWrEmebrFMJX0JAEeoCyAF8eX4h4rJK32RgjVlvygkM4daOHA2inKrWHW3ftdkQdDRSkFVioot2yHkU0Tlat9IsRWo88C-l4g7HBJ-EbZQthCt1iCGSOvH_-2nsGTiFMbW1B5odQwObVYX_tn3ip12KAWtBXh2YTkuWLf6HYwsaiTwru1nEc3FDQglddWilIe2Jnu6FKs55Jim74JTLB_4P3tJJcsZx8HQ&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BiaL6%2FJdcRbCivFaeQaRv7g%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/data-visualization-in-r-with-ggplot2/introducing-ggplot2?trk=embed_lil">Introducing ggplot2</a></strong> from <strong><a href="https://www.linkedin.com/learning/data-visualization-in-r-with-ggplot2?trk=embed_lil">Data Visualization in R with ggplot2</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/mike-chapple?trk=embed_lil">Mike Chapple</a></strong></p>


Now, the following videos, tutorials and courses allow you to go further than we ask if you fancy doing so. But by no means feel obliged to; we can't make it more clear than that: no pressure :). In the end, it's more important that you finish your poster and make sure that is all in order! And, you also need to have plenty of time to do fun stuff in your free time: a top priority as a student!

If you don't feel like it, continue to the mock assignment, otherwise, anyway, here are our suggestions:

0. This [tutorial from R4DS](https://r4ds.had.co.nz/data-visualisation.html) is a great step-by-step guide and very useful if you want to dive into a specific visualisation (after you covered the basics, don't dive into one specific type: you're likely to get lost).
1. Follow the rest of the [ggplot2 Linkedin Learning course](https://www.linkedin.com/learning-login/share?account=36359204&forceAccount=false&redirect=https%3A%2F%2Fwww.linkedin.com%2Flearning%2Fdata-visualization-in-r-with-ggplot2%3Ftrk%3Dshare_ent_url%26shareId%3DNS2RzfJaThKZrlL1EX0Eiw%253D%253D) I showcased above.
2. Continue with the Swirl course "Exploratory Data Analysis" and do modules 8 to 10.
3. Do the [Learn ggplot2 course on Codecademy](https://www.codecademy.com/learn/learn-ggplot-2). This is a really extensive and good course: we'll cover it in year 2. We aim to teach you according to your needs so this might cover it. However: it is quite hefty, so you'll need to make sure you either have plenty of time left or want to really go the extra mile.




## 2) Mock Assessment
Create an R file called "DataVisualisationMockAssessment". Here you should note down any improvement you make as a comment. You can also copy and paste the bits of codes you changed if you find that helpful.

Look at the data visualisations you made for the conference poster. Do you see anything you'd like to change? Anything that could help you tell a better story using the data? You can also change the poster layout if it helps you to tell a better story.

Upload your script to your GitHub repository.

## 3) Daily Q&A
At 16:00, there's an online meeting you're encouraged to take part in to ask questions and to discuss our progress and reflect on today activities.

Tomorrow, we will work on our conclusion section.


## Resources
- [https://swirlstats.com/students.html](https://swirlstats.com/students.html)
- [Swirl](https://swirlstats.com/help.html)
- [Learning Statistics with R, by D. Navarro (2018)](https://learningstatisticswithr.com/)
- [Discovering Statistics using R, A. Fields et al. (2012)](https://eds.b.ebscohost.com/eds/detail/detail?vid=2&sid=785a4ba4-77c1-4205-be1c-f6cd920efb78%40pdc-v-sessmgr02&bdata=JnNpdGU9ZWRzLWxpdmU%3d#db=cat08862a&AN=bus.KOHA.OAI.BUAS.28091)
