---
sort: 8
---

# XAI: The need for explanations!

<figure>
    <img src=".\images\intro.PNG" />
</figure>
<br>


As you go deeper in your AI journey, you may have noticed that deep Learning, while being really accurate in making a prediction, is pretty lousy in helping us understand how does it get there. From childhood, we are conditioned to think of the world in the context of explanations. Kids, and adults alike
always seek **answers to the *why* questions**. So should we not expect AI to
also provide us such answers?

> This course is based on the **Interpretable Machine learning** textbook by Christoph Molnar, which you can access for free [here](https://christophm.github.io/interpretable-ml-book/).

## Today's learning objectives
- [ ] Understand the motivation for explainable machine learning & AI (XAI).
- [ ] Become familiar with the taxonomy of XAI methods.


## Interpretable machine learning and AI

<figure>
    <img src=".\images\xai.PNG" />
</figure>
<br>


Interpretability (or explainability) implies that in the context of predictive modelling, the model is not only able to predict outcomes accurately, but
also explain how the model arrives at it's outcomes.


## Methods to make AI more explainable (..or interpretable..or transparent).

One of the easiest ways to make AI more transparent is to use a model that is easy to interpret. You have earlier comes across examples of such models. Traditional machine learning models such as a simple linear regression, logistic regression, k-nearest neighbours, k-meabs, and decision trees all have the inherent property of explainability. For example, if you are using a simple linear regression model to predict weight based on height, then the linear regression coefficient contains all information that is needed to explain the model i.e., a 1 unit increase in height is linked to a **beta** units increase in weight. There is no need to apply any additional methods to explain the model and how it makes it's predictions.

However, sometimes the most accurate model is not the most interpretable. Think about neural networks for example, or a multiple regression variable with a lot of features. In such cases, it becomes desirable to have XAI methods that can help us understand the model, but having the desirable feature that these methods can generalise across model. Such methods are termed **model-agnostic XAI methods** and we will discover more about these methods in this week. Model-agnostic XAI can further be categorized into **global** and **local** methods. Global methods aim to expain how the model arrives at it's predictions on average (i.e., global behavour). Local methods, on the other hand are more interested in explaining a single prediction (e.g., why does my model assign the label cat to this image).

For the rest of today's workshop, we are going to investigate few popularly used model-agnostic XAI methods to make AI more explainable. In particular we start with methods commonly applied to tabular data, and end the day with an examples of neural-network specific XAI methods. It is beyond the scope of this course to explore all XAI methods in detail. However, the methods presented here form the basis for other methods; and I recommend you to explore all methods during weeks 9 and 10.

## Partial Dependence Plots (PDP)

We start one of the most commonly used global model-agnostic XAI methods to explain the results of a machine learning algorithm applied to tabular data- *Partial Dependence Plots (PDP)*. A PDP is used to understand the impact of a feature variable on the predicted outcome, taking into account all possible values of other features. In simpler terms, irrespective of the model used, a PDP helps us undestand the importance of a given feature towards predicting the outcome while averaging out the effect of all other features used in the model. To see PDPs in action, please read through:

1. The Bike rentals datasets [clicky](https://christophm.github.io/interpretable-ml-book/bike-data.html)
2. Example of PDP applied to the Bike rental dataset. [clicky](https://christophm.github.io/interpretable-ml-book/pdp.html#examples)
3. A Kaggle example on the titanic dataset. [clicky](https://www.kaggle.com/dansbecker/partial-dependence-plots)

> Please keep in mind that PDPs are applicable only to tabular data. The goal of this workshop is to provide you with an intuitive understanding of how PDPs work, and how to interpret them. If you are curious to learn more about their technical underpinnings, please click [here](https://christophm.github.io/interpretable-ml-book/pdp.html).

 **In tomorrow's DataLab, you will build a predictive model on the Bike rentals dataset and learn how to generate PDPs in Python using ```scikit-learn```.**

## Local interpretable model-agnostic explanations (LIME)

LIME is the based on the concept that sometimes, it's simpler to use a white-box model to explain the predictions of a black-box model i.e., a **surrogate model**. LIME uses the predictions obtained by a black-box model (e.g., a neural network) as training data to a white-box model (e.g., a  linear regression model) to explain individual predictions of the black box model. A key advantage of LIME is that it is applicable to tabular, text, as well as image data. However, unlike PDPs, LIME is an example of a local method (duh, it's in the name). It's important to remember that rather than try to explain the whole model, LIME instead aims to explain how the black-box models arrive at a certain prediction, given a specific input. Please watch this brief video to learn more about LIME.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/hUnRCxnydCc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->


**In tomorrow's DataLab, we will apply LIME on an image classifier using ```scikit-learn``` to explore LIME as an expalainable AI method.**

## Assignment

Please read upto (and including) chapter 3 of the **Interpretable Machine learning** textbook by Christoph Molnar, which you can access for free [here](https://christophm.github.io/interpretable-ml-book/) and answer the following questions and upload the answers to your Github repos. Please take your time to think critically before attempting to answer the questions.


- [ ] List 3 areas of application where it is imperative that the AI model is explainable, and explain your motivation for doing so.
- [ ] What is a black box model, and would you consider neural networks to be a black box model?
- [ ] What is the difference between model-specific and model-agnostic XAI tools, and further what are local and global methods in the context of model-agnostic XAI methods.
- [ ] Explain in your own words with an example, what does it mean for a model to express it's (un)certainity in a prediction.
- [ ] Explain in your own words with an example, what does it mean for an explanation to be human-friendly.
- [ ] Would you choose a more accurate, but less interpretable model over a less accurate,
but highly interpretable model? If not, why? Motivate your choice with one of your chosen application areas.


<figure>
    <img src=".\images\lunch.jpg" />
</figure>
<br>

**Please click next to view the rest of the material for today**


# References

Ribeiro, M. T., Singh, S., & Guestrin, C. (2016, August). " Why should i trust you?" Explaining the predictions of any classifier. In Proceedings of the 22nd ACM SIGKDD international conference on knowledge discovery and data mining (pp. 1135-1144).

https://christophm.github.io/interpretable-ml-book/explanation.html#explanation
