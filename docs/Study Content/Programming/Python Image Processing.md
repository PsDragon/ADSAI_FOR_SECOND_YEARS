---
sort: 9
---

# Representing digital images

The analog images we see on paper are represented and stored in the computer as digital abstractions of what we see with our eyes in the real world. Before we begin to learn how to process images with Python, it is important to first learn how we abstract images.

## Learning Objectives
- [ ] Understand digital representation of images using pixels.
- [ ] Understand the RGB Model used to obtain such digital representations.
- [ ] Understand how to represent images in Python.
- [ ] Understand how to read, modify and write images using standard Python libraries.


## What is a pixel?
Digital images consist of hundreds, thousands, or millions of discrete 'picture elements', otherwise known as pixels. Each pixel can be thought of as a single square point of colored light. You are probably familiar with the terms ```480p, 720p, ...```. The number ```480``` stands for the number of vertical pixels in the image. A 480p video consists of frames which have 858 * 480 pixels in total.

> Take a standard image and zoom in until you can see the individual pixels.

When you zoom in, you may notice that each pixel is composed of a colour, but neighbouring pixels can also have different colours (indicating object boundaries). However, when we view them from a distance, these pixels seem to blend together to form a coherant image.

## The RGB Colour model
Digital images use some color model to create a broad range of colors from a small set of primary colors. Although there are several different color models that are used for images, the most commonly occurring one is the RGB (Red, Green, Blue) model [1].

The RGB model is an additive color model, which means that the primary colors are mixed together to form other colors. In the RGB model, the primary colors are red, green, and blue – thus the name of the model. Each primary color is often called a channel.

Most frequently, the amount of the primary color added is represented as an integer in the closed range [0, 255] representing the red, green, and blue channels, respectively. A larger number in a channel means that more of that primary color is present.

You may also come across images represented as a 24bit depth. This is because of how computers store numbers. To store the number 256, a computer does so using a binary number system. In this system, each symbol in a number is called a bit instead of a digit, and there are only two values for each bit (0 and 1). A decimal number 256 is represented using 8 bits in binary. Since, we have 3 channels RGB each represented using 8 bits, am image is therefore represented using 24bits.

> Convert the decimal number 256 to binary.

In sum, using the RGB model, we can represent any colour using a list of three primary colours ```[R, G, B]```, representing the red, green, and blue channels, respectively. A larger number in a channel means that more of that primary color is present.

> lookup google for a standard RGB colour table, what's unique about the colours black, gray, and white in the RGB model?

**Taken together, an image is a two-dimensional array of pixels and each pixel is a coloured (square) box, where the color and its intensity is specified by a 24-bit RGB array.***

## Bitmap images
Bitmap, or BMP file formats store images as we have conceptualised above. BMP files store graphics images as large arrays- encoded numbers that specify the color of each pixel in the image. Since computer files are one-dimensional structures, the pixel colors are stored one row at a time. That is, the first row of pixels (those with y-coordinate 0) are stored first, followed by the second row (those with y-coordinate 1), and so on. 24-bit BMP images have a relatively simple file format, can be viewed and loaded across a wide variety of operating systems, and have high quality. However, BMP images are not compressed, resulting in very large file sizes for any useful image resolutions.

> Imagine that we have a fairly large, but very boring image: a 5,000 × 5,000 pixel image composed of nothing but white pixels. If we used an uncompressed image format such as BMP, with the 24-bit RGB color model, how much storage would be required for the file?

As you have seen, images, even simple ones can take up a lot of space if not stored optimally. This leads us to the concept of image compression. In simple terms, we want to store images keeping the maximum amount of information, but taking up a minimal amount of space.
The idea of image compression is important to us for two reasons: first, compressed images have smaller file sizes, and are therefore easier to store and transmit; and second, compressed images may not have as much detail as their uncompressed counterparts, and so our programs may not be able to detect some important aspect if we are working with compressed images. Since compression is important to us, we should take a brief detour and discuss the concept.

> lookup google for lossy and lossless image compression formats such as JPEG, PNG and bitmap.

Please watch this brief video to review concepts learned about images, pixels and the RGB colour model.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/15aqFQQVBWU?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

## Representing digital images in Python

We now know that digital images are represented as rectangular arrays of individually-coded square pixels, and that the intensity or color of each pixel can be represented as an RGB triplet e.g., (34, 255, 67). Now that we have understood how digital images are represented, let's turn our attention to how we can use Python to represent and manipulate such digital images. In Python, images are stored in a similar manner using data structures provided by Python. In particular, images are stored as three-dimensional NumPy arrays where each dimension represents the color of each pixel.

The rectangular shape of the array corresponds to the shape (num rows, num columns) of the image. The “depth” of the array for an skimage image is three, with one layer for each of the three channels R, G and B. When we think of a pixel in an image, we think of its (x, y) coordinates (in a left-hand coordinate system) like (113, 45) and its color, specified as a RGB triple like (245, 134, 29). In an skimage image, the same pixel would be specified with (y, x) coordinates (45, 113) and RGB color (245, 134, 29).

## Reading and saving images in Python

Python provides provides easy-to-use functions for reading, displaying, and saving images using the ```skimage``` library. All of the popular image formats, such as BMP, PNG, JPEG, and TIFF are supported, along with several more esoteric formats.

To read an image in Python using ```skimage```, please run the following code by replacing imagename with the name of your image and format with the image format (e.g., JPEG, PNG).

```python
#load the skimage package
import skimage 

# read image
image = skimage.io.imread(fname="<imagename.format>")
```

> What kind of an object is image? hint: dtype

In order to view the image, please run the following code:

```python
import skimage.viewer

# display image
viewer = skimage.viewer.ImageViewer(image)
viewer.show()
```

To save an image, please run the following code:
```python
# save a new version in .tif format
skimage.io.imsave(fname="<newimagename.format>", arr=image)
```


# References
[1]: <https://datacarpentry.org/image-processing/>
<a id="1">1</a>
<https://datacarpentry.org/image-processing/>
<br>
