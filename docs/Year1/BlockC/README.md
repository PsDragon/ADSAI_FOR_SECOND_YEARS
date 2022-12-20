# Block C - Data Modelling

In block A, you explored various themes around digital transformation and critically examined applications of AI and digital technologies to existing businesses processes. In block B, you went a step further and helped a real-life client get more insight out of their data using data science tools to pre-process and get insight out of data. In this block, you will take on a more hands-on approach towards data modelling data using tools such as deep learning. In particular, this block will focus on key aspects of **the modelling phase of a data science project lifecycle** such as deep learning, explainable and responsible artificial intelligence (AI), and human-centered design


## Project Based Learning - Creative Brief

 In this project, you will develop responsible and explainable AI algorithms which are human centered.
 This assignment is based on the Kaggle Inclusive Images Challenge (see [here](http://Inclusive%20Images%20Challenge%20|%20Kaggle)) organised jointly by Google and Kaggle.

 Large, publicly available image datasets, such as ImageNet, Open Images and Conceptual Captions are commonly used to develop and rank image classification algorithms. While these datasets are a necessary and critical part of developing useful machine learning (ML) models, some open-source data may be biased. As patterns in such datasets ultimately decide what an AI model learns and predicts, such bias may lead us to develop models that may not necessarily reflect the true reality.

For example, the images below show the predictions of a standard AI image classifier trained to predict if a given image represents a wedding or not. While the AI correctly detects a wedding in the first 3 images, it fails to do so in the last image. This is a consequence of developing an AI algorithm without being sensitive to biases that my exist in the training data.

<figure>
    <img src=".\google.PNG" />
</figure>
<br>

Your goal for this block is to fix such broken implementations of AI and ensure that AI remains responsible, transparent and explainable. To this end, you are expected to design, implement and evaluate AI algorithms based on deep neural networks that can accurately classify an image while being sensitive to biases that may be present in the data the network is trained on. Further, keeping the end user in mind, imagine a use-case where such an algorithm would have value and create a protype of an application using the concepts learned in Human centered AI.

At the beginning of the project, you will be introduced to the project by one of the lecturers. Throught out the block, you can consult the lecturers if you have any questions or wish to deepen your understanding of project.
Please refer to the project brief for more detailed information.

### Creative Brief Timeline

<figure>
    <img src=".\phases.PNG" />
</figure>
<br>
<figure>
<center>
    <img src=".\timeline.PNG" />
</center>
</figure>
<br>


### Creative Brief Requirements:
- [ ] **Dataset**: Google Open images <br>
- [ ] **Class Labels**: Pick a maximum of 5 labels among all the image level labels present in the data. <br>
- [ ] **Tools**: Keras, Numpy, Matplotlib <br>
- [ ] **Prototype**: Wireframe demo of your application made in Adobe XD. <br>

Please click the links below to view more detailed requirements:

- [Responsible & Explainable AI](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleExplainableAIBlockC.html)
- [Human-Centered Artificial Intelligence](https://adsai.buas.nl/Study%20Content/Human-Centered%20Artificial%20Intelligence/Assignment.html)

# Block Outline

# Week 1 : Responsible & Explainable AI (XAI)

## Monday
[Fairness & Bias: Definitions](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleAI1.html)

## Tuesday
[DataLab 1: Implicit bias & A Designer's Critical Alphabet](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleAI2.html)

## Wednesday
[Fairness & Bias: Individual fairness, debiasing techniques & toolkits](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleAI3.html)

## Thursday
[Fairness & Bias: Group fairness metrics](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleAI4.html)

## Friday
[DataLab 2: Fairness metrics, and debiasing techniques for image data](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleAI5.html)

# Week 2 : Introduction to Neural Networks

## Monday
From the book [Deep Learning with Python](https://www.manning.com/books/deep-learning-with-python)
- [ ] Read Chapter 1: What is deep learning?

From the course [Introduction to Deep Learning with Keras](https://app.datacamp.com/learn/courses/introduction-to-deep-learning-with-keras)
- [ ] Complete Chapter 1: Introducing Keras
- [ ] Complete Chapter 2: Going Deeper

## Tuesday
From the book [Deep Learning with Python](https://www.manning.com/books/deep-learning-with-python)
- [ ] Read Chapter 2: The mathematical building blocks of neural networks

DataLab Prep
- [ ] Chapter 1&2 of the course [Introduction to Deep Learning with Keras](https://app.datacamp.com/learn/courses/introduction-to-deep-learning-with-keras)

## Wednesday - DataLab (W2-DL1)

In this DataLab, you will develop Multilayer Perceptrons (MLPs) using Keras for the following problem types:

- [ ] Regression
- [ ] Binary classification
- [ ] Multi-class classification
- [ ] Multi-label classification

[<img src="./images/githubbadge.png" alt="GitHub" width="15%"/>](https://github.com/BredaUniversityADSAI/2022-23-Y1-BlockC/blob/main/DataLabs/W2-DL1/W2-DL1-MLP-Student-Notebook.ipynb)

## Thursday
From the book [Deep Learning with Python](https://www.manning.com/books/deep-learning-with-python)
- [ ] Read Chapter 3: Introduction to Keras and TensorFlow

From the course [Introduction to Deep Learning with Keras](https://app.datacamp.com/learn/courses/introduction-to-deep-learning-with-keras)
- [ ] Complete Chapter 3: Improving Your Model Performance

DataLab Prep
- [ ] Chapter 3 of the course [Introduction to Deep Learning with Keras](https://app.datacamp.com/learn/courses/introduction-to-deep-learning-with-keras)

## Friday
In this DataLab, you will learn how to analyze and improve Multilayer Perceptrons (MLPs). Specifically you will:

- [ ] plot and interpret learning curves,
- [ ] use early stopping,
- [ ] and tune the learning rate.

[<img src="./images/githubbadge.png" alt="GitHub" width="15%"/>](https://github.com/BredaUniversityADSAI/2022-23-Y1-BlockC/blob/main/DataLabs/W2-DL2/W2-DL2-MLP-Student-Notebook.ipynb)

# Week 3 : Neural Networks Using TensorFlow

## Monday
[Introduction to TensorFlow](../../Study%20Content/DeepLearning/5.%20Introduction%20to%20TensorFlow.html)

## Tuesday
[Neural Networks in TensorFlow - Regression](../../Study%20Content/DeepLearning/5.1%20DLab-NNs-in-TF2-Regression.html)

## Wednesday
[Neural Networks in TensorFlow - Classification](../../Study%20Content/DeepLearning/6.%20Classification.html)

## Thursday
[Neural Networks in Google PlayGround](../../Study%20Content/DeepLearning/7.%20NN-Google-Playground.html)

## Friday
[DataLab: Classification](../../Study%20Content/DeepLearning/7.1%20DLab-Classification.html)

# Week 4 : Image Classification using Convolution Neural Network

## Monday
[Image Classification](../../Study%20Content/DeepLearning/8.%20Image%20Classification.html)

## Tuesday
[DataLab: Working on Creative Brief tasks](../../Study%20Content/DeepLearning/8.1%20DLab-CreativeBrief.html)

## Wednesday
[Convolution Neural Network - Deep Dive](../../Study%20Content/DeepLearning/9.%20CNN-DeepDive.html)

## Thursday
[Data Pre-procession and Data Augmentation](../../Study%20Content/DeepLearning/10.%20DataAugmentation.html)

## Friday
[DataLab: Working on Creative Brief tasks](../../Study%20Content/DeepLearning/10.1%20DLab-CreativeBrief.html)

# Week 5 : Deep Learning in Practice

## Monday
[Transfer Learning and fine tuning](../../Study%20Content/DeepLearning/11.%20Transfer%20Learning.html)

## Tuesday
[DataLab: Working on Creative Brief tasks](../../Study%20Content/DeepLearning/10.1%20DLab-CreativeBrief.html)

## Wednesday
[Deep Learning: Practical issues and best practices](../../Study%20Content/DeepLearning/12.PracticalIssues&BestPractices.html)

## Thursday
[Transfer Learning and fine tuning](../../Study%20Content/DeepLearning/11.%20Transfer%20Learning.html)

## Friday
[DataLab: Working on Creative Brief tasks](../../Study%20Content/DeepLearning/10.1%20DLab-CreativeBrief.html)

# Week 6 : Deep Learning and XAI

## Monday
[XAI: The need for explanations](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI1.html)

## Tuesday
[DataLab: XAI ](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI2.html)

## Wednesday
[Feature Attribution in Computer Vision](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI3.html)

## Thursday
[Moving beyond feature attribution](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI4.html)

## Friday
[DataLab: XAI](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI5.html)

# Week 7 : Human Centered AI

## Monday
[Interaction & information processing fundamentals](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Interaction_Information_Processing_Fundamentals.html)

## Tuesday
[DataLab: Risk-Assessment of disruptive technologies](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Datalab13_Risk-Assessment_of_Disruptive_Technologies.html)

## Wednesday
[Interaction design](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Interaction_Design.html)

## Thursday
[Interface design](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Interface_Design.html)

## Friday
[DataLab: Wizzard of Ozz Workshop](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Datalab14_Conceptualizing_A_Wireframe_Prototype.html)


# Week 8: Human Centered AI

## Monday
[U/X testing using A/B testing](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/User_Testing.html)

## Tuesday
[DataLab: A/B Testing](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Datalab15_Introduction_To_AB-Testing.html)

## Wednesday
- [User-Centered design for AI](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/User-Centered_Design_for_AI.html)
- [Designing for AI Algorithms Implementation](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Designing_for_AI_Algorithm_Implementation.html)

## Thursday
[DataLab: Wireframes and final presentation](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Datalab16_Client_Testing_of_Wireframe_Prototypes.html)

## Friday
Good Friday: So you have a day-off!
