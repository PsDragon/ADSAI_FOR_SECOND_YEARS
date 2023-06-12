# A Beginner's Guide to Azure ML Pipelines 🚀

In this example we will learn how to create and run Azure ML Pipelines using the Python SDK v2. It's going to be an exciting journey, so fasten your seat belts and let's get started!

This tutorial is a friendly adaptation of this [Microsoft Learn tutorial](https://learn.microsoft.com/en-us/azure/machine-learning/how-to-create-component-pipeline-python?view=azureml-api-2). For a deeper dive, do check it out.

Our goal is to create a pipepline with the following components:
- Training Data from Azure ML Data Assets
- Test Data from Azure ML Data Assets
- Train Model Component
- Evaluate Model Component
- Register Model Component

We want to train the model on the training data and evaluate it on the test data. If the model performs well, we want to register it in the Azure ML Model Registry.

The pipeline will look like this:

<div style="text-align:center">
<img src="../images/pipeline.png" alt="Pipeline" width="600"/>
</div>

## Step 1: Set Up Your Environment 🛠️

We'll carry on with the same project and environment we've been working on throughout the course. You can find the repo for this example [here](https://github.com/Deanis/Example-App.git).

## Step 2: Import the Required Libraries 📚

```python
from azure.identity import ClientSecretCredential
from azure.ai.ml import MLClient
from azure.ai.ml import command
from azure.ai.ml import Input, Output
from azure.ai.ml import dsl
```

## Step 3: Connect to the ML Client 🌐

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


## Step 3.5: List Available Resources 📋 (Optional)

```python
# List all available environments
environments = ml_client.environments.list()
print('Environments:\n')
for environment in environments:
    print(environment.name,':', )
print('-------------------')

# List all available datasets
datasets = ml_client.data.list()
print('Datasets:\n')
for dataset in datasets:
    print(dataset.name,':', dataset.latest_version)
print('-------------------')

# List all available compute targets
compute_targets = ml_client.compute.list()
print('Compute targets:\n')
for compute_target in compute_targets:
    print(compute_target.name,'-', compute_target.type)
print('-------------------')
```

## Step 4: Create the Pipeline Components 🧩

As seen in the pipeline diagram above, we will need to create three components:

- train 🏋️
- evaluate 🔍
- register 📝

We will use the `command` function to create these components. The `command` function takes the following arguments:

- `name`: The name of the component
- `display_name`: The display name of the component
- `description`: The description of the component
- `inputs`: A dictionary of the component's inputs
- `outputs`: A dictionary of the component's outputs
- `code`: The path to the component's code
- `command`: The command to run the component
- `environment`: The environment to run the component in
- `compute_target`: The compute target to run the component on (this can also be defined at the pipeline level)

In this example we will be using the same environment, compute target, and component path (code directory) for all components, so we will define them as variables. It is also possible to define them for each component individually (this is often more efficient than a one-size-fits-all approach).

```python
environment_name = 'aml-keras-mnist'
environment_version = 11
print(f'Using environment {environment_name} version {environment_version}')
compute_target_name = 'cloud'

component_path = "./src/number_predictor/"
env = ml_client.environments.get(environment_name, environment_version)
```

### Step 4.1: Create the Train Component 🏋️

```python

train_component = command(
                        name="train",
                        display_name="Train model",
                        description="Train model with data from a predefined data asset",
                        inputs={
                            "data": Input(type="uri_folder", description="Data asset URI"),
                        },
                        outputs=dict(model=Output(type="uri_folder", mode="rw_mount")),
                        code=component_path,
                        command="python train.py --use-uri --data-path ${{inputs.data}} --model-path ${{outputs.model}}",
                        environment=env,
                        #compute_target=compute_target.name,
                    )
```

### Step 4.1.1: Register the Train Component 🏋️📝 (optional)

```python
train_component = ml_client.create_or_update(train_component.component)
```

### Step 4.2: Create the Evaluate Component 🔍

```python

evaluate_component = command(
                        name="evaluate",
                        display_name="Evaluate model",
                        description="Evaluate model with data from a predefined data asset",
                        inputs={
                            "data": Input(type="uri_folder", description="Data asset URI"),
                            "model": Input(type="uri_folder", description="Model URI"),
                        },
                        outputs=dict(
                           accuracy=Output(type="uri_folder", description="Model accuracy output")
                        ),
                        code=component_path,
                        command="python evaluate.py --use_uri --test_data_dir ${{inputs.data}} --model_path ${{inputs.model}} --accuracy_path ${{outputs.accuracy}}",
                        environment=env,
                        #compute_target=compute_target.name,
                    )
```

### Step 4.2.1: Register the Evaluate Component 🔍📝 (optional)

```python
evaluate_component = ml_client.create_or_update(evaluate_component.component)
```

### Step 4.3: Create the Register Component 📝

```python
register_component = command(
                        name="register",
                        display_name="Register model",
                        description="Register model with data from a predefined data asset",
                        inputs={
                            "model": Input(type="uri_folder", description="Model URI"),
                            "accuracy": Input(type="uri_folder", description="Model accuracy file"),
                        },
                        code=component_path,
                        command="python register.py --model ${{inputs.model}} --accuracy ${{inputs.accuracy}}",
                        environment=env,
                        #compute_target=compute_target.name,
                    )
```

### Step 4.3.1: Register the Register Component 📝📝 (optional)

```python
register_component = ml_client.create_or_update(register_component.component)
```

### Step 4.4: List the Components 📋 (optional)

We can view the registered components in the Azure ML Studio or list them using the following code:

```python
#list all components
components = ml_client.components.list()
print('Components:\n')
for component in components:
    print(component.name,':', component.version)
print('-------------------')
```

## Step 5: Create the Pipeline 🚀

```python
@dsl.pipeline(
    name='Example pipeline',
    compute='cloud',#compute_target.name,
    instance_type="defaultinstancetype"
    )
def train_eval_reg_pipeline(
    train_data_asset_uri: str,
    test_data_asset_uri: str,
) -> None:
    
    training_step = train_component(data=train_data_asset_uri)
    evaluation_step = evaluate_component(data=test_data_asset_uri, model=training_step.outputs.model)
    register_step = register_component(model=training_step.outputs.model, accuracy=evaluation_step.outputs.accuracy)
```

## Step 6: Instantiate and Submit the Pipeline 🚀

```python
train_digits_ds = Input(path="azureml://subscriptions/0a94de80-6d3b-49f2-b3e9-ec5818862801/resourcegroups/dean-sandbox/workspaces/adsaimlsandbox/datastores/datastore/paths/mnist/train")
test_digits_ds = Input(path="azureml://subscriptions/0a94de80-6d3b-49f2-b3e9-ec5818862801/resourcegroups/dean-sandbox/workspaces/adsaimlsandbox/datastores/datastore/paths/mnist/test")
# Instantiate the pipeline.
pipeline_instance = train_eval_reg_pipeline(train_data_asset_uri=train_digits_ds, test_data_asset_uri=test_digits_ds)

# Submit the pipeline.
pipeline_run = ml_client.jobs.create_or_update(pipeline_instance)
```







