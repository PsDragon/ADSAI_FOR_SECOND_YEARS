# A Beginner's Guide to Azure ML Pipelines 🚀

In this example we will learn how to create and run Azure ML Pipelines using the Python SDK v2. It's going to be an exciting journey, so fasten your seat belts and let's get started!

This tutorial is a friendly adaptation of this [Microsoft Learn tutorial](https://learn.microsoft.com/en-us/azure/machine-learning/how-to-create-component-pipeline-python?view=azureml-api-2). For a deeper dive, do check it out.

Our goal is to create a pipeline with the following components:
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

We're going to continue with the same project and environment we've been using throughout the course. You can find the complete codebase for this tutorial [here](https://github.com/Deanis/Example-App.git). Go ahead, clone the repo, and let's roll! 📂

## Step 2: Import the Required Libraries 📚

Before we jump into coding, we need to import the necessary libraries. We will be using the following libraries for this tutorial:
```python
from azure.identity import ClientSecretCredential
from azure.ai.ml import MLClient
from azure.ai.ml import command
from azure.ai.ml import Input, Output
from azure.ai.ml import dsl
```
- The `ClientSecretCredential` class is used to authenticate and connect to our Azure workspace.
- The `MLClient` class helps us manage and operate on Azure ML resources, such as data assets, environments, models, and pipelines.
- The `command`, `Input`, and `Output` functions are used to define components for our pipeline.
- The `dsl` (domain-specific language) module is used to define the pipeline itself.

## Step 3: Connect to the ML Client 🌐

We now connect to the ML client, which is like dialing in to communicate with our Azure workspace. You have done this before in the previous tutorial, so this should be familiar. If not, don't worry, we'll walk you through it.

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

The `ClientSecretCredential` is used to authenticate our application with Azure, and `MLClient` is used to connect to our workspace. In this example we use a Service Principal to authenticate our application. 

In Azure, a Service Principal is an application within your Active Directory whose authentication tokens can be used as the `ClientID`, `TenantID`, and `ClientSecret` when you're building an app in Azure. They offer a way to authenticate your application for access to specific resources within your Azure environment.

In this tutorial, a `Service Principal` is used for the following reasons:

1. **Unattended Access**: An Azure Service Principal allows your application to run with an identity that is independent of users. This is especially useful for automated workflows where human intervention is not desired or possible.

2. **Granular Access Control**: Service Principals can be assigned specific permissions in Azure, which allows for precise control over what resources an application has access to. This can help to maintain tight security within your Azure environment.

3. **Security**: When you're dealing with sensitive resources, it's best practice to use different identities for different applications. This reduces the risk associated with compromised credentials. 

The `ClientSecretCredential` is used to authenticate the Service Principal. It's a part of the Azure Identity library, which provides simple, flexible, and secure methods of authenticating Azure SDK clients. It provides a set of `TokenCredential` implementations which can be used to construct Azure SDK clients that support AAD token authentication.

In this case, the `ClientSecretCredential` is used to authenticate the Service Principal against the Azure Active Directory using a `client (application) ID`, `client secret`, and `tenant ID`. Once authenticated, the Service Principal can interact with Azure resources.

Just be sure to keep the client secret truly secret, since it can be used to authenticate as your application!

## Step 3.5: List Available Resources 📋 (Optional)

It can be helpful to view what resources we already have available in our workspace. 🪨

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

This piece of code retrieves and displays all the available environments, datasets, and compute targets in our Azure ML workspace.

## Step 4: Create the Pipeline Components 🧩

It's now time to create the building blocks of our pipeline: the components. Each component in the pipeline is like a team member with a specific role to play.

We will create the following components:
1. Train 🏋️‍♂️: This component trains the machine learning model using our training data. The input is the training data, and the output is the trained model.
2. Evaluate 🔍: This component evaluates the performance of the trained model using our test data. The inputs are the trained model and the test data, and the output is the evaluation metrics.
3. Register 📝: This component registers the model in the Azure ML Model Registry if it performs well. The inputs are the trained model and the evaluation metrics. Technically there is no output, but the model is registered in the Model Registry if certain conditions are met.

We use the `command` function to create each of these components (this is similar to the command job we created in the previous tutorial). The `command` function takes the following arguments:

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

### Step 4.1: Create the Train Component 🏋️‍♂️

The `train` component uses the training data (`data`) to train the machine learning model. The `python train.py` command is executed to start the training process. The trained model is then saved in the output folder (`model`). The `--use-uri` flag indicates that the data is stored in Azure Storage, and the `--data-path` and `--model-path` arguments are used to pass the input and output paths to the training script. These are cli arguments that are passed to the `train.py` script. You can check out the script [here](https://github.com/Deanis/Example-App/blob/5e3a009d3c38998882f11935fce469ddd10b5d1c/src/number_predictor/train.py).

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
                        command="python train.py --use-uri --data-path {% raw %}${{inputs.data}}{% endraw %} --model-path {% raw %}${{outputs.model}}{% endraw %}",
                        environment=env,
                        #compute_target=compute_target.name,
                    )
```

In the `train_component`, the `inputs` and `outputs` arguments define the data that this component will consume and produce, respectively.

Let's break it down:

- `name`: This is simply the name of the component, in this case, "train".

- `display_name`: This is the friendly name of the component that will be displayed in the Azure ML Studio.

- `description`: A text description of what the component does.

- `inputs`: This is a dictionary that defines the inputs that the component expects. In this case, we have one input called "data". The `Input` function is used to specify the type of this input, which is `uri_folder`, indicating that this is a URI to a folder in Azure Storage. The `description` argument is a human-readable description of this input. We will need to provide the actual URI to the training data when we run the pipeline.

- `outputs`: This is a dictionary that defines the outputs that the component produces. Here, we have one output called "model". The `Output` function is used to specify the type of this output, which is `uri_folder`, indicating that this is a URI to a folder in Azure Storage. The `mode` argument is `rw_mount`, which means that the folder will be mounted as read-write.

- `code`: This is the path to the Python script that implements the component's logic. 

- `command`: This is the actual command that gets run when the component is executed. Notice the `${{inputs.data}}` and `${{outputs.model}}` in the command - these are placeholders that get replaced by the actual URIs of the input data and output model when the pipeline is run. This is how the component knows where to find the input data and where to save the output model. Have a look at how these placeholders are used in the `train.py` script.

When the `train_component` is run, it takes the `data` input, which is the URI to the training data, and passes it to the `train.py` script as an argument. The `train.py` script reads this data, trains a model, and then saves the model to the location specified by the `model` output. 

Remember that these inputs and outputs form the interface of your component - they define what data your component needs to do its job and what data it produces. Other components in your pipeline can consume these outputs as their inputs, forming a chain of data dependencies.

### Step 4.1.1: Register the Train Component 🏋️‍♂️📝 (optional)

We can now register this component with our Azure ML workspace, like adding a new recipe to our cooking book. 📖 Once registered the component can be used in other pipelines, and it will be visible in the Azure ML Studio.

```python
train_component = ml_client.create_or_update(train_component.component)
```

### Step 4.2: Create the Evaluate Component 🔍

Next, we define the `evaluate` component that takes in the trained model and test data, evaluates the model's performance, and outputs the model accuracy in a text file in the output folder. You can check out the `evaluate.py` script [here](https://github.com/Deanis/Example-App/blob/5e3a009d3c38998882f11935fce469ddd10b5d1c/src/number_predictor/evaluate.py). Inspect the `evaluate.py` script to see how the `--use-uri`, `--test-data-dir`, `--model-path`, and `--accuracy-path` arguments are used.

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
Let's dive into the key details of the `evaluate` component. 🔑🔍

- `inputs`: This argument specifies the inputs the component expects. Here, we have two inputs: "data" and "model". The "data" input is the test data on which the model will be evaluated, and "model" is the trained model which we want to evaluate. The `Input` function is used to define these inputs and their types, both of which are `uri_folder` in this case, indicating these are URIs to folders in Azure Storage. The uri to the test data must be provided when the pipeline is run, and the uri to the trained model will be provided by the `train` component when it produces the model.

- `outputs`: This argument specifies the outputs the component produces. Here, we have one output called "accuracy". This is where the evaluation result of the model will be saved. The `Output` function is used to define this output and its type, which is `uri_folder`, indicating that this is a URI to a folder in Azure Storage.

- `code`: This is the path to the Python script that contains the logic for this component. 

- `command`: This is the command that will be run when the component is executed. It uses placeholders (`${{inputs.data}}`, `${{inputs.model}}`, and `${{outputs.accuracy}}`) for the input and output URIs, which will be replaced by the actual URIs when the pipeline is run.

When the `evaluate_component` is run, it takes in the test data and the trained model, and then passes these as arguments to the `evaluate.py` script. The `evaluate.py` script uses the model to make predictions on the test data, compares these predictions with the actual values to calculate the accuracy, and saves the accuracy in a text file to the specified output location.

Remember that the inputs and outputs of a component form its interface. They define the data that a component needs and what data it produces. This allows components to be linked together in a pipeline, where the output of one component can serve as the input to another.

### Step 4.2.1: Register the Evaluate Component 🔍📝 (optional)

Just like the `train` component, we can register the `evaluate` component too.

```python
evaluate_component = ml_client.create_or_update(evaluate_component.component)
```
This allows the component to be used in other pipelines, and it will be visible in the Azure ML Studio. It also adds versioning to the component, so you can keep track of changes to the component over time.

### Step 4.3: Create the Register Component 📝

The `register` component takes the trained model and its accuracy and, if the model is accurate enough, it registers the model with Azure ML for future use. You can check out the `register.py` script [here](https://github.com/Deanis/Example-App/blob/5e3a009d3c38998882f11935fce469ddd10b5d1c/src/number_predictor/register.py). Inspect the `register.py` script to see how the `--model` and `--accuracy` arguments are used.

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

Let's dive into the key details of the `register` component. 🔑📝

- `inputs`: This argument specifies the inputs the component expects. Here, we have two inputs: "model" and "accuracy". The "model" input is the trained model which we want to register, and "accuracy" is the accuracy of the model. The `Input` function is used to define these inputs and their types, both of which are `uri_folder` in this case, indicating these are URIs to folders in Azure Storage. The uri to the trained model and the uri to the accuracy file will be provided by the `train` and `evaluate` components respectively when they produce these outputs.

- `code`: This is the path to the Python script that contains the logic for this component.

- `command`: This is the command that will be run when the component is executed. It uses placeholders (`${{inputs.model}}` and `${{inputs.accuracy}}`) for the input URIs, which will be replaced by the actual URIs when the pipeline is run.

When the `register_component` is run, it takes in the trained model and its accuracy, and then passes these as arguments to the `register.py` script. The `register.py` script checks if the model is accurate enough, and if it is, it registers the model with Azure ML.

### Step 4.3.1: Register the Register Component 📝📝 (optional)

```python
register_component = ml_client.create_or_update(register_component.component)
```

### Step 4.4: List the Components 📋 (optional)

Now, we can view the components we just created, like checking our toolbox 🧰 before starting work. 

```python
#list all components
components = ml_client.components.list()
print('Components:\n')
for component in components:
    print(component.name,':', component.version)
print('-------------------')
```

## Step 5: Create the Pipeline 🚀

With all our components ready, we now stitch them together to form our pipeline. 

We define a function `train_eval_reg_pipeline` which represents the flow of data and processing from one component to another. Lets have another look at the pipeline diagram to see how the components are linked together.

<div style="text-align:center">
<img src="../images/pipeline.png" alt="pipeline" width="600"/>
</div>

Our pipeline requires 2 inputs: the URI to the training data and the URI to the test data. These inputs are passed to the `train` and `evaluate` components respectively. The `train` component produces a trained model, which is passed to the `evaluate` component. The `evaluate` component produces the accuracy of the model, which is passed to the `register` component. The `register` component registers the model with Azure ML if the model is accurate enough.

Now let's see how this looks in code. 📝

```python
@dsl.pipeline(
    name='Example pipeline',
    compute='cloud',
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
We need to define a function that represents our pipeline. The function takes two parameters: `train_data_asset_uri` and `test_data_asset_uri`. These are the URIs to the training and test data respectively. The function is decorated with the `@dsl.pipeline` decorator from the Azure Machine Learning Python SDK v2. This tells Python that this function is defining a pipeline. The decorator takes several parameters:

- `name`: This is the name of your pipeline, here it's "Example pipeline".
- `compute`: This specifies the compute target where the pipeline will be run. In this case, it's set to "cloud". Here you would use the name of the compute target you want to run the pipeline on from your Azure ML workspace.
- `instance_type`: This defines the type of compute instance that will be used to run the pipeline. In this case, it's "defaultinstancetype". The compute target may have multiple compute instances, and this parameter specifies which one to use. 

Here we just defiine the function, and we will run it later.

The `train_eval_reg_pipeline` function takes two parameters: 

- `train_data_asset_uri`: This is the URI of the Azure Data Asset containing your training data.
- `test_data_asset_uri`: This is the URI of the Azure Data Asset containing your test data.

The function defines three steps that correspond to the three components you defined earlier: `training_step`, `evaluation_step`, and `register_step`. 

- `training_step`: This step calls the `train_component` function with `train_data_asset_uri` as its `data` argument. So when we call the `train_eval_reg_pipeline` function, it will call the `train_component` function with the `train_data_asset_uri` we provide. In this case the `data` argument is used because that is the name of the dictionary key we used when defining the input in the `train_component` function. This initiates the training process and generates a model, which will be used in the next step.

- `evaluation_step`: This step calls the `evaluate_component` function with `test_data_asset_uri` as its `data` argument, and the `model` output of `training_step` as its `model` argument. The `data` and `model` arguments are used because those are the names of the dictionary keys we used when defining the inputs in the `evaluate_component` function. This step takes the model produced by the `training_step`, evaluates it with the test data, and produces an accuracy score.

- `register_step`: Finally, this step calls the `register_component` function with the `model` output of `training_step` as its `model` argument, and the `accuracy` output of `evaluation_step` as its `accuracy` argument. This registers the model if it meets the specified accuracy criteria.

This function essentially creates a pipeline that trains a model using training data, evaluates the model using test data, and registers the model if it meets certain criteria. It's important to note that the outputs from one step can be used as inputs to subsequent steps, enabling the steps to be linked together in a coherent sequence. ♻️


## Step 6: Instantiate and Submit the Pipeline 🚀

The final step is to instantiate our pipeline and submit it for execution. 🎉

```python
train_digits_ds = Input(path="azureml://subscriptions/0a94de80-6d3b-49f2-b3e9-ec5818862801/resourcegroups/dean-sandbox/workspaces/adsaimlsandbox/datastores/datastore/paths/mnist/train")
test_digits_ds = Input(path="azureml://subscriptions/0a94de80-6d3b-49f2-b3e9-ec5818862801/resourcegroups/dean-sandbox/workspaces/adsaimlsandbox/datastores/datastore/paths/mnist/test")
# Instantiate the pipeline.
pipeline_instance = train_eval_reg_pipeline(train_data_asset_uri=train_digits_ds, test_data_asset_uri=test_digits_ds)

# Submit the pipeline.
pipeline_run = ml_client.jobs.create_or_update(pipeline_instance)
```

- First, we define two variables: `train_digits_ds` and `test_digits_ds`. These are the URIs to the training and test data respectively. You can find the URIs to your data assets in the Azure ML Studio.

<div style="text-align:center">
<img src="../images/data_uri.png" alt="data_assets" width="800"/>
</div>

- The next line instantiates the pipeline. Here, you are calling the `train_eval_reg_pipeline`  function that you defined earlier, passing the training and testing datasets you just defined as arguments. This creates an instance of your pipeline with those specific datasets as input.

- Finally, you submit the pipeline for execution. You do this by calling the `create_or_update` method on `ml_client.jobs`, passing the pipeline instance as the argument. This method submits the pipeline to the Azure Machine Learning service, which will then execute the pipeline on the specified compute target.

That's it! You have now successfully defined and submitted an Azure ML pipeline using Python SDK v2. 🎉 You can view the status of your pipeline in the Azure ML Studio. 

Note: Please replace the values for `subscription_id`, `resource_group`, `workspace_name`, `tenant_id`, `client_id`, and `client_secret` with your own credentials. Also, make sure to replace the `path` in `train_digits_ds` and `test_digits_ds` with the paths to your own datasets.

## Conclusion

In this guide, we've seen how to create an Azure ML pipeline using Python SDK v2. This is a simple pipeline, but you can easily extend this concept to create complex pipelines with multiple components.🎓🚀






