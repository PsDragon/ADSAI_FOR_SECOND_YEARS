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
- [ ] Understand explainable machine learning & AI (XAI).
- [ ] Become familiar with the taxonomy of XAI methods.


## Interpretable machine learning and AI

<figure>
    <img src=".\images\xai.PNG" />
</figure>
<br>


Interpretability (or explainability) implies that in the context of predictive modelling, the model is not only able to predict an outcome, but
also explain how the model arrives at the outcome.

Please read upto (and including) chapter 3 of the **Interpretable Machine learning** textbook by Christoph Molnar, which you can access for free [here](0https://christophm.github.io/interpretable-ml-book/) and answer the following questions and upload the answers to your Github repos. Please take your time to think critically before attempting to answer the questions.


1. List 3 areas of application where it is imperative that the AI model is explainable, and explain your motivation for doing so.
2. What is the difference between model-specific and model-agnostic XAI tools.
3. Explain in your own words with an example, what does it mean for a model to express it's (un)certainity in a prediction.
4. What is a black box model, and would you consider neural networks to be a black box model?
5. Would you choose a more accurate, but less interpretable model over a less accurate, but highly interpretable model? If not, why?


<figure>
    <img src=".\images\lunch.jpg" />
</figure>
<br>


## Methods to make AI more explainable..or interpretable..or transparent.

For the rest of today's workshop, we are going to investigate few popularly used methods to make AI more explainable. In particular we start with methods commonly applied to tabular data, and end the day with an examples of neural-network specific XAI methods.

- [ ] Partial Dependence Plot (PDP)
- [ ] Local interpretable model-agnostic explanations (LIME)
- [ ] Interpretable neural networks

## Partial Dependence Plots (PDP)

A PDP is used to undestand the impact of a feature variable on the outcome, taking into account all possible values of other features. In simpler terms, irrespective of the model used, a PDP helps us undestand the importance of a given feature towards predicting the outcome while averaging out all other features used in the model. It is important to keep in mind that PDPs are applicable only to tabular data. To see PDPs in action, please read through:

1. The Bike rentals datasets [clicky](https://christophm.github.io/interpretable-ml-book/bike-data.html)
2. Example of PDP applied to the Bike rental dataset. [clicky](https://christophm.github.io/interpretable-ml-book/pdp.html#examples)

> The goal of this workshop is to provide you with an intuitive understanding of how PDPs work, and how to interpret them. If you are curious to learn more about their technical underpining, please click [here](https://christophm.github.io/interpretable-ml-book/pdp.html).

Please ensure that you have read through the dataset, and developed an intuitive understanding of how to interpret a partial dependence plot. In tomorrow's DataLab, you will build a predictive model on the Bike rentals dataset and learn how to generate PDPs in Python using ```scikit-learn```.

## Local interpretable model-agnostic explanations (LIME)

LIME is the based on the concept that sometimes, it's simpler to use a white-box model to explain the predictions of a black-box model. LIME uses the predictions obtained by a black-box model (e.g., a neural network) as training data to a white-box model (e.g., a  linear regression model). A key advantage of LIME is that it is applicable to tabular, text, as well as image data. Please watch this brief video to learn more about LIME.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/hUnRCxnydCc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

Please ensure that you have read through the Bike Rentals dataset, and developed an intuitive understanding of how the LIME algorithm works. The technical underpinnings will become easier to understand as your progress through your study. In tomorrow's DataLab, we will apply LIME on the Bike Rentals dataset using ```scikit-learn``` to understand LIMEs application on tabular data. Further, we will then use the MNIST database to understand how LIME can be applied to image classification.


## Saliency Maps to explain neural networks

There is a growing sense that neural networks need to be interpretable to humans. In general, there are two approaches to make neural networks more interpretable:
- [ ] Feature visualization.
- [ ] Feature attribution.

### Feature visualization

<figure>
    <img src=".\images\feature_vis.PNG" />
    <figcaption>[Source: Interpretable ML Textbook)</figcaption>
</figure>
<br>

Deep neural networks attribute their performance to their capability of learning high-level features in the hidden layers. This is one of their greatest strengths and reduces the need for feature engineering. For image classification, with traditional ML, we would start by creating hand-crafted  features based on color, frequency domain, edge detectors and so on. With convolutional neural networks and deep learning, the image is fed into the network in its raw form (pixels). The network transforms the image many times. First, the image goes through many convolutional layers. In those convolutional layers, the network learns new and increasingly complex features in its layers. Then the transformed image information goes through the fully connected layers and turns into a classification or prediction. The approach of making the learned features explicit is called Feature Visualization. Please watch the following video to learn more about feature visualization (**and how Spotify discover weekly algorithms work!**).

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/McgxRxi2Jqo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->



### Feature attribution
While feature visualization methods focus on what a specific unit of a neural network place emphasis on, feature attribution methods aim to understand what parts (pixels) of an image are responsible for trigerring (or activating) a particular unit in a neural network.Inn simpler terms, feature visualization methods help us answer **what** a network sees, while feature attribution methods help us understand **how** a particular neural network architecture makes it's prediction.

The most common feature attribution method is called a saliency map — a simple heatmap that highlights pixels of the input image that most likely caused the output.

> We will learn more about other forms of feature attribution this Wednesday!

## [Optional] The Building blocks of interpretability
I highly recommend going through the The Building Blocks of Interpretability blog you can find [here](https://distill.pub/2018/building-blocks/). The concepts you read about will become more clear once we apply them in the DataLab.

# Preparation for tomorrow's DataLab

- [ ] Please read upto (and including) chapter 3 of the **Interpretable Machine learning** textbook by Christoph Molnar, which you can access for free [here](0https://christophm.github.io/interpretable-ml-book/) and upload your answers to Github

- [ ] Become familiar with The Bike rentals datasets [clicky](https://christophm.github.io/interpretable-ml-book/bike-data.html)

- [ ] Read the example of PDP applied to the Bike rental dataset. [clicky](https://christophm.github.io/interpretable-ml-book/pdp.html#examples)

- [ ] Download the BikeRentalsDataset from [here]() and build a predictive model to predict the number of bikes sold using ```Google colab```.

> hint: Use the following code snippet to automatically download, unzip and load the dataset into colab.

```Python
!wget https://archive.ics.uci.edu/ml/machine-learning-databases/00275/Bike-Sharing-Dataset.zip
!unzip Bike-Sharing-Dataset.zip
!ls

df = pd.read_csv("day.csv")
df.head()
```
