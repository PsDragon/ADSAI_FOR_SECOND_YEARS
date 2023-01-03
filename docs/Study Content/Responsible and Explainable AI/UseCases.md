---
sort: 13
---
# DataLab: Creative Brief

<img src="./images/imsitu.jpg" alt="Imsitu dataset" width="800">

## Responsible AI

In **today's data lab**, we will work on the Responsible AI use-cases. Use-case 1-5 (Topic: Bias and Fairness) are related to the independent study material of Week 1. Use case 6 (Topic: Transparency and Interpretability) is related to the independent study material of Week 7.

## Use-cases

Here is a table of the use-cases and their description.

| Use-Case | Description | Dataset | Data Source/Author | Link
|----------|-------------|-------------|-------------|-------------|
| 1 | Identify, and describe bias | Full dataset | Imsitu | [clicky]()
| 2 | Propose individual fairness method| Full dataset | Imsitu | [clicky]()
| 3 | Create a subset of images from the original dataset | Custom subset | Imsitu | [clicky]()
| 4 | Write Python functions; group fairness metrics| Assigned subset | Imsitu, ADS&AI Teaching Team | [clicky]()
| 5 | Write Python function; group fairness taxonomy  | Custom subset | N.A. | [clicky]()
| 6 | Apply one/multiple explainable AI method(s) to the image classifier | Custom subset | Imsitu, You... | [clicky]()

:bell: Before we start, please make sure you have read the sections on [The final deliverables]() and [Plagiarism]() you can find in the bottom of this page.

**Let's get started: Keep the coffee flowing and the music playing!**

:thumbsup: :headphones: :coffee:

## Use-case 1: Identifying, and describing bias

This block places emphasis on data modeling, a key element of the CRISP-DM data science lifecycle. However, before we can build, train, and evaluate a ML model, we need to get an understanding of the task and data at hand. Additionally, we may need to apply some data cleaning and processing techniques to prepare the data for analysis. One common saying in the field of Data Science and AI is 'Garbage in, garbage out'. In other words, if the data is not cleaned and processed sufficiently, the results of the analysis will be worthless. 

<img src="./images/GarbageInGarbageOut.png" alt="Garbage In, Garbage Out" width="500">

In this use-case, which is related to the 'Poor' criteria of ILO 3.1, you will be asked to perform an EDA on the dataset with the goal to identify, and describe an instance of bias. In addition, you will be asked to discuss a possible ramification (e.g., harm) in terms of fairness of the identified bias instance.

:bell: You may use the Imsitu dataset [GUI interface]() to search for bias instances:

<img src="./images/ImsituGUI.png" alt="Imsitu GUI" width="800">

<br>

__To solve this use-case, you will need to:__

- [ ] Define the concept of bias in relation to the Imsitu dataset, and a computer vision task.
- [ ] List, and describe the type of bias that you identified in the Imsitu dataset.
- [ ] Discuss the possible ramification (e.g., harm) in terms of fairness of the identified bias instance:
    - [ ] Why, and when, is this particular instance of bias undesirable? In other words, who might be disproportionally affected by this particular instance of bias, and when does this negative effect come into play?

