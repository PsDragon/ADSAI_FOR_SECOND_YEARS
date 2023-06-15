# A Beginner's Guide to Azure Container Instances (ACI) (Work in Progress 🚧)

In this example, we'll deploy a model inside a container using Azure Container Instances. We'll use the same model that we trained and registered in the previous examples as well as the API that we created in the previous example on FastAPI.

We will follow these steps:

- Create a Dockerfile - to package our model and API into a container. 📦
- Build the container image 
- Run the container image - to test our container locally. 🏗️
- Deploy the container image to ACI - to deploy our container to Azure. 🚀

## Step 1: Set Up Your Environment 🛠️

We're going to continue with the same project and environment we've been using throughout the course. 🌱 You can find the complete codebase for this tutorial [here](https://github.com/Deanis/Example-App.git). Go ahead, clone the repo, and let's roll! 📂

## Step 2: Create a Dockerfile 🐳

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

```bash
docker build -t docker_username/test-api-image .
```

## Step 4: Run the Container Image and Test the API Locally 🧪

```bash
docker run -p 80:80 docker_user_name/test-api-image
```

## Step 5: Deploy the Container Image to ACI 🚀

```python
from azure.identity import ClientSecretCredential
from azure.mgmt.containerinstance import ContainerInstanceManagementClient
from azure.mgmt.containerinstance.models import (ContainerGroup, Container, ResourceRequests, ResourceRequirements, 
                                                 ContainerGroupNetworkProtocol, OperatingSystemTypes,
                                                 IpAddress, Port)

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

# Get credentials
credentials = ClientSecretCredential(
    client_id=CLIENT_ID,
    client_secret=CLIENT_SECRET,
    tenant_id=TENANT_ID
)

# Create a Container Instance Management client
container_client = ContainerInstanceManagementClient(credentials, SUBSCRIPTION_ID)

# Define the container
container_resource_requests = ResourceRequests(memory_in_gb=MEMORY_GB, cpu=CPU_CORE_COUNT)
container_resource_requirements = ResourceRequirements(requests=container_resource_requests)
container = Container(name=CONTAINER_NAME, image=IMAGE, resources=container_resource_requirements, ports=[Port(port=80)])

# Define the group of containers
container_group = ContainerGroup(location='westeurope', containers=[container], os_type=OperatingSystemTypes.linux, ip_address=IpAddress(ports=[Port(protocol=ContainerGroupNetworkProtocol.tcp, port=80)], type='Public'))

# Create the container group
container_client.container_groups.begin_create_or_update(RESOURCE_GROUP, CONTAINER_NAME, container_group)
```

## Step 6: Test the API in ACI 🧪

First you can navigate to the Azure portal and find the IP address of your container. The first test will be to open the FastAPI docs page in your browser. You can do this by navigating to the following URL in your browser.

```bash
http://<container_IP>:80/docs
```
Here you can test the API as you did with the local version of the API.

Then you can use the following code to test the API.

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


