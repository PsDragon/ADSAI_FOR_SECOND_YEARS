# A Beginner's Guide to Azure ML Command Jobs 🚀

In this example we will learn how to run Azure ML Command Jobs using the Python SDK v2. It's going to be an exciting journey, so fasten your seat belts and let's get started!

This tutorial is a friendly adaptation of this [Microsoft Learn tutorial](https://learn.microsoft.com/en-us/azure/machine-learning/tutorial-azure-ml-in-a-day?view=azureml-api-2). For a deeper dive, do check it out.

## Step 1: Set Up Your Environment 🛠️

We'll carry on with the same project and environment we've been working on throughout the course. You can find the repo for this example [here](https://github.com/Deanis/Example-App.git).

## Step 2: Connect to the ML Client 🌐

Now, we need to establish a connection to the Azure ML client. This is like dialing a friend's number on a phone 📞 – in this case, Azure is our friend.

```python
from azure.ai.ml import MLClient
from azure.identity import InteractiveBrowserCredential

# These are your personal access credentials
credential = InteractiveBrowserCredential()

subscription_id = "your_subscription_id"  # 📝 replace with your subscription id
resource_group = "your_resource_group"  # 📝 replace with your resource group
workspace_name = "your_workspace_name"  # 📝 replace with your workspace name

# Establish a connection with Azure ML
ml_client = MLClient(credential, subscription_id, resource_group, workspace_name)
```

We first import the necessary libraries. The `MLClient` is the main actor here, helping us to communicate with Azure ML. The `InteractiveBrowserCredential` is like your digital passport 🛂, allowing you to cross the Azure border.

The `interactiveBrowserCredential` is a very convenient way to authenticate yourself. It opens a browser window and asks you to log in to your Azure account. Once you've logged in, you're good to go! We will use more secure authentication methods in the next example on pipelines.

The `MLClient` function takes in your personal access credentials: the `credential`, `subscription_id`, `resource_group`, and `workspace_name`. This is how we connect to Azure ML and its resources.

## Step 3: Check Available Compute Targets and Environments (Optional) 🕵️‍♀️

You may want to check the compute targets and environments available in your workspace. It's like checking the tools and materials available before starting a DIY project. 

```python
# List the compute targets
compute_targets = ml_client.compute_targets.list()
for compute_target in compute_targets:
    print(compute_target.name, ":", compute_target.type)

# List the environments
environments = ml_client.environments.list()
for environment in environments:
    print(environment.name, ":", environment.latest_version)
```
The `ml_client.compute_targets.list()` and `ml_client.environments.list()` commands list all available compute targets and environments, respectively. We will use one of each in the next step. The command job will run on the compute target and use the environment to execute the command. The environment is like the operating system on a computer, and the compute target is like the computer itself. The environment we choose will determine the tools and libraries available to us (we need ann environment containing all of our package dependencies), and the compute target will determine the hardware resources available to us.

## Step 4: Configure the Command Job ⚙️

Now, let's get to the main part – configuring the command job. This is where we tell Azure what we want it to do. In this example, we will train a model to predict handwritten digits using the MNIST dataset. The source code for this model is in the `src` folder. We want to tell Azure to run the `train.py` file in the `src` folder, and we want to pass in the data asset URI and the test-to-train ratio as arguments. The data in this case is already registered and stored in Azure ML as a data asset, so we can simply pass in the URI. The test-to-train ratio is a parameter that we want to set, so we will pass it in as an argument.

We need to tell azure the following things:

- The inputs to the command job: what data and parameters do we want to pass in?
- The location of the source code: where is the source code located?
- The command to execute: What python script do we want to run, and what arguments do we want to pass in?
- The environment: what environment do we want to use (remember it needs to be an environment containing all of our package dependencies)?
- The compute target: what compute target do we want to use?

```python
from azure.ai.ml import command
from azure.ai.ml import Input

# Get the environment and compute target
# Replace with your environment and compute target from the previous step
env = ml_client.environments.get("your_environment_name", version_number)  # 📝 replace with your environment name and version
compute_target = "your_compute_target"  # 📝 replace with your compute target
# This is the path to the data folder in the datastore, click on the data asset in the Azure ML portal to get the path
path = "azureml://subscriptions/0a94de80-6d3b-49f2-b3e9-ec5818862801/resourcegroups/dean-sandbox/workspaces/adsaimlsandbox/datastores/datastore/paths/mnist/train"

# Setup the command job
job = command(
    inputs=dict(
        data=Input(type="uri_folder", description="Data asset URI", path=path),
        test_train_ratio=0.2,
    ),
    code="./src/number_predictor",  # location of source code
    command="python train.py --use-uri --data-path ${{inputs.data}} --test-train-ratio ${{inputs.test_train_ratio}}",
    environment=env,
    compute=compute_target, #delete this line to use serverless compute
    display_name="number prediction",
)
```

The `env` variable represents the environment where we want to run our job. An environment in Azure ML specifies the Python packages, environment variables, and software settings around your job. The `compute_target` variable is where the job is actually executed. This could be local, on a virtual machine, or any other compute resource available in Azure ML.

- **inputs**: This is a dictionary that maps input names to their types and descriptions. In this case, we have two inputs: `data` and `test_train_ratio`. The `data` input has a type of `uri_folder`, meaning it expects a URI to a folder. This will be where our job gets its data. `test_train_ratio` is a float that decides the ratio of our dataset to be used for testing.

- **code**: This specifies the directory where our job's source code is located. Here, it is in the `src/number_predictor` folder.

- **command**: This is the actual command that will be run. It's a string that can include our inputs as variables. The string gets formatted so that `${{inputs.data}}` becomes the actual data input and `${{inputs.test_train_ratio}}` becomes the actual test-train ratio. This command tells Azure to use Python to run our `train.py` script with the specified inputs.

- **environment**: The environment we previously fetched. It specifies the dependencies and settings our job will run with.

- **compute**: The compute target we previously fetched. This is where our job will actually be executed.

- **display_name**: This is just a friendly name for our job. It's what we'll see when we look at our job in the Azure portal.

In a nutshell 🥜, this piece of code is defining a Command Job: it tells Azure ML what code to run, what inputs to provide, where to run the code (the compute target), and in what environment the code should be run. It also assigns a friendly name to the job for easy identification. The Command Job is not run immediately - it will be run later when we call `ml_client.create_or_update(job)`.

## Step 5: Submit the Job 🚀

Once our command job is well-configured, it's time to submit the job.

```python
# Submit the job to Azure ML
ml_client.create_or_update(job)
```
With `ml_client.create_or_update(job)`, Azure ML takes our job and begins execution!

## Step 6: Wait for Completion and View Job Output 🍿

Sit back and relax while Azure ML runs the job. You can view the job's progress and output in the Azure ML portal. Here's what it looks like:

<img src="https://learn.microsoft.com/en-gb/azure/machine-learning/media/tutorial-azure-ml-in-a-day/view-job.gif?view=azureml-api-2" alt="View Job Output and Wait for Completion" style="zoom:50%;" />

⚠️ This GIF is just an example.

And that's it! Congratulations on running your first Azure ML Command Job 🎉. Keep practicing and experimenting with different settings. Enjoy your journey in the world of Azure ML and data science!