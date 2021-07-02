# Mathematics I: Introduction to Linear Algebra

This module introduces students to the fundamental concepts and techniques in Linear Algebra which is a key component in applied AI and DS algorithms. First, it will introduce students to and vectors and systems of linear equations. Second, the module introduces students to matrix operations such as determinants, transpose and inverse. Lastly, the module will zoom in on matrix multiplication and understanding linear regression using linear algebra.

## Assignment

Write a Python function to estimate the coefficients of a linear regression model using the normal equations.

&beta; = (X<sup>T</sup>X)<sup>-1</sup>X<sup>T</sup>Y

Where,

&beta; : vector of regression coefficients <br>
X : matrix of predictor variables. <br>
Y : vector of the outcome variable. <br>


## Requirements

Create functions in Python [1, 2] to:

1. Calculate the determinant of a matrix.
2. Obtain the transpose of a matrix.
3. Perform matrix inversion.
4. Compute the dot product of two matrices.
5. Compute the cross product of two matrices.


> **Use the functions created above to solve the normal equations for linear regression and verify your solution with the standard implementation in scikit-learn or R.**

## Deliverable(s)

The Jupyter notebooks or .py scripts are to be uploaded to Github no later than 5pm on last data lab day. Confer with a lecturer beforehand if you're handing in something other than Jupyter notebook or .py scripts.

## References
<a id="1">[1]</a>
<https://numpy.org/doc/stable/reference/routines.linalg.html>
<br>
<a id="2">[2]</a>
<https://numpy.org/doc/stable/reference/generated/numpy.linalg.solve.html>
<br>
