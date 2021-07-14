---
sort: 9
---

# Representing digital images

The analog images we see on paper are represented and stored in the computer as digital abstractions of what we see with our eyes in the real world. Before we begin to learn how to process images with Python, it is important to first learn how we abstract images.

## Learning Objectives
- [ ] Understand digital representation of images using pixels.
- [ ] Understand the RGB Model used to obtain such digital representations.
- [ ] Understand how to read images using Python.
- [ ] Understand how to modify images using NumPy.


## What is a pixel?
Digital images consist of hundreds, thousands, or millions of discrete 'picture elements', otherwise known as pixels. Each pixel can be thought of as a single square point of colored light. You are probably familiar with the terms ```480p, 720p, ...```. The number ```480``` stands for the number of vertical pixels in the image. A 480p video consists of frames which have 858 * 480 pixels in total.

> Take a standard image and zoom in until you can see the individual pixels.

When you zoom in, you may notice that each pixel is composed of a colour, but neighbouring pixels can also have different colours (indicating object boundaries). However, when we view them from a distance, these pixels seem to blend together to form a coherant image.

## The RGB Colour model
Digital images use some color model to create a broad range of colors from a small set of primary colors. Although there are several different color models that are used for images, the most commonly occurring one is the RGB (Red, Green, Blue) model.

The RGB model is an additive color model, which means that the primary colors are mixed together to form other colors. In the RGB model, the primary colors are red, green, and blue – thus the name of the model. Each primary color is often called a channel.

Most frequently, the amount of the primary color added is represented as an integer in the closed range [0, 255] representing the red, green, and blue channels, respectively. A larger number in a channel means that more of that primary color is present.

You may also come across images represented as a 24bit depth. This is because of how computers store numbers. To store the number 256, a computer does so using a binary number system. In this system, each symbol in a number is called a bit instead of a digit, and there are only two values for each bit (0 and 1). A decimal number 256 is represented using 8 bits in binary. Since, we have 3 channels RGB each represented using 8 bits, am image is therefore represented using 24bits.

> Convert the decimal number 256 to binary.

In sum, using the RGB model, we can represent any colour using a list of three primary colours ```[R, G, B]```, representing the red, green, and blue channels, respectively. A larger number in a channel means that more of that primary color is present.

> lookup google for a standard RGB colour table, what's unique about the colours black, gray, and white in the RGB model?

**Taken together, an image is a two-dimensional array of pixels and each pixel is a coloured (square) box, where the color is specified by a 24-bit RGB array.***

## Bitmap images
Bitmap, or BMP file formats store images as we have conceptualised above. BMP files store graphics images as large arrays- encoded numbers that specify the color of each pixel in the image. Since computer files are one-dimensional structures, the pixel colors are stored one row at a time. That is, the first row of pixels (those with y-coordinate 0) are stored first, followed by the second row (those with y-coordinate 1), and so on. 24-bit BMP images have a relatively simple file format, can be viewed and loaded across a wide variety of operating systems, and have high quality. However, BMP images are not compressed, resulting in very large file sizes for any useful image resolutions.

> Imagine that we have a fairly large, but very boring image: a 5,000 × 5,000 pixel image composed of nothing but white pixels. If we used an uncompressed image format such as BMP, with the 24-bit RGB color model, how much storage would be required for the file?

As you have seen, images, even simple ones can take up a lot of space if not stored optimally. This leads us to the concept of image compression. In simple terms, we want to store images keeping the maximum amount of information, but taking up a minimal amount of space.
The idea of image compression is important to us for two reasons: first, compressed images have smaller file sizes, and are therefore easier to store and transmit; and second, compressed images may not have as much detail as their uncompressed counterparts, and so our programs may not be able to detect some important aspect if we are working with compressed images. Since compression is important to us, we should take a brief detour and discuss the concept.

> lookup google for lossy and lossless image compression and read about image steganography.

Please watch this brief video to review concepts learned about images, pixels and the RGB colour model.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/15aqFQQVBWU?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->


# References
[1]: <https://numpy.org/doc/stable/user/absolute_beginners.html>
<a id="1">1</a>
<https://numpy.org/doc/stable/user/absolute_beginners.html>
<br>