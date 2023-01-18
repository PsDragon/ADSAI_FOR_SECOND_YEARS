---
sort: 1
---

# Fairness & Bias: Definitions

This week, we will dive into the subfield of Responsible AI, which aims to ensure AI is transparent, interpretable, and unbiased/fair. It is a relatively new subfield, which has seen a stark increase in popularity over the last couple of years. Unfortunately, many responsible AI tools currently do not support image data. So, this week we may need to push ourselves to think outside the box.

Let us start with our trailblazer journey:

Today, we will focus on the concepts of 'fairness' and 'bias'. How are they defined? Are there different types of 'fairness' and/or 'bias'? Lastly, in the workshops, we will take a closer look at the concept of bias, and familiarize ourselves with two principles to achieve fairness; equality and equity.

## Learning objectives

- [ ] Define the terms 'fairness', 'implicit bias','explicit bias', 'equity', 'equality', and 'worldview'.
- [ ] Describe different types of bias, and connect them to the CRISP-DM cycle phases by providing concrete examples.
- [ ] Explain the difference between the terms 'equity' and 'equality'.
- [ ] Explain the difference between the terms 'implicit bias' and 'explicit bias'.
- [ ] Explain how a worldview can be considered unique/personal, as well as shared.

__Table of contents__

1. Introduction: 2 hours.
2. Workshop(s): 6 hours.

## Homework exercises

For the DataLab preparation (Week 1, Wednesday), you are expected fill in a Microsoft Teams Form called ```DataLab Preparation 1```:

<iframe width="1280px" height="960px" src="https://forms.office.com/e/mC96HqGXbM?embed=true" frameborder="0" marginwidth="0" marginheight="0" style="border: none; max-width:100%; max-height:100vh" allowfullscreen webkitallowfullscreen mozallowfullscreen msallowfullscreen> </iframe>

In this file, please answer the questions that pop-up (:pencil:) as you navigate the content below. Further the module Responsible AI introduces quite a bit of new terminology. Please make sure to take notes and reflect on the new terms/concepts/debates that you encounter (:bell:).

## Questions or issues?

If you have any questions or issues regarding the independent study material, please use the Q&A forum on Microsoft Teams. The mentors, and module instructor(s) will be available to answer your questions in DataLab.

Good luck!

***

## 1) Introduction

Artificial Intelligence, often in the form of machine learning, underpins decisions that profoundly affect our society. For example, it may decide if you get car insurance or if you are eligible for parole.

Machine learning uses data by learning through the generalization of examples, defining rules that apply for past cases, and predicting future unseen cases (See Figure 1).

<img src="./images/ml_diagram.jpg" alt="Traditional vs. Machine learning" width="400">

*Figure 1: Traditional vs. machine learning.*

Machine learning can come in handy when making data-driven decisions, uncovering relevant factors that humans might overlook. However, it does not ensure fair decisions :confused:.

Before we can start with our quest to make AI more 'fair', we need to define the concept a bit further:

:pencil: __1a__ Watch the video Why monkeys (and humans) are wired for fairness by Sarah Brosnan.

<iframe width="896" height="504" src="https://www.youtube.com/embed/dKob6b8QzkU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 1. Why monkeys (and humans) are wired for fairness.*

:pencil: __1b__ Explain how the terms 'fairness' and 'cooperation' relate to each other by giving a real-life example. Write your answer down.

