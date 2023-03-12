---
sort: 10
---

# Moving beyond feature attribution
So far, we have encountered many methods to explain black-box models through
feature attribution. However, there are some limitations regarding the
feature-based approach. First, features are not necessarily user-friendly
in terms of interpretability. For example, the importance of a single pixel
in an image usually does not convey much meaningful interpretation.
Second, the expressiveness of a feature-based explanation is constrained by the number of features.

> Today we will spend the day learning about one curious concept that goes beyond visualizing key pixels.

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

## Counterfactual Explanations

Counterfactual explanations are a type of explanation that is based on the idea of counterfactual reasoning. Counterfactual reasoning is the process of reasoning about what would have happened if a certain event had not occurred. For example, if I had not gone to the gym today, I would not have lost weight. Counterfactual explanations are based on the idea that if we could find a counterfactual example, we could explain the model’s prediction. In machine vision terms, if we could find an image that would have been classified as a cat if it had been labelled as a dog, we could explain the model’s prediction. 

:bell: The key distinction between counterfactual explanations and adversarial examples is that they have fundamentally different goals. Counterfactual explanations are not explicitly designed to fool the learning algorithm. They are just examples that are close to the original example. For example, if we want to explain why a model classified an image of a cat as a dog, we can find an image that is close to the original image and is classified as a cat. However, this image may not be adversarial. It may not be designed to fool the model. It may just be an image that is close to the original image. 

:warning: Deep Learning is still relatively a new field and in the wider AI community, is not known for it's clarity of concepts.

**Optional reading:** To understand more about the distinction between adverserial examples and counterfactual explanations, please read this [paper](https://link.springer.com/article/10.1007/s11023-021-09580-9).

# Group Assignment

Continue working on the Group Assignment. 
Please watch the following discussion to get some ideas for your presentation.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/0LIACHcxpHU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

