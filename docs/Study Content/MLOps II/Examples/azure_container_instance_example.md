# A Beginner's Guide to Azure Container Instances (ACI)

In this example, we'll deploy a model inside a container using Azure Container Instances. We'll use the same model that we trained and registered in the previous examples as well as the API that we created in the previous example on FastAPI.

We will follow these steps:

- Create a Dockerfile - to package our model and API into a container. 📦
- Build the container image 
- Run the container image - to test our container locally. 🏗️
- Deploy the container image to ACI - to deploy our container to Azure. 🚀

## Step 1: Set Up Your Environment 🛠️

We're going to continue with the same project and environment we've been using throughout the course. 🌱 You can find the complete codebase for this tutorial [here](https://github.com/Deanis/Example-App.git). Go ahead, clone the repo, and let's roll! 📂

## Step 2: Create a Dockerfile 🐳

s you know by now, a Dockerfile is a set of instructions that Docker uses to build an image. An image is like a blueprint for your application, containing all the necessary code, libraries, and dependencies your app needs to run. You should already have a Docker container with your API from the previous example. If you do skip to step 4️⃣. If you have already tested your containerized API locally, you can skip to step 5️⃣.

Here's the Dockerfile broken down:

```dockerfile
# Use an official Python runtime as a parent image
FROM python:3.9
```
We're starting with a base image that has Python 3.9 pre-installed.

```dockerfile
# Set the working directory in the container
WORKDIR /app/src/number_predictor
```
The `WORKDIR` instruction sets the working directory inside the container. Any subsequent `RUN`, `CMD`, `COPY`, `ADD` instruction will be run from this directory. We set the working directory to `/app/src/number_predictor` because that's where our API code (`app.py`) lives. This may need to be changed depending on your project structure.

```dockerfile
# Add metadata to the image
LABEL maintainer="this should be your name and email address"
LABEL version="1.0"
LABEL description="Python CLI MNIST app"
```
`LABEL` allows you to add metadata to your image. It's a good place to include details about the image or the person maintaining it.

```dockerfile
# Copy the current directory contents into the container at /app
COPY . /app
```
The `COPY` (`COPY <src> <destination>`) command copies new files or directories from `<src>` and adds them to the filesystem of the container at the path `<dest>`. Don't confuse `<src>` with the source (src) folder on your local machine—it's relative to the `Dockerfile`, not your current directory. In this case, we're copying the contents of the current directory (the directory containing the `Dockerfile`) into the `/app` directory inside the container.

```dockerfile
# Install poetry
RUN pip install poetry
```
We're installing Poetry, a tool for Python dependency management. At this point you're a poet and you didn't even know it. 😎

```dockerfile
# Install only runtime dependencies using poetry
RUN poetry config virtualenvs.create false && poetry install --only main
```
Here we're telling Poetry not to create a virtual environment, then we're using it to install our main dependencies. We don't need a virtual environment because we're already in a container, which is isolated from the rest of our system. We don't need to install our dev dependencies because we won't be interacting with any of these tools inside the container. This helps keep our image size smaller. 

```dockerfile
# Install additional dependencies
# This is needed for the FastAPI app to accept file uploads
RUN pip install python-multipart
```
We install any additional dependencies our app needs. In this case, it's `python-multipart`, which allows FastAPI to accept file uploads. Ideally we would have included this in our `pyproject.toml` file and installed it with Poetry, but if for whatever reason you can't do that, you can install it here.

```dockerfile
# Set the startup command to run your API
ENTRYPOINT ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]
```
The `ENTRYPOINT` specifies the command that will be executed when the container starts. Here we're starting our FastAPI application with Uvicorn, a lightning-fast ASGI server. This will start our API on port 80, which is the default port for HTTP traffic.

Here is the complete Dockerfile:

```dockerfile
# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app/src/number_predictor

# Add metadata to the image
LABEL maintainer="this should be your name and email address"
LABEL version="1.0"
LABEL description="Python CLI MNIST app"

# Copy the current directory contents into the container at /app
COPY . /app

# Install poetry
RUN pip install poetry

# Install only runtime dependencies using poetry
RUN poetry config virtualenvs.create false && poetry install --only main

# Install additional dependencies
# This is needed for the FastAPI app to accept file uploads
RUN pip install python-multipart

# Set the startup command to run your API
ENTRYPOINT ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]
```

## Step 3: Build the Container Image 🏗️

Building an image from the Dockerfile is as simple as running the `docker build` command. This command uses Docker to build an image from the Dockerfile and a "context". The build's context is the set of files in the specified PATH or URL (in this case, it's the current directory).

```bash
docker build -t docker_username/test-api-image .
```
The `-t` flag lets you tag your image so it's easier to find later.

## Step 4: Run the Container Image and Test the API Locally 🧪

Now that we have an image, we can run a container from it. A container is a running instance of an image.

```bash
docker run -p 80:80 docker_user_name/test-api-image
```
We're telling Docker to run our image as a container, and `-p` maps the host's port to the container's port.

## Step 5: Deploy the Container Image to ACI 🚀

