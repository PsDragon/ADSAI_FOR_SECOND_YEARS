# Block C - Modelling (Data Modelling)

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

Your goal for this block is to fix such broken implementations of AI and ensure that AI remains responsible, transparent and explainable. To this end, you are expected to design, implement and evaluate AI algorithms based on deep neural networks that can accurately classify an image while being sensitive to biases that may be present in the data the network is trained on. Further, keeping the end user in mind, imagine a use-case where such an algorithm would have value and create a protype using the concepts learned in Human centered AI.

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
- [ ] **Class Labels**: Pick 10 labels at random among all the image level labels present in the data. <br>
- [ ] **Tools**: Keras, Numpy, Matplotlib <br>
- [ ] **Prototype**: Wireframe demo of your application made in Proto. <br>

# Block Outline

# Week 1 : Responsible & Explainable AI (XAI)

## Monday
[Fairness & Bias: Definitions](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleAI1.html)

## Tuesday
[DataLab 1: (Implicit) Bias & Decolonizing](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleAI2.html)

## Wednesday
[Fairness & Bias: Statistical fairness metrics, and debiasing techniques](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleAI3.html)

## Thursday
[Decolonizing AI](../../Study%20Content/Business%20Intelligence/SQL_DDL2.html)

## Friday
[DataLab 2: Responsible AI Assignment](../../Study%20Content/Responsible%20and%20Explainable%20AI/ResponsibleAI5.html)

# Week 2 : Getting started with Deep Learning

## Monday
[AI, Machine Learning, Deep Learning: more than just buzzwords?](../../Study%20Content/DeepLearning/1.%20Introduction%20to%20Deep%20Learning.html)

## Tuesday
[DataLab: Deep learning using Keras](../../Study%20Content/DeepLearning/5.%20Introduction%20to%20TensorFlow.html)

## Wednesday
[Deep Learning data representation and architecture](../../Study%20Content/DeepLearning/5.1%20Neural%20network%20model.html)

## Thursday
[Deep Learning activation functions, loss functions and optimizers](../../Study%20Content/DeepLearning/4.NeuralNetworksConcepts.html)

## Friday
[DataLab: MLP](../../Study%20Content/Digital%20Transformation/DataLab%202.html)

# Week 3 : Deep Dive into Deep Learning

## Monday
[Backpropagation and Gradient Descent](../../Study%20Content/Business%20Intelligence/DataPrepaparationCleanTransformLoadPowerBI.html)

## Tuesday
[DataLab: Fully connected Neural networks](../../Study%20Content/DeepLearning/8.%20Image%20Classification.html)

## Wednesday
[Convolutional Neural Network architectures I](../../Study%20Content/Business%20Intelligence/ModelDataPowerBI.html)

## Thursday
[Convolutional Neural Network architectures II](../../Study%20Content/Business%20Intelligence/VisualizeDataPowerBI.html)

## Friday
[DataLab: Convolutional Neural Networks](../../Study%20Content/DeepLearning/9.%20Convolutional%20Neural%20Networks.html)

# Week 4 : Deep Dive into Deep Learning

## Monday
[Image data pre-processing & data augmentation](../../Study%20Content/Business%20Intelligence/DataPrepaparationCleanTransformLoadPowerBI.html)

## Tuesday
[DataLab: Pre-processing & data augmentation](../../Study%20Content/Business%20Intelligence/DataLab1_DataWranglingUXDesignPowerBI.html)

## Wednesday
[Deep Learning Model Evaluation: Tuning and evaluating models I](../../Study%20Content/DeepLearning/6.%20Tuning.html)

## Thursday
[Deep Learning Model Evaluation: Tuning and evaluating models II](../../Study%20Content/DeepLearning/7.%20Regularization.html)

## Friday
[DataLab: Deep Learning Model Evaluation](../../Study%20Content/Business%20Intelligence/DataLab2_CreatingVisualsDAXPowerBI.html)

# Week 5 : Deep Learning in Practice

## Monday
[Unsupervised Deep Learning](../../Study%20Content/Business%20Intelligence/DataAnalysisManagingWorkspacesDatasetsPowerBI.html)

## Tuesday
[DataLab: Unsupervised Deep Learning](../../Study%20Content/DeepLearning/10.Autoencoders%20for%20Image%20Classification.html)

## Wednesday
[Deep Learning: Practical issues and best practices](../../Study%20Content/Introduction%20to%20Machine%20Learning/SupervisedAndUnsupervisedLearning.html)

## Thursday
[Deep Learning SOTA models for computer vision](../../Study%20Content/DeepLearning/11.Transfer%20Learning.html)

## Friday
[DataLab: SOTA models and model comparison](../../Study%20Content/Introduction%20to%20Machine%20Learning/Datalab00_RegressionAnalyses.html)

# Week 6 : Deep Learning and XAI

## Monday
[Feature visualization in Keras-Pixel/Feature Attribution](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI1.html)

## Tuesday
[DataLab: XAI using Keras](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI2.html)

## Wednesday
[Meta-learning](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI3.html)

## Thursday
[Detecting concepts TCAV](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI4.html)

## Friday
[DataLab: XAI using TCAV and model card toolkit (MCT)](../../Study%20Content/Responsible%20and%20Explainable%20AI/XAI5.html)

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
[User-Centered design for AI](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/User-Centered_Design_for_AI.html)

## Thursday
[User-Centered design for AI](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Designing_for_AI_Algorithm_Implementation.html)

## Friday
[DataLab: Wireframes and final presentation](../../Study%20Content/Human-Centered%20Artificial%20Intelligence/Datalab16_Client_Testing_of_Wireframe_Prototypes.html)
