---
sort: 1
---

# Traditional Computer Vision

Nowadays, it seems like computer vision (CV) is all about deep learning (DL). While it is true that DL models dominate CV applications, it does not mean that traditional CV techniques are no longer in use. Real CV projects typically require multiple steps, from raw data to the required output, forming image processing pipelines. These pipelines rarely rely on pure DL. Instead, it is more common to see a pipeline with DL as its backbone supported by traditional CV.

Let’s look at an example project on plant biology involving one of your mentors. The dataset consists of plant images planted such that their roots are visible. The task is to measure the length of these roots from the images. The First 100 hours of plant development is monitored by photographing the seed at t=0 h and repeating it every hour until t=100h. Roots appear after germination around t=20h.

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/U_BoKRrSzqA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Finding the plants and roots can be done effectively using DL. Researchers used U-Net to find the plant root pixels. But measuring root length is not feasible with DL. Instead, a traditional CV technique called skeletonization was the optimum approach for this problem.
