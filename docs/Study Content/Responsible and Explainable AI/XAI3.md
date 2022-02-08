---
sort: 10
---

# Feature Attribution in Computer Vision
Feature attribution methods help us understand how a particular neural network architecture makes it's prediction. The most common (and simple) feature attribution method is called a saliency map — a simple heatmap that highlights pixels of the input image that most likely caused the output. In today's workshop, we learn more about such maps and the different methods that can be used to obtain them.



<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
One interpretation of Saliency maps is that we try to find the pixels, whose value needs to be changed the least, in order to affect the final classification the most. Imagine, you could assign a score to the final classification, then saliency maps highlights the pixels which are key to the score.
 </div>

<figure>
     <center><img src=".\images\saliencymap.PNG" /></center>
    <figcaption>The heatmap below the original image indicates the features (pixels) that play an important role in predicting the final class (Source) <figcaption>
</figure>
<br>



## Learning Objectives
- [ ] Understand how to use Vanilla Gradients for feature attribution
- [ ] Understand how to use Grad-CAMs for feature attribution
- [ ] Understand how to use SmoothGrad for feature attribution


### Saliency maps using vanilla gradients
Saliency maps based on vanilla gradients use backpropogation to provide us with insight on which areas of the image play key role in discrimating between classes.

> Before we go deeper in Saliency maps, let's take a small detour to Block B: in particular linear models.

Recall that a linear model is written as:

**y** = &beta;<sup>T</sup>.**X**

Where,

&beta; (beta) : vector of regression coefficients <br>
X : matrix of predictor variables. <br>
Y : vector of the outcome variable. <br>

Replacing &beta; (beta-regression terminology) with _w_ (weights-neural network terminology), we have

**y** = _w_<sup>T</sup>.**X**

Expanding the equations across _n_ cases, we have

_y_ = _w_<sub>1</sub>_x_<sub>1</sub> + _w_<sub>2</sub>_x_<sub>2</sub> + ... + _w_<sub>n</sub>_x_<sub>n</sub>

> In this equation, the gradients aka the weights answer the question - how much does a unit change in x affect y. e.g., A 1 unit change in _x_<sub>1</sub> would result in a _w_<sub>1</sub> units change in _y_. Thus by plotting the weights, we can quantify the relative contribution of each feature (the x's) to the final prediction!

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Extending the above analogy to neural networks (which can be best understood as a highly complex non-linear model), the weights of a neural network tell us about the sensitivity of a particular class (e.g., Y is a yes/no binary variable) to it's input features (pixels in our case). By plotting the feature relevence of each pixel as a heatmap, we can then understand the relative contribution of each pixel towards the final class prediction.
 </div>



Recall that neural networks use **backpropogation** to learn the weights of each connection, which are then used to make the final predictions. A gradient, in general terms measures the change in an output, when the inputs are perturbed. In the context of backpropogation, the gradients carry information about the relative importance of the weights in the neural network towards the final classification. In particular, the magnitude of the gradients quantifies the contribution of a particular connection in the neural network to the final classification probability. In backpropogation, we initialize the network with random weights, and use gradient descent to optimally adjust the weights such that we minimize the final cost function (or maxmimise the classification accuracy). Please watch this video to refresh your memory on backpropogation.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/Ilg3gGewQ5U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->


Saliency maps extend this idea to provide intuitive explanations of why a certain image is assigned a specific class. Let's start by considering an image classifier which has been trained on labelled images of cats and dogs and we have tuned the model such that we have excellent performance on the test set. However, what we would like to explore is - _how is the model able to discrimate so accurately between a cat and a dog_ aka can we explain the model's predictions! We provide the learned neural network with the image of a cat, predict the label (=cat), and then do a single pass of backpropogation to obtain the gradients for that given image. We can use these gradients to highlight input regions that cause the most change in the output. Intuitively this should highlight salient image regions that most contribute towards the output!






### Saliency maps using Grad-CAMs

### Saliency maps using SmoothGrad

## Saliency Maps in Practice (```tf-keras-vis```)

## Summary

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/1VXH2fMv1U4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->
