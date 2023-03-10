---
sort: 14
---
# Use cases for Responsible AI

In this document, you will find additional information that will help you to get a deeper understanding of the use cases related to the module Responsible AI. 

## Use-case 3: Create a subset of images from the original dataset

You can either select the images for your subset by searching the Imsitu file directory (in combination with browsing the GUI interface) or you can create a subset through using the dataset's meta data, - i.e., annotation files. 

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

get_verb_agent('train.json', 'dusting', ['n10787470', 'n10287213'])
```

:bell: You can find the annotations (i.e. train.json, dev.json, test.json, imsitu_space.json) in the [Imsitu Github project repository](https://github.com/my89/imSitu). 

You can also use this code as a starting point to determine which ```agent``` codes are associated with which ```nouns```:
    
```python
import json

# load imsitu_space.json file
imsitu_space = json.load(open("imsitu_space.json"))

nouns = imsitu_space["nouns"]
verbs = imsitu_space["verbs"]

# function to get all agent codes for a specific agent/noun
def get_agent_codes(agent = "person"):
    for noun in nouns:
        if nouns[noun]['gloss'][0] == agent:
            print(f"{agent} found")
            print(noun)

# get all agent codes for men (use your own nouns here)
get_agent_codes("man")
```

*Note: This code is a starting point. You should modify it as you see fit. In its current form, it does not take into account that there are multiple ```nouns``` for each ```agent```. For example, ```n10787470``` is associated with both ```young woman``` and ```girl```. It also does not account for partial matches, among other limitations.*

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

Lastly, with the code below you can create a .csv file that contains the file name, verb and agent value for each image.

```python
import pandas as pd

def lists_to_df(dirs_destination, col1_name, col2_name, col3_name):
    col1 = get_verb_agent('train.json', 'dusting', ['n10787470', 'n10287213'])[0]
    col2 = get_verb_agent('train.json', 'dusting', ['n10787470', 'n10287213'])[1]
    col3 = get_verb_agent('train.json', 'dusting', ['n10787470', 'n10287213'])[3]
    df = pd.DataFrame(list(zip(col1, col2, col3)), columns=[col1_name, col2_name, col3_name])
    df.to_csv(dirs_destination, index=False)
    return df

lists_to_df('./data/dusting/train/dusting_train.csv', 'file_name','verb', 'agent')

