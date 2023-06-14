# A Beginner's Guide to Azure ML Managed Endpoints 🔚


Hello, future Data Scientist! 👋 In this tutorial, we'll walk you through deploying a registered model to a managed machine learning endpoint using the Azure ML Python SDK v2. Think of this as turning your model into an online service. This service can receive input data, process it, and return predictions, all in real-time through a REST API. How cool is that? 🚀

This tutorial is inspired by this [Microsoft Learn tutorial](https://learn.microsoft.com/en-us/azure/machine-learning/how-to-deploy-online-endpoints?view=azureml-api-2&tabs=python), which we recommend for a deeper understanding. But, for now, grab your ☕️ and let's get started! 

In essence, we're going to transform our model into an online service that can receive input data, process it, and return predictions in real-time through a REST API. Ready? Let's go!

## Step 1: Set Up Your Environment 🛠️

We're going to continue with the same project and environment we've been using throughout the course. 🌱 You can find the complete codebase for this tutorial [here](https://github.com/Deanis/Example-App.git). Go ahead, clone the repo, and let's roll! 📂

## Step 2: Model Scoring 🎯

Here we start to interact with our model. We 'score' it, which simply means using it to make some predictions. Let's dive into the code:

```python
import json
import numpy as np
import tensorflow as tf
import os
import base64
from PIL import Image
import io
```

In this section, we import libraries that we'll use later on. We use `numpy` for handling large, multi-dimensional arrays and matrices of numeric data, `tensorflow` to work with our deep learning model, `json` for parsing JSON data, and `os` for interacting with the operating system. JSON is a common format for sending data over the internet, and we'll use it to send data to our endpoint. We also import `base64` to decode the base64 image sent in the POST request, `PIL` to convert the image to grayscale, and `io` to convert the image to a byte array. 📚

```python
def init():
    global model
    base_path = os.getenv('AZUREML_MODEL_DIR')
    print(f"base_path: {base_path}")
    # list files and dirs in the model_path directory
    list_files(base_path) # This helper function is defined below it is optional
    model_path = os.path.join(base_path, 'INPUT_model')
    print(f"model_path: {model_path}")
    model = tf.keras.models.load_model(model_path)
```

In the `init()` function, we initialize our model. We retrieve the base path to our model directory from the environment variable `AZUREML_MODEL_DIR`, and then join it with `INPUT_model` to get the full path to the model. This is the default path where the registered model is stored in the endpoint container that Azure ML creates for us. Then, we load the model using TensorFlow. This is like finding the exact address (path) of your friend's house (model) and then going there! 🏡

The next step in the scoring process is to define the `run()` function. This function is called every time the endpoint receives a request. It takes the request data as input and returns the prediction as output. The `run()` function is the heart of our operation. It's where we process input data and use the model to make predictions.

```python
def run(raw_data):
    # Load the JSON data from the POST request
    data = json.loads(raw_data)
    base64_image = data['data']
    image_bytes = base64.b64decode(base64_image)
    image = Image.open(io.BytesIO(image_bytes))
    image = image.convert('L')
    image = image.resize((28, 28))
    data = np.array(image) / 255.0
    data = np.expand_dims(data, axis=(0, -1))
```

Here, we decode the base64 image sent in the POST request, convert it into grayscale, resize it to match the input shape that our model expects (28x28 pixels), normalize it (by dividing each pixel by 255, the maximum value of a byte), and then reshape it to a 4D tensor because our model expects a batch of images as input (batch size, height, width, channels). 

<details>
<summary>What is a base64 image??? Click to expand!</summary>

When deploying a machine learning model as a web service API, especially for image processing tasks, you often have to send images over the internet for prediction. However, directly sending binary image data over a network can be problematic, due to potential issues with data corruption, complex handling, and the overhead of managing multipart form data.

1. **Problem**: Sending images over the internet for machine learning prediction can be challenging due to potential data corruption and the complexity of handling binary data.

2. **Solution**: To solve this, images are converted into a text format called base64. This format is easy to send over a network and does not get corrupted.

3. **Process in Azure ML API**: In your machine learning API deployed on Azure, a client sends a base64-encoded image in a POST request to the API endpoint. 

4. **Decoding in `run()` function**: This function takes the base64 string, decodes it back into the original image data, and then processes the image (converts to grayscale, resizes, normalizes, reshapes) to get it ready for the model to make a prediction.

In simpler terms, base64 encoding is a way to convert images into a safe format for sending over the internet. Your API on Azure receives this image as text, changes it back into an image, and then prepares it for your machine learning model to analyze.
</details>

Finally, we use our model to make a prediction and return the result as a JSON object.🎉

```python
    prediction = model.predict(data)
    # Get the predicted label, because our model returns a list of probabilities for each class
    predicted_label = np.argmax(prediction, axis=1)[0]
    return json.dumps(predicted_label.tolist())
```
💡The `list_files()` function is a helper function we use to print out all the files and directories in a given start path. This is like a directory map, showing us what's where. 🗺️ This is helpful to find where the model files are stored in the container directory relative to the base path in case the standard code doesn't work and you need to modify the path. 

```python
def list_files(startpath):
    for root, dirs, files in os.walk(startpath):
        level = root.replace(startpath, '').count(os.sep)
        indent = ' ' * 4 * (level)
        print('{}{}/'.format(indent, os.path.basename(root)))
        subindent = ' ' * 4 * (level + 1)
        for f in files:
            print('{}{}'.format(subindent, f))
```

## Step 3: Create the Endpoint and Deploy the Model 🚀

Now, let's focus on how to create the endpoint and deploy the model. We will create a separate Python script for this.

In this code snippet, we import the necessary modules from the Azure ML SDK. These are more tools for our project, just Azure-specific! 🧰

```python
from azure.ai.ml import MLClient
from azure.identity import ClientSecretCredential
from azure.ai.ml.entities import ManagedOnlineEndpoint, ManagedOnlineDeployment, CodeConfiguration
import datetime
```
Then we set up the connection to our Azure ML workspace. It's like finding the right door and using the correct key! 🔑  We create an `MLClient` instance which is our main interface for working with Azure ML. You should be familiar with this code from the previous examples.

```python
subscription_id = "0a94de80-6d3b-49f2-b3e9-ec5818862801"
resource_group = "dean-sandbox"
workspace_name = "adsaimlsandbox"
tenant_id = "0a33589b-0036-4fe8-a829-3ed0926af886"
client_id = "a2230f31-0fda-428d-8c5c-ec79e91a49f5"
client_secret = "aTw8Q~wmEvkNZcjcVOu.l1PL8KZ_sF~VJ3zvZc2b"

credential = ClientSecretCredential(tenant_id, client_id, client_secret)

ml_client = MLClient(credential, subscription_id, resource_group, workspace_name)
```

Now we can start to look at creating the endpoint. We need to create an endpoint and then deploy our model to it. 🔚

First, we define a unique name for our endpoint by appending the current date and time to "mnist-endpt-" to avoid any name clashes.

```python
endpoint_name = "mnist-endpt-" + datetime.datetime.now().strftime("%m%d%H%M%f")
print(f"Endpoint name: {endpoint_name}")
```

Then, we create our endpoint using the `ManagedOnlineEndpoint` class and start the creation or update process. This step will take a few minutes to complete when the code is run. ⏳


```python
endpoint = ManagedOnlineEndpoint(
    name = endpoint_name, 
    description="this is a sample endpoint",
    auth_mode="key"
)

endpoint = ml_client.online_endpoints.begin_create_or_update(endpoint).result()
```
The only decision we need to make is whether to use a key or token for authentication. We will use a key for this example.


Now, we retrieve the model and environment we're going to use for our deployment. These will be models and environments we've already registered in our workspace. We can use the `get()` method to retrieve the latest version of a registered model or environment.

```python
registered_model_name = "example"
latest_model_version = 1
registered_environment_name = "aml-keras-mnist"
latest_environment_version = 11

model = ml_client.models.get(name=registered_model_name, version=latest_model_version)
env = ml_client.environments.get(name=registered_environment_name, version=latest_environment_version)
```

Finally, we create a deployment for our model. To do this we create a `ManagedOnlineDeployment` instance and begin the creation or update process. This is like packing our model in a box, ready to be shipped and used elsewhere! 📦 

In the code below we're using the `ManagedOnlineDeployment` object to define a deployment of a model. This is essentially where we specify how our model should be set up to serve predictions when it's deployed. It's like saying, "We're going to run a food truck, and here's how we'll set everything up to serve our delicious tacos!" 🌮

Here are the details:

```python
blue_deployment = ManagedOnlineDeployment(
    name="blue",
    endpoint_name=endpoint_name,
    model=model,
    environment=env,
    code_configuration=CodeConfiguration(
        code="./src/number_predictor", scoring_script="scoring.py"
    ),
    instance_type="Standard_D2_v2",
    instance_count=1,
)
```

- `name` is the name we're giving to this particular deployment. This should be unique within the endpoint.
- `endpoint_name` is the name of the endpoint that this deployment is associated with.
- `model` is the model that we're deploying. This is an instance of the `Model` class from the Azure ML SDK, which we obtained using `ml_client.models.get(name=registered_model_name, version=latest_model_version)`.
- `environment` is the compute environment where the model will be run. This defines things like the software dependencies that our model needs to run.
- `code_configuration` specifies where to find the code that will be run to serve predictions with our model. `code` is the relative path to the directory containing our code, and `scoring_script` is the name of the script that will be run for each prediction request. This script should contain two functions: `init()`, which is run once when the deployment starts up, and `run(data)`, which is run for each prediction request.
- `instance_type` specifies the type of Azure virtual machine to use for the deployment. In this case, we're using the `Standard_DS3_v2` type.
- `instance_count` is the number of instances to use for this deployment. You might want to use more than one if you expect a high volume of requests and need to scale out to handle it. This can be increased or decreased later if needed.

After we've defined our deployment, we then ask Azure ML to create or update the deployment using the `ml_client.begin_create_or_update(blue_deployment).result()` line of code. This is similar to the `begin_create_or_update()` method we used for the endpoint. It starts the process of creating or updating the deployment on Azure ML, waits for the operation to complete, and then returns the result. 

So in simple terms, we're telling Azure ML how to set up our model to serve predictions, and then we're asking it to go ahead and make it happen! 🚀

With this, your model is up and running as an online endpoint in Azure ML. Congratulations! 🎉 You've successfully navigated your journey from model creation to deployment and it should be visible in the Azure ML studio. Here's to many more! 🥂

The complete scoring and deployment code is available in the [scoring.py](https://github.com/Deanis/Example-App/blob/master/src/number_predictor/scoring.py) and [deploy.py](https://github.com/Deanis/Example-App/blob/master/create_endpoint.py) files. 📄

## Step 4: Test the endpoint 🧪

Now that we've deployed our model, we can test it out! 🧪 To test our model, we'll need to send it some data and see what it predicts. This involves a couple of steps: preparing the data, making the HTTP request, and interpreting the response.

First, we'll need an image to test. For this example, let's assume we have a 28x28 grayscale image of a handwritten digit stored in a file called `test_image.png`.

Here's how we can load the image and convert it into the base64-encoded text format that our endpoint expects:

```python
from PIL import Image
import base64
import io

# Open the image file
img = Image.open('./data/test_image.png')
# Create a BytesIO object
buffered = io.BytesIO()
# Save the image as jpeg to the BytesIO object
img.save(buffered, format='png')
# Get the byte value of the BytesIO object
img_byte = buffered.getvalue()
# Encode the byte to base64
img_base64 = base64.b64encode(img_byte)
# If you want to decode to string for storing in json or db
img_base64_str = img_base64.decode()

# See what the base64 encoded image looks like
print(f"img_base64_str: {img_base64_str}")

base64_image = img_base64_str
```

Now, we can send the HTTP request to our endpoint. We'll need to include our base64-encoded image in the body of the POST request:

```python
import requests
import json

# Set the endpoint URL
url = f"https://{endpoint_name}.azurewebsites.net/score"
# Set the authentication key
headers = {'Authorization': f'Bearer {key}'}
# Create the data payload
data = {"data": base64_image}
# Send the POST request and get the response
response = requests.post(url, headers=headers, data=json.dumps(data))
```
The end endpoint name is the name of the endpoint we created earlier, and the key is the authentication key (primary key) that we obtained when we created the endpoint. You can find these in you Workspace in the ML Studio. 


The data payload is a JSON object containing the base64-encoded image. We send the request using the `requests.post()` method and get the response back.

Finally, we interpret the response:

```python
# Get the prediction from the response
prediction = json.loads(response.content)
print("Predicted number is:", prediction)
```

And there you have it! We've just sent an image to our model and got a prediction back. Remember, your model's predictions will depend on how it was trained. So, if it was trained on images of handwritten digits, it should return the digit it thinks is in the image. 🥳

Remember, testing the model like this is a great way to make sure everything is working as expected before we move on to using the model in a real application. 🏁

Also, please note that the above code assumes that you already have the `endpoint_name` and `key` from the deployment of the model to the endpoint. If not, please make sure to retrieve these before proceeding with the test. 🔑

There is a notebook available in the the GitHub repo that contains the complete code for testing the endpoint. 📄








