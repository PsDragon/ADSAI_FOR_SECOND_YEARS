---
sort: 8
---

# Pixel/Feature Attribution
Pixel Attribution highlight the pixels that were relevant
for a certain image classification by a neural network [1]. Pixel attribution
methods can be found under various names: sensitivity map, saliency map,
pixel attribution map, gradient-based attribution methods, feature relevance,
feature attribution, and feature contribution.

Pixel attribution is a special case of feature attribution, but for images.
Feature attribution explains individual predictions by attributing each input
feature according to how much it changed the prediction (negatively or positively).

There is a confusing amount of pixel attribution approaches.
It helps to understand that there are two different types of attribution methods:

Occlusion- or perturbation-based: Methods like SHAP and LIME
manipulate parts of the image to generate explanations (model-agnostic).

Gradient-based: Many methods compute the gradient of the prediction
(or classification score) with respect to the input features.
The gradient-based methods (of which there are many) mostly differ in how the gradient is computed.

Both approaches have in common that the explanation has the same size as the
input image (or at least can be meaningfully projected onto it) and they assign
each pixel a value that can be interpreted as the relevance of the pixel to the
prediction or classification of that image.

Gradient-only methods tell us whether a change in a pixel would change the prediction.
Examples are Vanilla Gradient and Grad-CAM. The interpretation of
the gradient-only attribution is: If I were to change this pixel, the predicted
class probability would go up (for positive gradient) or down (for negative gradient).
The larger the absolute value of the gradient,
the stronger the effect of a change at this pixel.

Please watch the following video to learn more about explainable AI, and in
particular - feature attribution.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/6xePkn3-LME" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

## Advantages of using feature attrribution to explain image classification
The explanations are visual and we are quick to recognize images. In particular,
when methods only highlight important pixels, it is easy to immediately
recognize the important regions of the image. Gradient-based methods are
usually faster to compute than model-agnostic methods. For example,
LIME and SHAP can also be used to explain image classifications,
but are more expensive to compute.

## Disadvantages of using feature attrribution to explain image classification
As with most interpretation methods, it is difficult to know whether an
explanation is correct, and a huge part of the evaluation is only qualitative.
Furthermore, pixel attribution methods can be very fragile.
Small (adversarial) perturbations to an image, that still lead to the same
prediction, can lead to very different pixels being highlighted as explanations [2].

## __Literature__

[1] Zeiler, Matthew D., and Rob Fergus. “Visualizing and understanding convolutional networks.” European conference on computer vision. Springer, Cham, 2014

[2] Ghorbani, Amirata, Abubakar Abid, and James Zou. “Interpretation of neural networks is fragile.” Proceedings of the AAAI Conference on Artificial Intelligence. Vol. 33. 2019
