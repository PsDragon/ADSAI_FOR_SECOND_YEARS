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
    image_list = get_verb_agent('train.json', 'repairing', ['n10787470', 'n10287213'])[0]
    dirs_list = [(dirs_original, dirs_destination)]
    for img in image_list:
        for source_folder, destination_folder in dirs_list:
            shutil.copy(source_folder+img, destination_folder+img)

img_to_folder("./data/original/", "./data/dusting/train/")

```