Azure Container Instances (ACI) is a service that allows you to run containers in the Azure cloud without needing to manage any underlying infrastructure. This is perfect for scenarios when you just want to deploy a containerized app, without worrying about orchestrating and managing underlying resources.

Let's break down the code to understand it better:

```python
from azure.identity import ClientSecretCredential
from azure.mgmt.containerinstance import ContainerInstanceManagementClient
from azure.mgmt.containerinstance.models import (ContainerGroup, Container, ResourceRequests, ResourceRequirements, 
                                                 ContainerGroupNetworkProtocol, OperatingSystemTypes,
                                                 IpAddress, Port)
```
We start by importing the necessary modules from the Azure SDK. `ClientSecretCredential` is used for authenticating our app with Azure. The `ContainerInstanceManagementClient` is the client object that we'll use to interact with Azure and manage our container instances.

The other imported classes are used to define the properties of our container instance.

```python
# Replace with your own values
SUBSCRIPTION_ID ="0a94de80-6d3b-49f2-b3e9-ec5818862801"
RESOURCE_GROUP = "dean-sandbox"
CONTAINER_NAME = "test-api-image"
IMAGE = 'deanis/test-api-image:latest'  # Docker Hub image
CPU_CORE_COUNT = 1.0
MEMORY_GB = 1.5
TENANT_ID = "0a33589b-0036-4fe8-a829-3ed0926af886"
CLIENT_ID = "a2230f31-0fda-428d-8c5c-ec79e91a49f5"
CLIENT_SECRET = "aTw8Q~wmEvkNZcjcVOu.l1PL8KZ_sF~VJ3zvZc2b"
```
Here, we're setting up some important details related to our Azure account and the container we want to deploy. You'll need to replace these with your own details.

```python
# Get credentials
credentials = ClientSecretCredential(
    client_id=CLIENT_ID,
    client_secret=CLIENT_SECRET,
    tenant_id=TENANT_ID
)
```
We're creating a `ClientSecretCredential` object using the client ID, client secret, and tenant ID. These are used to authenticate our app with Azure.

```python
# Create a Container Instance Management client
container_client = ContainerInstanceManagementClient(credentials, SUBSCRIPTION_ID)
```
Now we're creating a `ContainerInstanceManagementClient` object using the credentials we just created and our subscription ID. This client object is our main tool for interacting with Azure and managing our container instances.

```python
# Define the container
container_resource_requests = ResourceRequests(memory_in_gb=MEMORY_GB, cpu=CPU_CORE_COUNT)
container_resource_requirements = ResourceRequirements(requests=container_resource_requests)
container = Container(name=CONTAINER_NAME, image=IMAGE, resources=container_resource_requirements, ports=[Port(port=80)])
```
Here we're defining the properties of our container. We're specifying the amount of memory and CPU cores it needs, the name of the container, the image it's based on (which is the image we previously pushed to Docker Hub), and the ports it exposes.

```python
# Define the group of containers
container_group = ContainerGroup(location='westeurope', containers=[container], os_type=OperatingSystemTypes.linux, ip_address=IpAddress(ports=[Port(protocol=ContainerGroupNetworkProtocol.tcp, port=80)], type='Public'))
```
Here we're defining a container group. A container group is a logical group of containers that

 get scheduled on the same host machine. In this case, our group only contains one container.

```python
# Create the container group
container_client.container_groups.begin_create_or_update(RESOURCE_GROUP, CONTAINER_NAME, container_group)
```
Finally, we're using the `begin_create_or_update` method of our client object to create our container group in Azure. This method is async and starts the creation or update process, then immediately returns without waiting for the operation to complete.

## Step 6: Test the API in ACI 🧪

In this final step, we test our deployed API. First, you can navigate to the Azure portal and find the IP address of your container. The first test will be to open the FastAPI docs page in your browser. You can do this by navigating to the following URL in your browser.

```bash
http://<container_IP>:80/docs
```
This URL is composed of the public IP address of your container and the port that your app is listening on. The `/docs` at the end is a feature of FastAPI - it automatically generates a page with documentation for your API.

Here you can test the API as you did with the local version of the API.

The Python script below makes a POST request to the `predict_file/` endpoint of our API, just like you could do from the FastAPI docs page. The difference is that this script allows us to automate the testing process and doesn't require manual interaction.

```python
import requests

# The URL of the API
container_IP = 'IP address of your container' # Found in the Azure portal
api_url = f'http://{container_IP}:80/'
endpoint = 'predict_file/'
url = api_url + endpoint

# Load the image file
image_file = open('./data/4.png', 'rb')

# Create the payload
payload = {'image_file': image_file}

# Send the POST request
response = requests.post(url, files=payload)

# Print the response
print(response.json())
```
In this script, we're constructing the URL of the endpoint, loading an image file, and then sending the image file to the API in a POST request. The response from the API (the prediction made by our machine learning model) is then printed out.

This concludes our tutorial on how to deploy a containerized app to Azure Container Instances. I hope it was helpful! 🌟


