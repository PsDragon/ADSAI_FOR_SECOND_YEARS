---
sort: 3
---

# Fairness & Bias: Statistical fairness metrics, and debiasing techniques

Today's independent study material focusses on 'algorithmic bias', and how you as a data professional can mitigate this type of bias. Additionally, the material will introduce you to various statistical fairness metrics, such as equalized odds, and statistical parity. Furthermore, it will make you familiar with the debiasing techniques provided by IBM's AI 360 Toolkit.

## 1) Learning Objectives:

1. Define the term 'algorithmic bias'.
2. List, and describe various pre-process, in-process, and post-process statistical fairness metrics, and debiasing techniques.
3. Describe the commonalities/differences between the fairness metrics.
4. Propose appropriate fairness metrics, and debiasing techniques for both image, and tabular data.

__Table of contents:__
1. Introduction: 3 hours
2. Workshop: 2 hours
3. Additional material (optional): ... hours
   3.1 Cloud Ethics by Louise Amoore

## Questions or issues?
If you have any questions or issues regarding the course material, please first ask your peers or ask us in the Q&A in Datalab!

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Note down any important questions you might have!
 </div>

Good luck!

***

## 1) Introduction

### 1.1 What is algorithmic bias

__1a__ Define the term 'algorithmic bias'. Search the internet for a definition or see the comic book Fairness & Friends by Khan et., al. Write your answer down.

For this exercise you are going to read a famous investigative article by ProPublica. On their website, ProPublica, defines its work, and mission as follows:

> ProPublica is an independent, nonprofit newsroom that produces investigative journalism with moral force. We dig deep into important issues, shining a light on abuses of power and betrayals of public trust — and we stick with those issues as long as it takes to hold power to account.

<img src="./images/propublica.jpg" alt="Books banner" width="400"/>

*Figure 1. ProPublica logo.*

__1b__ Read the article [Machine Bias](https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing) by Angwin et., al. (ProPublica).

__1c__ What are the key takeaways of the article Machines Bias? Write them down with a maximum of 150 words.

### 1.2 Fairness enhancing metrics

__Pre-processing__
- Adding data instances (i.e. 'fairness through awareness')
- Removing data instances (i.e. 'fairness through unawareness')
- Modifying data instances (Tutorial: [Image augmentation in Keras](https://www.analyticsvidhya.com/blog/2020/08/image-augmentation-on-the-fly-using-keras-imagedatagenerator/))

__In-processing__
- Meta-learning (Tutorial: [Few-Shot learning with Reptile](https://keras.io/examples/vision/reptile/))
- Initializing bias or focal loss

__Post-processing__
- Disparate impact
- Demographic parity
- Equalized odds
- Equal opportunity
- Individual fairness

__1.2a__ Provide brief descriptions of the post-processing fairness enhancing metrics listed above. Useful source: [A survey on bias and fairness in machine learning](https://arxiv.org/pdf/1908.09635.pdf) by Mehrabi et., al. (2019).

### 1.3 Debiasing techniques

There are various methods to mitigate bias in data. [IBM's AI 360](https://aif360.readthedocs.io/en/latest/modules/sklearn.html) Toolkit offers multiple debiasing techniques, which you can apply to tabular data.

__1.3__ Select one debiasing technique provided by IBM's AI 360 Toolkit and explain how it works.

***

## 2) Workshop: TensorFlow's Responsible AI Toolkit

Now, we are introduced to fairness enhancing metrics, and bias mitigating techniques, it is time to ground down these fundamentals. In the workshop, you will explore TensorFlow's Responsible AI Toolkit, which you can find [here](https://www.tensorflow.org/responsible_ai).

__2a__ List, and describe TensorFlow's five ML workflow steps.

__2b__ At each step, explore one of presented tools (e.g. Know You Data (Beta)).

__2c__ What is your opinion on TensorFlow's Responsible AI Toolkit? Was it useful? Did you enjoy working with it? Elaborate on your answer.

***

## 3) Additional material (optional)

This part of the independent study material is optional. You are not required to complete the following questions. However, they will help you to deepen your understanding of the concepts presented in the independent study material.

### 3.1 Cloud Ethics by Louise Amoore

Want to know why algorithms can be seen as 'ethicopolitical' entities? Check out the book Cloud Ethics by Louise Amoore:

> In Cloud Ethics Louise Amoore examines how machine learning algorithms are transforming the ethics and politics of contemporary society. Conceptualizing algorithms as ethicopolitical entities that are entangled with the data attributes of people, Amoore outlines how algorithms give incomplete accounts of themselves, learn through relationships with human practices, and exist in the world in ways that exceed their source code. In these ways, algorithms and their relations to people cannot be understood by simply examining their code, nor can ethics be encoded into algorithms. Instead, Amoore locates the ethical responsibility of algorithms in the conditions of partiality and opacity that haunt both human and algorithmic decisions. To this end, she proposes what she calls cloud ethics—an approach to holding algorithms accountable by engaging with the social and technical conditions under which they emerge and operate.

It is, amongst others, available via [bol.com](https://www.bol.com/nl/nl/f/cloud-ethics-algorithms-and-the-attributes-of-ourselves-and-others/9200000117749888/).

## Next up!
Coming Datalab we will reflect upon today's independent study material, and give you an opportunity to ask any questions you might have.

## Resources