To get started, you can use the [Critical Alphabet](https://criticalalphabet.com/), which is a tool that helps you to reflect on the design process (of a data science/AI project) by applying concepts of critical theory; a philosophy that, amongst others, involves challenging the prevailing view of society. In turn, this will help you to identify instances of bias in the dataset. 

## Use-case 2: Propose individual fairness method

Unfortunately, most of the current fairness enhancing techniques only apply to tabular data. Our project is focused on image data. Thus, to solve this use-case, which is related to ILO 3.1's 'Insufficient', you have to be creative. One way to mitigate bias is by applying the 'Fairness Through Unawareness' method, which basically means that you remove as much 'sensitive' data as possible. Sometimes, you do not want to remove any data instances. For example, when you already have a relatively small dataset. 

:bell: Remember, Artificial Neural Networks (ANNs) generally require a vast amount of training examples! 

Another method to mitigate bias, which does not reduce the size of your dataset, is 'Fairness Through Awareness'. This method aims to make the dataset more inclusive (and thus representative) by adding an additional, purposely specified, set of data instances to the dataset. 

__To solve this use-case, you will need to:__

- [ ] Identify a sensitive/protected attribute in the Imsitu dataset.
- [ ] Mitigate bias in the Imsitu dataset by applying the 'Fairness Through Unawareness' or 'Fairness Through Awareness' method to this sensitive/protected attribute.
- [ ] Elaborate on the individual fairness method that you applied, and why you think it is a good method to mitigate bias in the Imsitu dataset.

## Use-case 3: Create a subset of images from the original dataset

In this use-case, which is related to ILO 3.1's 'Insufficient', you will be asked to create a subset of images from the Imsitu dataset, taking the project's business element into account (ILO ...). The subset should contain three disjoint splits: a training set, a validation set, and a test set. 

:pencil: By 'disjoint' we mean that the images in the training set, the validation set, and the test set should not overlap! Overlapping images will result in data leakage, which will lead to biased results :see_no_evil:.

__To solve this use-case, you will need to:__

- [ ] Select one or more classes from the Imsitu dataset (e.g., a noun, agent, etc, or a combination of them), which preferentially encompass more than 100 images.
- [ ] Create a training set that contains images from the selected classes. 
- [ ] Create a validation set that contains images from the selected classes.
- [ ] Create a test set that contains images from the selected classes.

:bell: Low on (training) images? You are allowed to add more images to your custom image dataset. For example, you can use the ohyicong's [Google-Image-Scraper](https://github.com/ohyicong/Google-Image-Scraper) project on GitHub to scrape images from Google Images.

:pencil: A training set commonly contains approximately 80% of the images, the validation set contains 10% of the images, and the test set contains 10% of the images.

:pencil: For a binary classification task you can either have one class as the positive class, and all the other classes as the negative class (e.g., dog vs. no dog), or you can have one class as the positive class, and another class as the negative class (e.g., dog vs. cats). 

## Use-case 4: Write Python functions; group fairness metrics

Now that we have identified, and described bias in the Imsitu dataset, and we have proposed a method to mitigate bias, we can define a set of metrics that we can use to evaluate the fairness of a binary classification model. In this use-case, which is related to the 'Sufficient' criteria of ILO 3.1, you will be asked to write Python functions that calculate and return the outcomes of the group fairness metrics. 

__To solve this use-case, you will need to:__

- Set up the equations for following group fairness metrics:
    - [ ] Demographic Parity
    - [ ] Equal Selection Parity
    - [ ] Conditional Use Accuracy Equality
    - [ ] Equalized Odds
    - [ ] Equalized Opportunities
    - [ ] Predictive Equality
- [ ] Write a separate Python function for each of the group fairness metrics that you defined above. See ```calculate_metrics.py``` file, which is provided in your personal BUAs GitHub repository.
- [ ] Pass the unit tests listed in the ```test_calculate_metrics.py``` file, which is provided in your personal BUAs GitHub repository. 

:bell: You may use AXA's [The Fairness Compass](https://www-axa-com.cdn.axa-contento-118412.eu/www-axa-com/d6324958-367e-4375-81c3-cfeb8e7ccc66_AXA_FairnessCompass-English.pdf).

## Use-case 5: Write Python function; group fairness taxonomy 

In this use-case, which is related to the 'Excellent' criteria of ILO 3.1, you will be asked to build, train, and evaluate a binary classification model on its group level fairness by writing a Python function that returns an appropriate fairness metric, and corresponding calculation. To successfully solve this use-case, you will need to use AXA's [The Fairness Compass](https://www-axa-com.cdn.axa-contento-118412.eu/www-axa-com/d6324958-367e-4375-81c3-cfeb8e7ccc66_AXA_FairnessCompass-English.pdf), and the Python functions that you wrote for use-case 3.

__To solve this use-case, you will need to:__

- [ ] Take a closer look at the [taxonomy](https://rb.gy/vze3w3) of AXA's The Fairness Compass.
- [ ] Select an image dataset of your choice (e.g. Imsitu, Open Images, MS COCO, etc.).
- [ ] Define a binary classification task using the image dataset selected in the previous step.
- [ ] Select a sensitive/protected attribute in the dataset.
- [ ] Specify a policy/'worldview'.
- [ ] Build an ANN model in Python, using Tensorflow's Keras, that can be used to classify images into two classes (i.e., binary classification task).
- [ ] Train the binary classification model on the image dataset. The weights of the model should be saved to a .h5 file.
- [ ] Evaluate the image classifier's fairness on a group level by writing a Python function that returns an appropriate fairness metric, and corresponding calculation. See ```group_fairness.py``` file, which is provided in your personal BUAs GitHub repository. 
- [ ] Pass the unit tests listed in the ```test_group_fairness.py``` file, which is provided in your personal BUAs GitHub repository. 
- [ ] Elaborate on your approach, the choices you made, and results of the fairness evaluation in the ```responsible_ai.ipynb``` file, which is provided in your personal BUAs GitHub repository. 


## Use-case 6: Apply one/multiple explainable AI method(s) to the image classifier

:yellow_heart::raised_hands::dancer::snake::computer:

If you have come this far, you have now completed the creative brief section for the module Responsible AI. Congratulations! :tada: :tada: :tada:

:trophy: If you still have time remaining, please have a look at the [Medal Challenges](https://www.desirableai.com/news/call-for-papers).

🔔 Please remember the add your Jupyter notebook to the ```Final Deliverable``` folder on ```Github```. This, along with your learning and work logs will be part of your final portfolio for grading.

## The final deliverables

If you are done with the use-cases, you can move on to documentation, ensure that you have saved and committed all your work to Github. Documentation is a very important part of the project, and you will need to ensure that you have a presentation, which clearly communicates your findings. Start to work on the Responsible AI use-cases as soon as possible. Do not wait until Week 8 to start with your presentation. You will need to work on the presentation in stages, and you will need to submit your final presentation in Week 8.

## Plagiarism

Please note that plagiarism is a serious offense. You are encouraged to use the internet to help you with your analyses, but you must ensure that you cite your sources. However, if your code, and/or accompanied explanation(s) (e.g.,inline-comments, texts in markdown block, etc.), exactly resembles the code, and/or explanation(s) of another student, you will be reported to the board of examiners. You are encouraged to discuss the use-case with your peers, but you must ensure that you write your own code, and provide your own explanation(s). If you are unsure about whether your code, and/or explanation(s) are similar to another student's code, and or explanation(s), please ask your mentor to review your code, and/or other writings.

***
