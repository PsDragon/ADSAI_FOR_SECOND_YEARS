---
sort: 12
---

# Moving beyond feature attribution
So far, we have encountered many methods to explain black-box models through
feature attribution. However, there are some limitations regarding the
feature-based approach. First, features are not necessarily user-friendly
in terms of interpretability. For example, the importance of a single pixel
in an image usually does not convey much meaningful interpretation.
Second, the expressiveness of a feature-based explanation is constrained by the number of features.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/Ff-Dx79QEEY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->


> Today we will spend the day reading about one interessting concept that goes beyond visualizing key pixels.

## Adverserial Explanations

What are adverserial examples? As we may have seen so far, sometimes neural networks focus on aspects of an image that has no real relevence to the final classification. Further, small modifications to the input image can result in the final image being missclassified. Consider these following scenarios.

- [ ] A self-driving car crashes into another car because it ignores a stop sign. Someone had placed a picture over the sign, which looks like a stop sign with a little dirt for humans, but was designed to look like a parking prohibition sign for the sign recognition software of the car.

- [ ] A spam detector fails to classify an email as spam. The spam mail has been designed to resemble a normal email, but with the intention of cheating the recipient.

- [ ] A machine-learning powered scanner scans suitcases for weapons at the airport. A knife was developed to avoid detection by making the system think it is an umbrella.

These examples are known as **adverserial examples** and they are a critical threat to the adoption of AI in a lot of industries. Please watch this video to learm more about adverserial examples and the threat they pose.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/4rFOkpI0Lcg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

Please read more about adverserial examples are applied to XAI [here](https://christophm.github.io/interpretable-ml-book/adversarial.html)

# Assignment
Start by watching this video giving an overview of XAI and the current state of the art.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/dT8W7jdIT5M" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Now that you have gained more insight into Responsible and Explainable AI. Please summarize your thoughts on the field in an essay of ~1000 words by picking a topic (or method) of interest.
 </div>

Specifically
1. Provide a general introduction to the topic
2. Illustrate it's application with an example
3. Discuss it's advantages and limitations (as you perceive them) critically.
4. Upload your essays to Github and please remember to cite resources used.

Now, it's time to sharpen your critical pens. Please watch the following discussion to get some ideas for your paper. .

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/0LIACHcxpHU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->


# Preparation for tomorrow's DataLab

- [ ] Please ensure that you know how to implement the following XAI methods.
  - [ ] LIME
  - [ ] Saliency Maps
    - [ ] Vanilla Gradients
    - [ ] GradCAM
    - [ ] SmoothGrad
    - [ ] IntegratedGrad
