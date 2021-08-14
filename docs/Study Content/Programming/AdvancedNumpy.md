---
sort: 10
---

# NumPy: Broadcasting and Vectorizing

We have earlier been introduced to  ```Numpy```, a Python library for numerical computing. In today's self study day, we are going to dive into two advanced Numpy concepts, namely broadcasting and vectorizing. Note that both concepts will be integral to your creative brief.

## Broadcasting

The term broadcasting describes how NumPy treats arrays with different shapes during arithmetic operations. For example, in order to add two arrays, the two arrays would have to have the same shape. In general, the smaller array is “broadcast” across the larger array so that they have compatible shapes.

Observe what happens when you run the following piece of coded

```python
import numpy as np

a = np.array([1.0, 2.0, 3.0])
b = np.array([2.0, 2.0, 2.0])
c = a * b
print(c)
```
Now, to see broadcasting in action, run the following code snippet:

```python
import numpy as np

a = np.array([1.0, 2.0, 3.0])
b = np.array([2.0])
c = a * b
print(c)
```

To paraphrase the official Numpy documentation - 'the result is equivalent to the previous example where b was an array. We can think of the scalar b being stretched during the arithmetic operation into an array with the same shape as a. The new elements in b, as shown in Figure 1, are simply copies of the original scalar. The stretching analogy is only conceptual. NumPy is smart enough to use the original scalar value without actually making copies so that broadcasting operations are as memory and computationally efficient as possible.'

<figure>
    <img src=".\assets\broadcasting.PNG" />
    <figcaption>Elements of a flowchart</figcaption>
</figure>
<br>

Please watch the following video to understanding Broadcasting as explained by one of the founding fathers of modern AI, Dr. Andrew Ng.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/tKcLaGdvabM?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->