:pencil: __1c__ Read the comic book Fairness & Friends by Khan et. al., which you can find, [here](https://dataresponsibly.github.io/comics/vol2/fairness_en.pdf). This comic book is completely awesome, because it will introduce you to all the main concepts related to bias, fairness and AI in a fun, and comprehensible way.

***

## 2) Workshop: The difference between equality and equity

Now, we are introduced to the terms 'fairness' and 'bias', it is time to deepen our knowledge. In the workshop, you will learn about how two principles, equality, and equity, can help to achieve fairness:

> Though often used interchangeably, equality and equity are quite different. If fairness is the goal, equality and equity are two processes through which we can achieve it. Equality simply means everyone is treated the same exact way, regardless of need or any other individual difference. Equity, on the other hand, means everyone is provided with what they need to succeed. In an equality model, a coach gives all of his players the exact same shoes. In an equity model, the coach gives all of his players shoes that are their size ([Source](https://risetowin.org/what-we-do/educate/resource-module/equality-vs-equity/index.html)).
<br>

The current fairness metrics, which will be the topic of the coming independent study day, are closely connected to one of these principles, namely equality.

:pencil: __2a__ Read the Post-Its in Figure 2.

<img src="./images/connecting_post_its.png" alt="Post-its" width="600"/>

*Figure 2. Post-Its on a bulletin board.*

:pencil: __2b__ Fill the gaps in the 'text' Post-Its by connecting it to the correct 'concept' Post-It. Write your answer down.

:pencil: __2c__ Provide clear, and concise answers to the following questions:

<img src="./images/equityvsequality.jpg" alt="Equality vs. Equity" width="600"/>

*Figure 3. Equality vs. equity.*

1. Looking at the images in Figure 3, why does the difference between equity and equality matter?
2. How does the baseball game metaphor relate to the guiding quote about shoes?
3. What are some other real-world examples of equity and equality?
4. How are equality and equity related to fairness? In school, sports, society, etc.?
5. Are there other ways to achieve fairness besides equity and equality? (For example, the removal of the wooden fence eliminates the structural barrier to access.)

:pencil: __2d__ Team up with at least one fellow student, and discuss your answers to the exercises 2b and 2c. Write down the name(s) of your teammate(s), and the differences/commonalities in your provided answers.

***

## 3) Workshop: The difference between explicit and implicit bias

In (social) psychology, bias is classified as either conscious ('explicit') or unconscious ('implicit'). Explicit bias occurs when people consciously devalue or hold negative views of a particular group. 

:bell: There is no real consensus on defining bias in machine learning; some scholars claim there are three distinct types, while others claim there are six specific types of bias.

:pencil: __3a__ List, and describe at least two types of bias presented in either [Fairness & Friends](https://dataresponsibly.github.io/comics/vol2/fairness_en.pdf) or [A Framework for Understanding Sources of Harm throughout
the Machine Learning Life Cycle](https://arxiv.org/pdf/1901.10002.pdf).

Rather watch a video than read a paper? Watch the lecture by Rachel Thomas, which, among others, introduces different types of bias in machine learning: 

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/mG-cTS3fnnw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 2. Bias & Fairness (Data Ethics Lesson 2).*

:pencil: __3b__ Give an example for each type of bias listed in exercise 3a, and connect it to one of the CRISP-DM phases. Write your answer down, and limit your word count to a maximum of 100 words.

<img src="./images/CRISP-DM.png" alt="CRISP-DM" width="400"/>

*Figure 4. CRISP-DM cycle.*

On the other hand, implicit bias, refers to the brain's automatic, instantaneous association of stereotypes and attitudes with particular groups of people (Dovidio, Kawakami, and Gaertner, 2002). These implicit biases are often contrary to our personal values and are formed by the social environments around us (van Nunspeet et al., 2015).

Implicit biases are an example of what Kahneman and Tversky (1974) call 'System 1' thinking.

<img src="./images/kahneman.jpeg" alt="Decision-making process" width="500">

*Figure 5. Systems of thinking (Kahneman, and Tversky, 1974).*

This mode of thinking is fast, emotional, and unconscious. It requires little effort, but is prone to error.

Let us focus on a more concrete example of implicit bias: Ethnic profiling. A Dutch police officer may be committed to 'protect and serve' its community, and perceive itself as impartial, yet at the same time, they can lead a stop and frisk police action that targets a specific ethnic group (e.g., Dutch citizens of Turkish descent). Consciously, the police officer is deeply loyal to protecting the community; however, their behavior is inconsistent with those beliefs because they are showing prejudice against certain community members.

<img src="./images/implicit_bias.jpg" alt="Implicit bias" width="600">

*Figure 6. Implicit bias.*

The ability to hold these two truths (e.g., 'serve and protect the community', and 'unequal treatment of community members based on ethnicity') and not see them is what makes implicit biases so dangerous.

To uncover our implicit biases, we can conduct a little experiment:

:pencil: __3c__ Take the Implicit Bias test by Harvard University, which you can find, [here](https://implicit.harvard.edu/implicit/takeatest.html).

:bell: Implicit Bias test by Harvard University is seen as controversial. Some scholars argue that the test is not valid, and that it is not possible to measure implicit bias. Others argue that the test is valid, and that it is possible to measure implicit bias. You can read more about this debate, [here](https://www.apa.org/monitor/2008/07-08/psychometric). 

:pencil: __3d__ Reflect upon your result of the Implicit Bias test:

- Are we all bigots?
- What is more dangerous implicit or explicit bias?
- etc.

Write down your answer, and limit your word count to a maximum of 50 words.

Unfortunately, we cannot cure ourselves from our implicit biases, but with self awareness we can address them, and hopefully make them less prominent.

Now we have identified our explicit/implicit biases, we can look at the possible causes. Some scholars argue that many of the common prejudices of people brought up in 'The West' (partially) originate from having a Eurocentric worldview.

:pencil: __3e__ Watch the video 'What's your worldview?' by Impact 360 institute:

<iframe width="896" height="504" src="https://www.youtube.com/embed/VXnSE0uvwzM?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 3. What's your worldview?.*

__Worldview (definition):__
>We can understand worldview as a mental model of reality. It contains a comprehensive framework of ideas and attitudes about the world, ourselves. Our worldview is shaped by our inherited characteristics (identity), lived experience, values, attitudes, habits and more. These elements of ourselves vary from one person to another. Therefore, even though some parts of a worldview are shared by many people in a community, other parts differ for individuals, so worldviews are both shared and unique ([Source](https://exchange.actua.ca/traininglist/training_en/antiracism/positionality_and_worldview)).

:pencil: __3f__ Read the article [Eurocentrism](https://unm-historiography.github.io/metahistory/essays/postmodern/eurocentrism.html) by Keena Hays to find out how an Eurocentric worldview reinforces western beliefs of superiority.

:pencil: __3g__ How does the Mercator map fit within the Eurocentric worldview? In your answer, refer to the concept of 'bias' and/or 'fairness'. Write your answer down.

<img src="./images/mercator.jpg" alt="Mercator projection" width="400">

*Figure 3. Mercator world map projection.*

:pencil: __3h__ Read the article [Datasets Have Worldviews](https://pair.withgoogle.com/explorables/dataset-worldviews/) by Google to find out why a dataset always represents a specific worldview.

:pencil: __3i__ Give at least one example of how a worldview such as Eurocentrism can lead to bias in a dataset? Write your answer down.

## 4) Additional resources (Optional)

What are prejudices, stereotypes, and discrimination? How do they arise? And, how do they affect the way we treat others? There are many different, often conflicting, theories by social scientist (e.g. sociologists, psychologists, economists, anthropologists, etc.) that try to explain these phenomena. As a data professional you are not required to know these theories in detail, but it is good to have a general understanding of these concepts, especially if you are interested in pursuing a data science/AI career with a strong focus on Responsible AI. 

In this list, you will find a selection of videos from the YouTube channel Crash Course that explain the various theories related to the concepts of prejudice, stereotyping, and discrimination:

- [Why is there Social Stratification?: Crash Course Sociology #22](https://www.youtube.com/watch?v=RtxtI5IGrfw&list=PL8dPuuaLjXtMJ-AfB_7J1538YKWkZAnGA&index=23)
- [The Impacts of Social Class: Crash Course Sociology #25](https://www.youtube.com/watch?v=0a21mndoORE&list=PL8dPuuaLjXtMJ-AfB_7J1538YKWkZAnGA&index=26)
- [Sex & Sexuality: Crash Course Sociology #31](https://www.youtube.com/watch?v=Kqt-_ILgv5c&list=PL8dPuuaLjXtMJ-AfB_7J1538YKWkZAnGA&index=32)
- [Prejudice and Discrimination: Crash Course Psychology #39](https://www.youtube.com/watch?v=7P0iP2Zm6a4)
- [Gender Stratification: Crash Course Sociology #32](https://www.youtube.com/watch?v=Yb1_4FPtzrI&list=PL8dPuuaLjXtMJ-AfB_7J1538YKWkZAnGA&index=33)
- [Theories of Gender: Crash Course Sociology #33](https://www.youtube.com/watch?v=CquRz_cceH8&list=PL8dPuuaLjXtMJ-AfB_7J1538YKWkZAnGA&index=34)
- [Race & Ethnicity: Crash Course Sociology #34](https://www.youtube.com/watch?v=7myLgdZhzjo&list=PL8dPuuaLjXtMJ-AfB_7J1538YKWkZAnGA&index=35)
- [Racial/Ethnic Prejudice & Discrimination: Crash Course Sociology #35](https://www.youtube.com/watch?v=gSddUPkVD24&list=PL8dPuuaLjXtMJ-AfB_7J1538YKWkZAnGA&index=36)
- [Prejudice and Discrimination: Crash Course Psychology #39](https://www.youtube.com/watch?v=7P0iP2Zm6a4)

***

## Resources

Khan, F. A., Manis, E., & Stoyanovich, J. (2021, March). Fairness and Friends. In Beyond static papers: Rethinking how we share scientific understanding in ML-ICLR 2021 workshop.

Suresh, H., & Guttag, J. V. (2019). A framework for understanding unintended consequences of machine learning. arXiv preprint arXiv:1901.10002, 2, 8.

***