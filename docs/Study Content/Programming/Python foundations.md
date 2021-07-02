---
sort: 3
---

# 3. Python for AI and Data Science

Python is a general purpose programming language that is now widely used for Data Science and AI applications. It is one of the fastest growing programming languages in the AI and Data Science Industry. Companies worldwide are using Python to gain insights from their data and add value to their business processes. Unlike Python tutorials from a computer science perspective, this module focuses on Python for AI and Data Science applications. Python comes with a set of libraries and you will gain hands on experience with some of the most popular libraries used in AI and Data Science. A Python library is a collection of saved code that someone else has designed. In this introductory module, you will learn how to use Python libraries to read, explore and visualise data. Further you will use jupyter notebooks to prototype your applications, and become familiar with Github for version control.

A fun fact is that Python was developed quite close to Breda! In 1990, Dutch software engineer Guido van Rossum created the language while working at the Centre for Mathematics and Computer Science (CWI) in Amsterdam, The Netherlands.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/7kn7NtlV6g0?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

A few reasons why Python is a popular programming language for AI and Data Science are:
1. Python uses an easy-to-write, easy-to-read syntax.
2. In comparision to other languages, python is easy to set up and start prototyping your application.
3. There are several well maintained and active AI and data science libraries.
4. Using Jupyter notebooks, we can interactively develop applications.
5. Can be easily extended by adding new modules, implemented in other languages such as C or C++.
6. Is open source and runs anywhere, including Mac OS X, Windows, Linux, and Unix, with unofficial builds also available for Android and iOS.

Finally, Python is **FREE**!<br> It doesn't cost anything to download or use Python, or to include it in your application. Python can also be freely modified and re-distributed because while the language is copyrighted it's available under an open-source license [[1]](#1).

## Learning objectives
- [ ] Understand variable assignment in Python
- [ ] Understand conditional statements and loops
- [ ] Write your own Python function

## Python Programming: A Primer
In this section, you get an overview of essential Python programming concepts.
Next, we will go into more detail about Python’s
data structures, functions, and other built-in tools. We will now discover a few
key characteristics of Python.

### The indentation rule

Python uses whitespace (tabs or spaces) to structure code instead of using braces as in
many other languages.<br>

Consider a program to print numbers from 1 to 10:

```python
for x in range(1:10):
    print(x)
```

Similarily, consider a program to only print even numbers from 1 to 10:

```python
for x in range(0, 10):
    if(x%2 == 0):
        print(x)
```

A colon denotes the start of an indented code block after which all of the code must
be indented by the same amount until the end of the block. Typically four spaces is
the standard adopted by the vast majority of Python programmers, unless you have compelling reasons to do so otherwise, please follow the 4space rule.

### Comments
Any text preceded by the hash mark (pound sign) # is ignored by the Python inter‐
preter. This is often used to add comments to code.

```python
# range(0, 10) contains a object containing numbers from 0 to 10
for x in range(0, 10):
    # use the % operator to find the modulo
    if(x % 2 == 0):
        print(x)
```

Please watch this video to learn more about good commenting practices.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/kEuVvUc1Zec?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

### Objects
An important characteristic of the Python language is that every number, string,
data structure, function, class, module, and so on exists in the Python interpreter
in its own container which is referred to as a Python object.

### Variable assignment
When assigning a variable (or name) in Python, you are creating a reference to the
object on the righthand side of the equals sign. Consider a list of
integers:

```python
 a = [1, 2, 3]
```

This creates a new Python object **a** and assigns the list of integers '[1, 2, 3]'
to this object. In Pythonic terms, we are assigning the name **a** to the object
'[1, 2, 3]'.

> Note that we are not defining a specific data type for [1, 2 ,3].
> Python automatically recognizes it as a list of integers.

### Loops and conditionals
Loops are programs that iterate over a set of values to perform a certain task.
In Python, there are two kinds of loops.

#### For loops
Here the program iterates over a set range of values. At the end of one loop
iteration, the value of the iterator (x in the example) is automatically set to the next value.

```python
for x in range(0, 10):
    if(x % 2 == 0):
        print(x)
```

#### While loops
Here we start by setting the iterator to a given value. At the start of each loop
iteration, the value of the iterator is checked and as long as it meets the given condition, the loop is executed. However, unlike for loops

```python
x = 0
while(x < 10):
    if(x % 2 == 0):
        print(x)
    x = x + 1
```

#### if-else conditional statement

<figure>
    <img src=".\assets\ifelse.PNG" />
    <figcaption>if-else program flow (Source: Wikipedia)</figcaption>
</figure>
<br>

An if-else conditional statement is exactly as it seems. The program is executes certain statements if a condition is met, else it skips these statements and proceeds.

```python
for x in range(0, 10):
    if(x % 2 == 0):
        print('Even')
    else:
        print('Odd')
```

To understand more about loops, please watch the following short video.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/LrOAl8vUFHY?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

### Python functions

A function is a programming technique used to combine a set of statements which perform specific operations on variables.
Functions are an alternative method of cutting-and-pasting codes rather than duplicating lines of the same instruction or operation.

Imagine you are asked to add two numbers ```4``` and ```5```.
In python, you can perform this operation by simply typing..

```python
print(4 + 5)
```

Now imagine I ask you to print the sum of two numbers, but I change the numbers every hour.
Duplicating the ```print(x + y)``` statement every hour can become quiet tiring, not to mention extemely boring.
This is where functions come in handy.

```python
def SumTwoNumbers(x, y):
    return(x + y)
```

Please watch this brief video to review Python functions.

<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/nrCAxXfRU28?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

Function in Python accept variables known as function parameters. In our above example, ```SumTwoNumbers(x, y)```, ```x``` and ```y``` are example of function parameters. An unique feature of Python is that such function parameters can also have default values. To know how this works in practise, please watch the following video.

<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/sKW-zdYZNX4?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->


## Assignments - Hacker Rank

- [ ] Please go to <http://www.hackerrank.com> and login with your Buas account.
- [ ] Goto Practice -> Python
- [ ] Select the first two subdomains
<figure>
    <img src=".\assets\hackerRank.PNG" />
    <figcaption></figcaption>
</figure>
- [ ] Solve all challenges

> Hint: use the tutorials tab if you find yourself stuck