```

## Use-case 4: Write Python functions; group fairness metrics

The goal of this use case is to write Python functions for the group fairness metrics. To pass the unit tests, you need to write a separate Python function for each of the group fairness metrics. The output of the functions should formatted as a list of values. Follow these steps to complete the use case:

1. In order to set up the group fairness metrics and evaluate the fairness of the binary classification model, you have to load the confusion matrices for the protected/sensitive attribute test sets (e.g., privileged: 'Female', unprivileged: 'Male') into the group fairness metrics. In addition, the unfavorable/negative prediction is 'dusting_no', and the favorable/positive prediction is 'dusting_yes'.   

:bell: Use the helper function ```load_confusion_matrices():``` to load the confusion matrices for the protected/sensitive attribute test sets.

2. Set up the equations for following group fairness metrics:

- [ ] Demographic Parity

><br><span style="color:green">Demographic parity</span>: 'The proportion of predicted positives should be equal across sensitive/protective groups'. <br> <br>
<span style="color:green">Demographic parity is satisfied when their base rates are the same; 50 images depict homosexual couples, and 100 images depict heterosexual couples (i.e., the favorable outcome should be assigned to each group of a sensitive/protective attribute at equal rates).</span> <br> <br>

This function returns a list of values formatted as follows: ```[Demographic parity privileged group, Demographic parity unprivileged group, Absolute difference of Demographic Parity between unprivileged and privileged group]```

:warning: Notice that for Demographic Parity the privileged group is returned first, and the unprivileged group second. For the other group fairness metrics, the unprivileged group is returned first, and the privileged group second. 

- [ ] Equal Selection Parity

><br><span style="color:red">Equal selection parity</span>: 'The number of predicted positives should be equal across sensitive/protective groups'. <br> <br>
<span style="color:red">Equal selection parity is satisfied when the search engine returns the same number of images for each sensitive/protected attribute group; 75 wedding images depict homosexual couples, and 75 heterosexual couples.</span> <br> <br>

This function returns a list of values formatted as follows: ```[Equal Selection Parity unprivileged group, Equal Selection Parity privileged group, Absolute difference of Equal Selection Parity between unprivileged and privileged group]```

:bell: Notice that Conditional Use Accuracy Equality and Equalized Odds can be calculated by combining the results of two calculations for both the unprivileged and privileged group.

- [ ] Conditional Use Accuracy Equality 

><br><span style="color:mediumspringgreen">Conditional use accuracy equality</span>: 'The positive predictive value (PPV) and the negative predictive value (NPV) should be equal across sensitive/protective groups'. <br> <br>
<span style="color:mediumspringgreen">Conditional use accuracy equality is satisfied when the proportion of correctly returned images labeled 'wedding' and 'no wedding' are equal across sensitive/protected groups. </span>

This function returns a list of values formatted as follows: ```[Absolute difference in precision between unprivileged and privileged group, Absolute difference in NPV between unprivileged and privileged group]```

- [ ] Equalized Odds

><br><span style="color:teal">Equalized odds</span>: The true positive rates (TPR) and true negative rates (TNR) should be equal across sensitive/protective groups'. <br> <br>
<span style="color:teal">Equalized odds is satisfied when the return rates for the images labelled 'wedding' and 'no wedding' are equal across sensitive/protected groups. <br> <br>

This function returns a list of values formatted as follows: ```[Absolute difference of Equalized Opportunities between unprivileged and privileged group, Absolute difference of Predictive Equality between unprivileged and privileged group]```

- [ ] Equalized Opportunities

><br><span style="color:brown">Equalized opportunities</span>: The true positive rates (TPR) should be equal across sensitive/protective groups'. <br> <br>
<span style="color:brown">Equalized opportunities is satisfied when the return rates for the images labelled 'wedding' are equal across sensitive/protected groups. <br> <br>

This function returns a list of values formatted as follows: ```[Equalized Opportunities unprivileged group, Equalized Opportunities privileged group, Absolute difference of Equalized Opportunities between unprivileged and privileged group]```

- [ ] Predictive Equality

><br><span style="color:hotpink">Predictive equality</span>: The true negative rates (TNR) should be equal across sensitive/protective groups'. <br> <br>
<span style="color:hotpink">Predictive equality is satisfied when the return rates for the images labelled 'no wedding' are equal across sensitive/protected groups. <br> <br>

This function returns a list of values formatted as follows: ```[Predictive Equality unprivileged group, Predictive Equality privileged group, Absolute difference of Predictive Equality between unprivileged and privileged group]```

3. Pass the __unit tests__ listed in the ```test_calculate_metrics.py``` file, which is provided in your personal BUAs GitHub repository. If you pass the test you will receive __100 points__. 

## Use-case 5: Write Python function; group fairness taxonomy 

To solve this use-case, you will need to convert AXA's Fairness Compass into an Python function, and subsequently test this function through writing and running a unit test. Below, you can find the steps to complete this use-case:

1. Take a closer look at AXA's [The Fairness Compass](https://goo.su/7o1YWGj). For example, think about the arguments you need to pass to the function, and the output of the function.
2. Select a dataset of your choice (e.g. Imsitu, MS COCO, COMPAS, etc.).
3. Create a train/validation/test split for your dataset.
4. Define a binary classification task using dataset selected in the previous step.
5. Select a protected/sensitive attribute in the dataset.
6. Split your test set based on the protected/sensitive attribute.
7. Specify a policy or 'worldview'/equal base rates? for your binary classification task.
8. Determine which evaluation metric is most sensitive to fairness: 

    - [ ] If your intervention is __punitive__ in nature (e.g., determining whom to deny bail), individuals may be harmed by intervening on them in error so you may care more about metrics that focus on False Positives __(Precision: Limit the number of False Positives)__.

    - [ ] If your intervention is __assistive__ in nature (e.g., determining who should receive a food subsidy), individuals may be harmed by failing to intervene on them when they have need, so you may care more about metrics that focus on False Negatives __(Recall: Limit the number of False Negatives)__ ([Source](https://textbook.coleridgeinitiative.org/chap-bias.html#sec:punitiveexample)). 

9. Determine which error is most sensitive to fairness regarding your binary classification task (i.e., False Positives, False Negatives or False Positives and False Negatives). __Important: It depends on the the label you assign to the target variables categories (e.g., positive and negative class)!__
10. Build an ANN model in Python, using Tensorflow's Keras, that can be used to classify data instances into two classes (i.e., binary classification task).
11. Train the binary classification model on the dataset. You can save the weights of the model to a .h5 file.
12. Compute the confusion matrices for the protected/sensitive test sets using the weights of the trained model.  
13. Load the outputs of the confusion matrices for the protected/sensitive attribute test sets into the group fairness taxonomy function.
14. Load the group fairness metrics you created for __Use-case 4__ into the group fairness taxonomy function. 
15. Create a control flow for the group fairness taxonomy function by incorporating conditional statements (e.g., if-else statements).
16. Elaborate on your approach, the choices you made, and results of the fairness evaluation (e.g., determination of suitable group fairness metric, outcome of group fairness metric calculation, etc.). Use the ```[student number]_responsible_ai.ipynb``` file, which is provided in your personal BUAs GitHub repository.
17. Test your group fairness function by writing a unit test with the Python package ```pytest```. 

***







