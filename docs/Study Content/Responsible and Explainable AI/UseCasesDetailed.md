---
sort: 14
---
# Use cases for Responsible AI

In this document, you will find additional information that will help you to get a deeper understanding of the use cases related to the module Responsible AI. 

## Use-case 3: Create a subset of images from the original dataset

You can either select the images for your subset by searching the Imsitu file directory (in combination with browsing the GUI interface), or you can create a subset through using the dataset's annotation files in. 

Before you dive into Imsitu's meta data, determine which activity (i.e. ```verb```) and/or which participating actor, object, substance or location you are interested in (e.g., ```agent```, ```place```, ```item```, etc.). For example, if you want to create a subset containing images of males and females dusting, you would have to find the images where ```agent``` equals ```n10787470``` for 'Woman', and ```n10287213``` for 'Man'. You can look up these codes and corresponding descriptions in the ```imsitu_space.json``` file. Additionally, the ```verb``` for dusting is ```dusting```.

Sample code to extract the images that contain a specific verb and agent value:

```python
import json

def get_verb_agent(json_file, verb_custom, agent_custom):
    train = json.load(open(json_file))
    verb_value = []
    agent_key = []
    agent_value = []
    file_path = []
    count = 0
    for i in train:
        verb = train[i]['verb']
        if verb == verb_custom:
            frames = train[i]['frames']
            for frame in frames:
                for key, value in frame.items():
                    if key == 'agent':
                        if value in agent_custom:
                            if i not in file_path:
                                agent_key.append(key)
                                agent_value.append(value)
                                file_path.append(i)
                                verb_value.append(verb)
                                count += 1
                        else:
                            continue
                    else:
                        continue
    return(file_path, verb_value, agent_key, agent_value, count)

get_verb_agent('train.json', 'repairing', ['n10787470', 'n10287213'])
```

:bell: You can find the annotations (i.e. train.json, dev.json, test.json, imsitu_space.json) in the [Imsitu Github project repository](https://github.com/my89/imSitu). 

Next, we want to select the images that contain the predefined ```verb``` and ```agent``` values, and store them in a new folder. You need to create one folder for each combination of the ```verb``` and ```agent``` value; one for females dusting, and another for males dusting.

```python
import shutil

def img_to_folder(dirs_original, dirs_destination):
    image_list = get_verb_agent('train.json', 'dusting', ['n10787470', 'n10287213'])[0]
    dirs_list = [(dirs_original, dirs_destination)]
    for img in image_list:
        for source_folder, destination_folder in dirs_list:
            shutil.copy(source_folder+img, destination_folder+img)

img_to_folder("./data/original/", "./data/dusting/train/")

```

## Use-case 4: Write Python functions; group fairness metrics

The goal of this use case is to write Python functions for the group fairness metrics. To pass the unit tests, you need to write a separate Python function for each of the group fairness metrics. The output of the functions should formatted as a list of values. Follow these steps to complete the use case:

1. In order to set up the group fairness metrics and evaluate the fairness of the binary classification model, you have to load the confusion matrices for the protected/sensitive attribute test sets (e.g., privileged: 'Male', unprivileged: 'Female') into the group fairness metrics.  

:bell: Use the helper function ```load_confusion_matrices():``` to load the confusion matrices for the protected/sensitive attribute test sets.

2. Set up the equations for following group fairness metrics:

- [ ] Demographic Parity

This function returns a list of values formatted as follows: ```[Demographic parity unprivileged group, Demographic parity privileged group, Absolute difference of Demographic Parity between unprivileged and privileged group]``` 

- [ ] Equal Selection Parity

This function returns a list of values formatted as follows: ```[Equal Selection Parity unprivileged group, Equal Selection Parity privileged group, Absolute difference of Equal Selection Parity between unprivileged and privileged group]```

:bell: Notice that Conditional Use Accuracy Equality and Equalized Odds can be calculated by combining the results of two calculations for both the unprivileged and privileged group.

- [ ] Conditional Use Accuracy Equality 

This function returns a list of values formatted as follows: ```[Absolute difference in precision between unprivileged and privileged group, Absolute difference in NPV between unprivileged and privileged group]```

- [ ] Equalized Odds

This function returns a list of values formatted as follows: ```[Absolute difference of Equalized Opportunities between unprivileged and privileged group, Absolute difference of Predictive Equality between unprivileged and privileged group]```

- [ ] Equalized Opportunities

This function returns a list of values formatted as follows: ```[Equalized Opportunities unprivileged group, Equalized Opportunities privileged group, Absolute difference of Equalized Opportunities between unprivileged and privileged group]```

- [ ] Predictive Equality

This function returns a list of values formatted as follows: ```[Predictive Equality unprivileged group, Predictive Equality privileged group, Absolute difference of Predictive Equality between unprivileged and privileged group]```

3. Pass the __unit tests__ listed in the ```test_calculate_metrics.py``` file, which is provided in your personal BUAs GitHub repository. If you pass the test you will receive __100 points__. 

## Use-case 5: 

To solve this use-case, you will need to convert AXA's Fairness Compass into an Python function, and subsequently test this function through writing and running a unit test. Below, you can find the steps to complete this use-case:

1. Take a closer look at AXA's [The Fairness Compass](https://rb.gy/vze3w3). For example, think about the arguments you need to pass to the function, and the output of the function.
2. Select a dataset of your choice (e.g. Imsitu, MS COCO, COMPAS, etc.).
3. Create a train/validation/test split for your dataset.
4. Define a binary classification task using dataset selected in the previous step.
5. Select a protected/sensitive attribute in the dataset.
6. Split your test set based on the protected/sensitive attribute.
7. Specify a policy or 'worldview'/equal base rates? for your binary classification task.
8. Determine which evaluation metric is most sensitive to fairness: 

    - [ ] If your intervention is __punitive__ in nature (e.g., determining whom to deny bail), individuals may be harmed by intervening on them in error so you may care more about metrics that focus on False Positives __(Precision: Limit the number of False Negatives)__.

    - [ ] If your intervention is __assistive__ in nature (e.g., determining who should receive a food subsidy), individuals may be harmed by failing to intervene on them when they have need, so you may care more about metrics that focus on False Negatives __(Recall: Limit the number of False Positives)__ ([Source](https://textbook.coleridgeinitiative.org/chap-bias.html#sec:punitiveexample)). 

9. Determine which error is most sensitive to fairness regarding your binary classification task (i.e., False Positives, False Negatives or False Positives and False Negatives). __Important: It depends on the the label you assign to the target variables categories (e.g., positive and negative class)!__
10. Build an ANN model in Python, using Tensorflow's Keras, that can be used to classify images into two classes (i.e., binary classification task).
11. Train the binary classification model on the image dataset. You can save the weights of the model to a .h5 file.
12. Compute the confusion matrices for the protected/sensitive test sets using the weights of the trained model.  
13. Load the outputs of the confusion matrices for the protected/sensitive attribute test sets into the group fairness taxonomy function.
14. Load the group fairness metrics you created for __Use-case 4__ into the group fairness taxonomy function. 
15. Create a control flow for the group fairness taxonomy by incorporating conditional statements (e.g., if-else statements).
16 Elaborate on your approach, the choices you made, and results of the fairness evaluation (e.g., determination of suitable group fairness metric, outcome of group fairness metric calculation, etc.). Use the ```responsible_ai.ipynb``` file, which is provided in your personal BUAs GitHub repository.
17. Test your group fairness function by writing a unit test with the Python package ```pytest```. 

***







