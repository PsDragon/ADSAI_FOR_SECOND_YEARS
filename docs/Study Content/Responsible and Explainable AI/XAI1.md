---
sort: 8
---

# XAI: The need for explanations!

<figure>
    <img src=".\images\intro.PNG" />
</figure>
<br>


As you go deeper in your AI journey, you may have noticed that deep Learning, while being really accurate in making a prediction, is pretty lousy in helping us understand how does it get there. From childhood, we are conditioned to think of the world in the context of explanations. Kids, and adults alike
always seeks **answers to the why- questions**. So should we not expect AI to
also provide us such answers?

> This course is based on the **Interpretable Machine learning** textbook by Christoph Molnar, which you can access for free [here](0https://christophm.github.io/interpretable-ml-book/).

## Today's learning objectives
- [ ] Understand the motivation for explainable machine learning & AI (XAI).
- [ ] Become familiar with the taxonomy of XAI methods.


## Interpretable machine learning and AI

<figure>
    <img src=".\images\xai.PNG" />
</figure>
<br>


Interpretability (or explainability) implies that in the context of predictive modelling, the model is not only able to predict an outcome, but
also explain how the model arrives at the outcome.


## Methods to make AI more explainable..or interpretable..or transparent.

For the rest of today's workshop, we are going to investigate few popularly used methods to make AI more explainable. In particular we start with methods commonly applied to tabular data, and end the day with an examples of neural-network specific XAI methods. It is beyond the scope of this course to explore all XAI methods in detail. However, the methods presented here form the basis for other methods; and I recommend you to explore all methods during weeks 9 and 10 of the block.

## Partial Dependence Plots (PDP)

We start one of the most commonly used methods to explain the results of a machine learning algorithm applied to tabular data- *Partial Dependence Plots (PDP)*. A PDP is used to understand the impact of a feature variable on the outcome, taking into account all possible values of other features. In simpler terms, irrespective of the model used, a PDP helps us undestand the importance of a given feature towards predicting the outcome while averaging out the effect of all other features used in the model. To see PDPs in action, please read through:

1. The Bike rentals datasets [clicky](https://christophm.github.io/interpretable-ml-book/bike-data.html)
2. Example of PDP applied to the Bike rental dataset. [clicky](https://christophm.github.io/interpretable-ml-book/pdp.html#examples)

> Please keep in mind that PDPs are applicable only to tabular data. The goal of this workshop is to provide you with an intuitive understanding of how PDPs work, and how to interpret them. If you are curious to learn more about their technical underpinnings, please click [here](https://christophm.github.io/interpretable-ml-book/pdp.html).

 **In tomorrow's DataLab, you will build a predictive model on the Bike rentals dataset and learn how to generate PDPs in Python using ```scikit-learn```.**

## Local interpretable model-agnostic explanations (LIME)

LIME is the based on the concept that sometimes, it's simpler to use a white-box model to explain the predictions of a black-box model. LIME uses the predictions obtained by a black-box model (e.g., a neural network) as training data to a white-box model (e.g., a  linear regression model). A key advantage of LIME is that it is applicable to tabular, text, as well as image data. However, unlike PDPs, LIME is an example of a local method (duh, it's in the name). Rather than try to explain the whole model, LIME instead aims to explain how the black-box models arrive at a certain prediction, given a specific input. Please watch this brief video to learn more about LIME.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/hUnRCxnydCc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->


**In tomorrow's DataLab, we will apply LIME on an image classifier using ```scikit-learn``` to understand LIMEs usefullness as an expalainable AI method.**

## Assignment

Please read upto (and including) chapter 3 of the **Interpretable Machine learning** textbook by Christoph Molnar, which you can access for free [here](https://christophm.github.io/interpretable-ml-book/) and answer the following questions and upload the answers to your Github repos. Please take your time to think critically before attempting to answer the questions.


- [ ] List 3 areas of application where it is imperative that the AI model is explainable, and explain your motivation for doing so.
- [ ] What is the difference between model-specific and model-agnostic XAI tools, and further what are local and global methods in the context of model-agnostic XAI methods.
- [ ] Explain in your own words with an example, what does it mean for a model to express it's (un)certainity in a prediction.
- [ ] What is a black box model, and would you consider neural networks to be a black box model?
- [ ] Would you choose a more accurate, but less interpretable model over a less accurate,
but highly interpretable model? If not, why? Motivate your choice with one of your chosen application areas.


<figure>
    <img src=".\images\lunch.jpg" />
</figure>
<br>

**Please click next to view the rest of the material for today**



# References

Ribeiro, M. T., Singh, S., & Guestrin, C. (2016, August). " Why should i trust you?" Explaining the predictions of any classifier. In Proceedings of the 22nd ACM SIGKDD international conference on knowledge discovery and data mining (pp. 1135-1144).
