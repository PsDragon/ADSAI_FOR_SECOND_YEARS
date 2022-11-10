## Differentiation

Differentiation is the process of finding the rate of change of a function. The derivative of a function $f(x)$ is denoted by $f'(x)$ and is defined as:

$$f'(x) = \lim_{h \to 0} \frac{f(x+h) - f(x)}{h}$$

In control theory, we use differentiation to find the rate of change of a state variable. For example, if we want to find the rate of change of the position of a car, we can use the following equation:

$$\dot{x} = \frac{dx}{dt} = \lim_{h \to 0} \frac{x(t+h) - x(t)}{h}$$

In the equation above, $x(t)$ is the position of the car at time $t$, and $\dot{x}$ is the rate of change of the position of the car at time $t$.

Numerical differentiation is the process of approximating the derivative of a function using a computer. In Python, we can use the `diff` function from the `numpy` library to approximate the derivative of a function. The `diff` function takes in a function and a value for $x$ and returns the derivative of the function at $x$. For example, if we want to find the derivative of the function $f(x) = x^2$ at $x = 2$, we can use the following code:

```python
import numpy as np

def f(x):
    return x**2

np.diff(f, 2)

# Output: 4.0
```

However, if we do not know the function $f(x)$, we can use the `diff` function to approximate the derivative of a set of data points. For example, if we have the following data points:

```python
x = [0, 1, 2, 3, 4]
y = [0, 1, 4, 9, 16]
```

We can use the `diff` function to approximate the derivative of the data points:

```python

np.diff(y) / np.diff(x)

# Output: array([1., 2., 3., 4.])
```

This is useful in control theory because we can use the `diff` function to approximate the derivative of a state variable. For example, if we have the following data points:

```python
t = [0, 1, 2, 3, 4]
x = [0, 1, 4, 9, 16]
```

We can use the `diff` function to approximate the derivative of the data points:

```python

np.diff(x) / np.diff(t)

# Output: array([1., 2., 3., 4.])
```

## Integration

Integration is the inverse operation of differentiation. It is the process of finding the area under a curve. The integral of a function $f(x)$ is denoted by $\int f(x) dx$. It is defined as:

$$\int f(x) dx = \lim_{h \to 0} \sum_{i=0}^{n-1} f(x_i) h$$

Numerical integration is the process of approximating the integral of a function using a computer. In Python, we can use the `trapz` function from the `scipy.integrate` library to approximate the integral of a function. The `trapz` function takes in a function and a value for $x$ and returns the integral of the function at $x$. For example, if we want to find the integral of the function $f(x) = x^2$ from $x = 0$ to $x = 2$, we can use the following code:

```python
import numpy as np
from scipy.integrate import trapz

def f(x):
    return x**2

trapz(f, 0, 2)

# Output: 2.6666666666666665
```

However, if we do not know the function $f(x)$, we can use the `trapz` function to approximate the integral of a set of data points. For example, if we have the following data points:

```python

x = [0, 1, 2, 3, 4]
y = [0, 1, 4, 9, 16]
```

We can use the `trapz` function to approximate the integral of the data points:

```python

trapz(y, x)

# Output: 14.0
```

## Example in Control Theory

### PID Controller for Cruise Control



### Exercises

1. Find the derivative of the following function:

$$f(x) = x^2$$

2. Find the integral of the following function:

$$f(x) = x^2$$

3. Find the derivative of the following data points:

```python

x = [0, 1, 2, 3, 4]
y = [0, 1, 4, 9, 16]
```

4. Find the integral of the following data points:

```python

x = [0, 1, 2, 3, 4]
y = [0, 1, 4, 9, 16]
```

Solutions: 

```python
#Question 1
import numpy as np

def f(x):
    return x**2

np.diff(f, 2)

# Output: 4.0
```

```python
#Question 2
import numpy as np
from scipy.integrate import trapz

def f(x):
    return x**2

trapz(f, 0, 2)

# Output: 2.6666666666666665
```

```python
#Question 3
import numpy as np

x = [0, 1, 2, 3, 4]
y = [0, 1, 4, 9, 16]

np.diff(y) / np.diff(x)

# Output: array([1., 2., 3., 4.])
```

```python
#Question 4
import numpy as np

x = [0, 1, 2, 3, 4]
y = [0, 1, 4, 9, 16]

trapz(y, x)

# Output: 14.0
```

Challenge:  <img src="Images/challenge.png" height="40" />

Create a PID controller for 


Compare your controller to one implemented in Python using the `simple-pid` library. You can find the documentation for the library [here](https://pypi.org/project/simple-pid/).

