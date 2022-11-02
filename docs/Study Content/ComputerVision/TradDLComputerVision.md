---
sort: 1
---

# Traditional Computer Vision

## Introduction

Nowadays, it seems like computer vision (CV) is all about deep learning (DL). While it is true that DL models dominate CV applications, it does not mean that traditional CV techniques are no longer in use. Real CV projects typically require multiple steps, from raw data to the required output, forming image processing pipelines. These pipelines rarely rely on pure DL. Instead, it is more common to see a pipeline with DL as its backbone supported by traditional CV.

Let’s look at an example project on plant biology involving one of your mentors. The dataset consists of plant images planted such that their roots are visible. The task is to measure the length of these roots from the images. The First 100 hours of plant development is monitored by photographing the seed at t=0 h and repeating it every hour until t=100h. Roots appear after germination around t=20h.

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/U_BoKRrSzqA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
Video 1: Video summary of the plant biology project.

Finding the plants and roots can be done effectively using DL. Researchers used U-Net to find the plant root pixels. But measuring root length is not feasible with DL. Instead, a traditional CV technique called skeletonization was the optimum approach for this problem.

## Where to start?

The best way to start learning traditional CV using Python is to learn OpenCV. It is one of the most popular CV libraries out there. It is used for both traditional CV and DL tasks. In the DataLab dedicated to traditional CV, you will write code using OpenCV and Python and detect objects.

Before attempting the DataLab tasks, you will complete the following OpenCV course:

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/oXlwWbU8l2o" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
Video 2: OpenCV Course – Full Tutorial with Python

Make sure you watch sections 1 & 2 of the video. Then, practice what you learned by choosing an image you like and try applying some of the OpenCV functions to it. For example, convert the image to grayscale, then blur the image.

## Course contents

### Getting started
⌨️ [0:00:00](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=0s) Introduction\
⌨️ [0:01:07](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=67s) Installing OpenCV and Caer
### Section 1 - Basics
⌨️ [0:04:12](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=252s) Reading Images & Video\
To process images, you need to learn how to read them. This module teaches you how to use cv2.imread(). It also shows how to show images using OpenCV but you can use matplotlib for that as well.\
⌨️ [0:12:57](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=777s) Resizing and Rescaling Frames \
Regardless of working on DL or traditional CV, you need to be comfortable with resizing and rescaling images. Neural networks accept square images but real image datasets consist of rectangular images most of the time.\
⌨️ [0:20:21](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=1221s) Drawing Shapes & Putting Text\
If you would like to drawing bounding boxes on images, you need to learn annotating images with OpenCV.\
⌨️ [0:31:55](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=1915s) 5 Essential Functions in OpenCV \
OpenCV is a vast library where you can find almost any CV operation you can think of. But some are more common than the others. In this module you will learn about turning an image to grayscale, blurring it, detecting its edges and dilation/erosion.\
⌨️ [0:44:13](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=2653s) Image Transformations\
⌨️ [0:57:06](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=3426s) Contour Detection Section
### Section 2 – Advanced
⌨️ [1:12:53](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=4373s) Color Spaces \
⌨️ [1:23:10](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=4990s) Color Channels \
⌨️ [1:31:03](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=5463s) Blurring \
⌨️ [1:44:27](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=6267s) BITWISE operations\
⌨️ [1:53:06](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=6786s) Masking\
⌨️ [2:01:43](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=7303s) Histogram Computation \
⌨️ [2:15:22](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=8122s) Thresholding/Binarizing Images \
⌨️ [2:26:27](https://www.youtube.com/watch?v=oXlwWbU8l2o&t=8787s) Edge Detection

## References

[1] Lube, V., Noyan, M.A., Przybysz, A. et al. [MultipleXLab: A high-throughput portable live-imaging root phenotyping platform using deep learning and computer vision](https://doi.org/10.1186/s13007-022-00864-4). Plant Methods 18, 38 (2022).
