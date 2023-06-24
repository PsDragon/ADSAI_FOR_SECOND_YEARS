---
sort: 10
---

# Meta Learning
Meta-learning is an ensemble learning method which learns
from the results of the base classifiers. It has a two-level
structure, where the algorithms used in the first level are called
base-learners and the algorithm in the second level is called
the meta-learner. The base-learners are trained on the original
training data. The meta-learner is trained by the predictions of
the base classifiers and the true class of the original training
data.


## Meta learning for XAI in practice.
First, we build a meta-model by combining hyperparameters obtained from several
models on (similar) datasets with the same goal (e.g., classification). Next, we
train the meta model on our dataset of interest and apply XAI methods on
this model in order to gain more insight into the meta-model structure. The
explanation therefore is not just based on one model (and dataset)- but on
a model trained on diverse datasets.

Please watch the following video and summarize the lecture in your own words (~500 words).

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/1VXH2fMv1U4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->
