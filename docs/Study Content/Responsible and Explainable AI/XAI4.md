---
sort: 11
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

The concept-based approach addresses both limitations mentioned above.
A concept can be any abstraction, such as a color, an object, or even an idea.
Given any user-defined concept, although a neural network might not be
explicitly trained with the given concept, the concept-based approach detects
that concept embedded within the latent space learned by the network.
In other words, the concept-based approach can generate explanations that
are not limited by the feature space of a neural network.

## TCAV: Testing with Concept Activation Vectors

TCAV is proposed to generate global explanations for neural networks, but, in theory, it should also work for any model where taking directional derivative is possible. For any given concept, TCAV measures the extent of that concept’s influence on the model’s prediction for a certain class. For example, TCAV can answer questions such as how the concept of “striped” influences a model classifying an image as a “zebra”. Since TCAV describes the relationship between a concept and a class, instead of explaining a single prediction, it provides useful global interpretation for a model’s overall behavior.

## Assignments

- [ ] Please read the example of how TCAV is applied to XAI [here](https://christophm.github.io/interpretable-ml-book/detecting-concepts.html#example-9)

- [ ] Please list out the key differences between TCAV and feature attribution.

- [ ] List 3 advantages and disadvantages of TCAV based XAI.
