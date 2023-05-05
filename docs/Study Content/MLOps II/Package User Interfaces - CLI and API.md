# Interfacing with Python Packages - CLI and API (Work In Progress)

## Introduction
Welcome to this module on interacting with Python code using Command Line Interfaces (CLIs) and Application Programming Interfaces (APIs)! 🐍 In this module, we'll dive into why you might want to use these tools to interact with a codebase instead of editing the code directly, and explore some popular Python libraries that can help you build powerful CLIs and APIs. 

After completing this course, you will be able to:

- [ ] **Create** powerful and user-friendly command line interfaces (CLIs) using popular Python libraries like `argparse` and `Typer`.
- [ ] **Design** and implement APIs with `FastAPI`, incorporating input validation, security, authentication, and authorization.
- [ ] **Test** and **deploy** your CLIs and APIs to ensure their correctness, robustness, and seamless integration with other applications and systems.
- [ ] **Apply** best practices for building maintainable, scalable, and user-friendly interfaces in your Python projects.

Let's get started! 😄

### Why use CLIs and APIs? 🤔

You might be wondering why we'd want to interact with Python code using CLIs and APIs instead of just editing the code. Great question! Here are a few reasons:

1. **Ease of use**: CLIs and APIs provide a simpler, more consistent way to interact with your code. You don't need to dive into the codebase to make changes – just send a command or a request! 🚀 Think of CLIs and APIs like a remote control for your code. You don't need to open up the TV and tinker with its components to change channels or adjust the volume. Instead, you just press a button on the remote and voilà! Similarly, CLIs and APIs allow you to interact with your code by sending commands or requests, without diving into the codebase. 🚀📺

2. **Encapsulation**: These tools help you separate the functionality of your code from its interface. This makes it easier to maintain, update, and extend your code. 👌 Imagine a car engine – you don't need to understand every detail of its complex internal workings to drive the car. You only need to know how to use the steering wheel, pedals, and other controls. CLIs and APIs work like the car's controls, encapsulating the complexity of your code and providing a simplified interface that makes it easier to maintain, update, and extend your code. 🚗🔧

3. **Collaboration**: By providing a clear interface, CLIs and APIs make it easier for others to interact with your code without having to understand all its inner workings. 🤝 Picture a restaurant kitchen. The chef doesn't need to know how to grow and harvest the ingredients; they just need to know how to cook them. CLIs and APIs are like a recipe that other developers can follow to use your code, without having to understand all its inner workings. This makes it easier for others to work with your code, creating a more collaborative environment. 👩‍🍳📖

4. **Integration**: APIs, in particular, enable you to expose your code's functionality so that it can be easily consumed by other applications, services, or systems. 🌐 Imagine your code as a power outlet, and APIs as the adapter that lets you plug in various devices from around the world. By exposing your code's functionality through APIs, you make it easy for other applications, services, or systems to "plug in" and consume your code, just like an adapter lets you connect a foreign device to a local power source. This enables seamless integration and communication between different systems. 🔌🌐

Now that we know *why* we'd want to use these tools, let's take a look at some popular Python libraries for building CLIs and APIs!

### CLI Libraries: argparse vs. Typer 🛠️

There are many libraries available for creating CLIs in Python, but two of the most popular are `argparse` and `Typer`. You will already have come across `argparse`, but `Typer` may be new.  Let's take a look at their key features and differences:

