# A Beginner's Guide to Azure ML Pipelines 🚀

In this example we will learn how to deploy a registered model to a managed machine learning endpoint using the Python SDK v2. It's going to be an exciting journey, so fasten your seat belts and let's get started!

This tutorial is a friendly adaptation of this [Microsoft Learn tutorial](https://learn.microsoft.com/en-us/azure/machine-learning/how-to-deploy-online-endpoints?view=azureml-api-2&tabs=python). For a deeper dive, do check it out.

Our goal is to deploy a model that we have previously registered as an online endpoint and consume it using a REST API.


## Scoring 

We will use the following code to score the model. 

```python
import json
import numpy as np
import tensorflow as tf
import os
import base64
from PIL import Image
import io

def init():
    global model
    base_path = os.getenv('AZUREML_MODEL_DIR')
    print(f"base_path: {base_path}")
    # list files and dirs in the model_path directory
    list_files(base_path)
    model_path = os.path.join(base_path, 'INPUT_model')
    print(f"model_path: {model_path}")
    model = tf.keras.models.load_model(model_path)

def run(raw_data):
    # Load the JSON data from the POST request
    data = json.loads(raw_data)
    # Get the base64-encoded image data
    base64_image = data['data']
    # Decode the base64 string into bytes
    image_bytes = base64.b64decode(base64_image)
    # Open the bytes as an image
    image = Image.open(io.BytesIO(image_bytes))
    # Convert the image to grayscale
    image = image.convert('L')
    # Resize the image to 28x28 pixels, the size expected by the model
    image = image.resize((28, 28))
    # Convert the image to a numpy array and normalize pixel values to [0, 1]
    data = np.array(image) / 255.0
    # The model expects a 4D tensor of shape (batch_size, height, width, channels),
    # so we add an extra dimension to the start and end of the array
    data = np.expand_dims(data, axis=(0, -1))
    # Make prediction
    prediction = model.predict(data)
    return json.dumps(prediction.tolist())


def list_files(startpath):
    for root, dirs, files in os.walk(startpath):
        level = root.replace(startpath, '').count(os.sep)
        indent = ' ' * 4 * (level)
        print('{}{}/'.format(indent, os.path.basename(root)))
        subindent = ' ' * 4 * (level + 1)
        for f in files:
            print('{}{}'.format(subindent, f))
```

## Create the Endpoint and Deploy the Model

We will use the following code to create the endpoint and deploy the model. 

```python
from azure.ai.ml import MLClient
from azure.identity import ClientSecretCredential
from azure.ai.ml.entities import ManagedOnlineEndpoint, ManagedOnlineDeployment, CodeConfiguration
import datetime

# Define your Azure ML settings
subscription_id = "0a94de80-6d3b-49f2-b3e9-ec5818862801"
resource_group = "dean-sandbox"
workspace_name = "adsaimlsandbox"
tenant_id = "0a33589b-0036-4fe8-a829-3ed0926af886"
client_id = "a2230f31-0fda-428d-8c5c-ec79e91a49f5"
client_secret = "aTw8Q~wmEvkNZcjcVOu.l1PL8KZ_sF~VJ3zvZc2b"

credential = ClientSecretCredential(tenant_id, client_id, client_secret)

ml_client = MLClient(credential, subscription_id, resource_group, workspace_name)

# Define an endpoint name
# Example way to define a random name
endpoint_name = "mnist-endpt-" + datetime.datetime.now().strftime("%m%d%H%M%f")
print(f"Endpoint name: {endpoint_name}")

print("Creating endpoint...")
# create an online endpoint
endpoint = ManagedOnlineEndpoint(
    name = endpoint_name, 
    description="this is a sample endpoint",
    auth_mode="key"
)

endpoint = ml_client.online_endpoints.begin_create_or_update(endpoint).result()

print(f"Endpoint {endpoint.name} provisioning state: {endpoint.provisioning_state}")

# # List Models
# for model in ml_client.models.list():
#     print(model.name, 'version:', model.version)

# # List Environments
# for env in ml_client.environments.list():
#     print(env.name, 'version:', env.version)

# endpoint = ml_client.online_endpoints.get(name=endpoint_name)

# print(
#     f'Endpoint "{endpoint.name}" with provisioning state "{endpoint.provisioning_state}" is retrieved'
# )

registered_model_name = "example"
latest_model_version = 1
registered_environment_name = "aml-keras-mnist"
latest_environment_version = 11

# picking the model to deploy. Here we use the latest version of our registered model
model = ml_client.models.get(name=registered_model_name, version=latest_model_version)
# picking the environment to deploy. Here we use the latest version of our registered environment
env = ml_client.environments.get(name=registered_environment_name, version=latest_environment_version)

print("Creating deployment...")
blue_deployment = ManagedOnlineDeployment(
    name="blue",
    endpoint_name=endpoint_name,
    model=model,
    environment=env,
    code_configuration=CodeConfiguration(
        code="./src/number_predictor", scoring_script="scoring.py"
    ),
    instance_type="Standard_DS3_v2",
    instance_count=1,
)

blue_deployment = ml_client.begin_create_or_update(blue_deployment).result()

ml_client.online_endpoints.get(name=endpoint_name)
```