| Feature                | argparse ([docs](https://docs.python.org/3/library/argparse.html))                                            | Typer ([docs](https://typer.tiangolo.com/))                               |
|------------------------|-----------------------------------------------------|---------------------------------------|
| Included in Python     | Yes, it's part of the standard library! 🎁          | No, you'll need to install it. 📦     |
| Syntax                 | More verbose, with lots of boilerplate code. 😵     | Minimal and clean. 😇                 |
| Type annotations       | Not supported.                                      | Supported! 🎉                          |
| Automatic help         | Yes, but customization is limited. 🆘                | Yes, and it's highly customizable! 💪  |
| Tab completion         | Not supported out of the box. 😕                    | Yes, with just a few lines of code! 🤯 |

In summary, while `argparse` is part of the standard library and doesn't require installation, `Typer` is a more modern and user-friendly option that supports type annotations and offers a cleaner syntax. You are welcome to use either library for your projects.

### API Library: FastAPI 🚀

`FastAPI` ([docs](https://fastapi.tiangolo.com/))is a popular Python library for building APIs. It's known for its speed, ease of use, and automatic documentation generation. Some of its key features include:

- **Type annotations**: FastAPI uses Python type hints to validate input data, generate documentation, and provide IDE autocompletion.
- **Speed**: Built on top of Starlette and Pydantic, FastAPI is one of the fastest Python web frameworks available.
- **Automatic documentation**: FastAPI generates interactive API documentation (using OpenAPI and JSON Schema) right out of the box, making it easy for developers to understand and test your API. 📚

## Introduction to Command Line Interfaces (CLIs) 🖥️

Welcome to the fascinating world of command line interfaces (CLIs)! In this chapter, we'll explore the basics of CLIs, learn why they're so useful, and start building our own CLI tools using Python. Let's dive in! 🌊

### What is a Command Line Interface (CLI)? 🤔

A Command Line Interface (CLI) is a text-based interface that allows users to interact with a program or an operating system by entering commands and receiving textual responses. CLIs are a powerful way to access a program's functionality without the need for a graphical user interface (GUI). They're especially popular among developers, as they offer a more direct and flexible way to interact with software.

### Why Use CLIs? 💡

There are several reasons why you might choose to create a CLI specifically for your Python code:

1. **Simplicity**: CLIs can be simpler and faster to use than GUIs for certain tasks, especially when users are familiar with the commands.
2. **Scriptability**: CLIs make it easy to automate tasks using scripts, enabling users to perform repetitive tasks more efficiently.
3. **Low resource usage**: CLIs generally require fewer system resources than GUIs, making them ideal for running on low-powered devices or remote servers.
4. **Cross-platform compatibility**: CLIs can run on a variety of platforms without the need for platform-specific UI elements.

### Creating a Simple CLI with `argparse` 🛠️

Let's build our first CLI using Python's built-in `argparse` library. This simple CLI will perform basic arithmetic operations like addition, subtraction, multiplication, and division.

```python
import argparse

def main():
    parser = argparse.ArgumentParser(description="A simple calculator CLI")
    parser.add_argument("x", type=float, help="First number")
    parser.add_argument("y", type=float, help="Second number")
    parser.add_argument("operation", choices=["add", "subtract", "multiply", "divide"], help="Arithmetic operation")

    args = parser.parse_args()

    if args.operation == "add":
        result = args.x + args.y
    elif args.operation == "subtract":
        result = args.x - args.y
    elif args.operation == "multiply":
        result = args.x * args.y
    else:
        result = args.x / args.y

    print(f"Result: {result}")

if __name__ == "__main__":
    main()
```

:pencil: Save the code as `calculator.py` and run it in the terminal with the following command:

```bash
python calculator.py 5 3 add
```

You should see the output: `Result: 8.0`

Congratulations, you've just created your first CLI using `argparse`! 🎉

### Creating a More Advanced CLI with `Typer` 💎

Now let's explore `Typer`, a more modern and user-friendly library for building CLIs in Python. To get started, you'll need to install Typer:

```bash
pip install typer
```
Let's create the same calculator CLI we built earlier, but this time using `Typer`:

```python
import typer

app = typer.Typer()

@app.command()
def calculator(x: float, y: float, operation: str = typer.Option(..., help="Arithmetic operation", case_sensitive=False, choices=["add", "subtract", "multiply", "divide"])):
    if operation.lower() == "add":
        result = x + y
    elif operation.lower() == "subtract":
        result = x - y
    elif operation.lower() == "multiply":
        result = x * y
    elif operation.lower() == "divide":
        result = x / y

    typer.echo(f"Result: {result}")

if __name__ == "__main__":
    app()
```

:pencil: Save the code as `calculator_typer.py` and run it in the terminal with the following command:

```bash
python calculator_typer.py calculator 5 3 add
```

You should see the output: `Result: 8.0`

Great job, you've just built a CLI using `Typer`! 🎊

As you can see, `Typer` offers a cleaner syntax and supports type annotations, making it easier to create more advanced and user-friendly CLIs.

In the upcoming sections, we'll dive deeper into `argparse` and `Typer`, exploring their features and learning how to create more advanced CLIs that can handle complex arguments, provide helpful error messages, and even support features like tab completion. Get ready to sharpen your CLI-building skills! 🛠️🚀


<iframe width="560" height="315" src="https://www.youtube.com/embed/tLKKmouUams" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

