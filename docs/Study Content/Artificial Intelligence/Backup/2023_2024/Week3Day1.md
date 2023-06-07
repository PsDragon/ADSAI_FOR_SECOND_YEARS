---
sort: 11
---

## __Taxonomy of AI II & State-of-the-art AI__

### Week 3: Chapter overview

I. __Taxonomy of AI II & State-of-the-art AI__ <br>
II. DataLab I: Creative Brief <br>
III. Risks & Benefits of AI <br>
IV. Python programming <br>
V. DataLab II: 'AI in Science Fiction' presentations <br>

### 1. Introduction

In today's independent study material, you will learn to define the domains, and subdomains presented in the Taxonomy of AI. In addition, we will teach you how to connect these domains and subdomains to your chosen AI topic from the movie Minority Report. Lastly, you will familiarize yourself with innovative AI/Data Science research and its applications.

__After this chapter, you will be able to:__

- [ ] Define the domains, and subdomains presented in the Taxonomy of AI
- [ ] Connect AI topics from the movie Minority Report to relevant domains, and subdomains presented in the Taxonomy of AI
- [ ] Provide examples of state-of-the-art (SOTA) AI research, and its applications

__Homework exercises__

For the DataLab preparation (Week 3, Tuesday), you are expected fill in a Microsoft Teams Form called ```DataLab Preparation (Week 3, DataLab I)```:

ADD EMBEDDED MICROSOFT FORM

If the embedded Microsoft form does not work in your browser, click [here](ADD URL).

To avoid multiple submissions, answer the questions that pop up (:pencil:) as you navigate the content below in a text editor of your choice (e.g., Notepad ++, Word, etc.) before entering them into the Microsoft Form. 

__Questions or issues?__

If you have questions or issues regarding the course material, please post them in the Q&A channel of Microsoft Teams. 

***

### 2. Taxonomy of AI: Domains, subdomains, and keywords

Now that you have been introduced to some of AI's foundational theories, principles, techniques, and applications, we can use AI Watch's Taxonomy of AI to classify them by domain and subdomain.

> AI Watch is an initiative of the European Commission (EC) jointly developed by the EC Joint Research Centre (JRC) and the Directorate General for Communications Networks, Content and Technology (DG CONNECT).  
AI Watch monitors industrial, technological and research capacity, policy initiatives in the Member States, uptake and technical developments of Artificial Intelligence and its impact in the economy, society and public services. It provides a number of analyses necessary to monitor and facilitate the implementation of the European Strategy for AI ([Source]()).

:pencil: __2a__ Carefully look at the Taxonomy of AI table (Figure 1.), and read the text below, which provides information on the different domains, and subdomains of the field of AI.

<img src="./images/DomainsAI.png" alt="AI Domains" width="1000"/> \
*Figure 1. AI domains, subdomains, and keywords based on AI Watch.*

__Domain 1: Reasoning__

__Subdomains: Knowledge representation; Automated reasoning; Common sense reasoning__

The domain of reasoning tackles the way machines transform data into knowledge, or infer facts from data. Several classifications address knowledge representation and automated reasoning as a field of AI, to describe the process of justifying (reasoning) the available data and information, provide solutions and represent them efficiently, based on a set of symbolic rules (HLEG, 2019; Spanish RDI Strategy in Artificial Intelligence, 2019; National Strategy: France Monitoring Report, 2019; CB Insights, 2019; AI National Strategy: Germany, 2018; Working Paper for National Strategy: India, 2018; ETSI, 2018; National Strategy: France (Villani Mission), 2018; AI National Strategy: China, 2017; McCarthy, 2007; Nilsson, 1998).

__Domain 2: Planning__

__Subdomains: Planning and Scheduling; Searching; Optimisation__

The main purpose of automated planning concerns the design and execution of strategies (e.g., an organised set of actions) to carry out some activity, and typically performed by intelligent agents, autonomous robots and unmanned vehicles. Unlike classical control and classification problems, the solutions are complex and must be discovered and optimised in the multidimensional space. (HLEG, 2019; Spanish RDI Strategy in Artificial Intelligence, 2019; National Strategy: France Monitoring Report, 2019; CB Insights, 2019; AI National Strategy: Germany, 2018; McCarthy, 2007).

__Domain 3: Learning__

__Subdomains: Machine Learning (ML)__
By learning, we refer to the ability of systems to automatically learn, decide, predict, adapt and react to changes, improving from experience, without being explicitly programmed. ML is widely included in the vast majority of efforts to identify AI categories, as the basic algorithmic approach to achieve AI regardless the type of learning, namely reinforcement, supervised, semi-supervised, unsupervised (HLEG, 2019; Spanish RDI Strategy in Artificial Intelligence, 2019; StandICT.eu project, 2019; National Strategy: Denmark, 2019; National Strategy: France Monitoring report, 2019; Australia’s Ethic Framework Dawson et al., 2019; US Congressional Research Service, 2019; CB Insights, 2019; EC JRC Flagship report on AI, 2018; AI National Strategy: Germany, 2018; OECD, 2018; Tsinghua University, 2018; Working Paper for AI National Strategy: India, 2018; National Industrial Strategy: UK, 2018; 2017; AI National Strategy: France (Villani Mission), 2018; US Department of Defense, 2018; OECD, 2017; McKinsey, 2017; Stone et al.: AI100, 2016; McCarthy, 2007).

__Domain 4: Communication__

__Subdomains: Natural Language Processing (NLP)__

NLP, as the main task of communication, refers to the machine's ability to identify, process, understand and/or generate information in written and spoken human communications. It is considered as an AI subdomain from several national strategies and AI experts, encompassing applications such as text generation, text mining, classification, and machine translation (HLEG, 2019; Spanish RDI Strategy in Artificial Intelligence, 2019; National Strategy: Denmark, 2019; National Strategy: France Monitoring report, 2019; CB Insights, 2019; EC JRC Flagship report on AI, 2018; OECD, 2018; Tsinghua University, 2018; Working Paper for AI National Strategy: India, 2018; National Strategy: France (Villani Mission), 2018; US Department of Defense, 2018; AI National Strategy: Japan, 2017; AI National Strategy: China, 2017; McKinsey, 2017; Stone et al.: AI100, 2016; McCarthy, 2007)

__Domain 5: Perception__

__Subdomains: Computer vision; Audio processing__

Perception refers to systems’ ability to become aware of their environment through the senses: vision, hearing, manipulation. etc., being vision and hearing the most developed areas in AI. Computer vision (CV) refers to activities that identify human faces and objects in digital images, as part of object-class detection. It is identified as one of the essential scientific fields with parts belonging to machine perception and, thus, AI. It is usually referred to as image pattern recognition for specific tasks, or as in a broader sense as machine vision, with applications on face and body recognition, video content recognition, 3D reconstruction, public safety and security, health etc. (HLEG, 2019; Spanish RDI Strategy in Artificial Intelligence, 2019; National Strategy: Denmark, 2019; Australia’s Ethic Framework Dawson et al., 2019; US Congressional Research Service, 2019; CB Insights, 2019; EC JRC Flagship report on AI, 2018; AI National Strategy: Germany, 2018; Tsinghua University, 2018; Working Paper for AI National Strategy: India, 2018; OECD, 2018; US Department of Defense, 2018; AI National Strategy: Japan, 2017; OECD, 2017; McKinsey, 2017; Stone et al.: AI100, 2016; McCarthy, 2007). Audio processing refers to AI systems allowing the perception or generation (synthesis) of audio signals, including speech, but also other sound material (e.g. environmental sounds, music). Speech or voice recognition, audio processing or sound technologies are also often proposed to be archived as an AI subdivision (AI4Belgium Report, 2019; COM(2018) 237 final; EC JRC Flagship report on AI, 2018; OECD, 2017, 2018; Tsinghua University, 2018; Working Paper for AI National Strategy: India, 2018; AI National Strategy: Japan, 2017; McCarthy, 2007).

__Domain 6: Integration and Interaction__

__Subdomains: Multi-agent systems; Robotics and Automation; Connected and Automated vehicles (CAVs)__

The transversal domain of Integration and Interaction addresses the combination of perception, reasoning, action, learning and interaction with the environment, as well as characteristics such as distribution, coordination, cooperation, autonomy, interaction and integration.. Robotics and Automation refers to activities related to application and research of the technological intelligent tools to assist or substitute human activity, or to enable actions that are not humanly possible (e.g. medical robots), to optimize technical limitations, labour or production costs. The CAVs subdomain regards technologies of autonomous vehicles, connected vehicles and driver assistance systems, considering all automation levels and all communication technologies (V2X). Multi-agent systems, Unmanned systems (CAVs, drones), as well as robotics and process automation (Application programming interface (API), robotic process automation for industrial, social and other uses) are also mentioned as separate intrinsic subdivisions of AI (HLEG, 2019; Spanish RDI Strategy in Artificial Intelligence, 2019; UNESCO, 2019; Australia’s Ethic Framework, 2019; National Strategy: Denmark, 2019; National Strategy: France Monitoring report, 2019; US Congressional Research Service, 2019; CB Insights, 2019; EC JRC Flagship report on AI, 2018; COM(2018) 237 final; AI National Strategy: Germany, 2018; Tsinghua University, 2018; Working Paper for AI National Strategy: India, 2018; National Industrial Strategy: UK, 2018; 2017; National Strategy: France (Villani Mission), 2018; Statista 2017; McKinsey, 2017; AI National Strategy: Japan, 2017; AI National Strategy: China, 2017; Stone et al.: AI100, 2016).

([Source](https://ai-watch.ec.europa.eu/publications/ai-watch-defining-artificial-intelligence-20_en))

:pencil: __2b__ Find information that can help you to connect the following AI applications, algorithms etc. to the relevant domains and subdomains presented in the Taxonomy of AI:

- ELIZA
- Deep Blue
- AlphaGo
- AlexNet
- GPT-3
- Google's robot dog, Laikago
- Tesla car

MERGE WITH OTHER MICROSOFT TEAMS FORM

:pencil: __2c__ Let us test our newly gained knowledge by taking a short quiz!

<iframe width="1280px" height="960px" src="https://forms.office.com/r/AbmyH44uYE?embed=true" frameborder="0" marginwidth="0" marginheight="0" style="border: none; max-width:100%; max-height:100vh" allowfullscreen webkitallowfullscreen mozallowfullscreen msallowfullscreen> </iframe>

:pencil: __2d__ Visualize the Taxonomy of AI (e.g., domains, subdomains) by creating an infographic. You can use Google's [Jamboard](https://jamboard.google.com/) or a simple piece of paper for your infographic. Export/import your drawing to PNG, and upload it to your GitHub repository.

***

### 3. State-of-the-art AI 

>'What a time to be alive!' <br>
 ― Károly Zsolnai-Fehér

In the ever-evolving field of AI, keeping up with the latest research and applications can be an exciting yet challenging endeavor. In this section, we will delve into the state-of-the-art AI research and explore cutting-edge applications. Understanding these advancements is essential, as they shape the future of AI and have significant implications, including ethical considerations (which we will delve into further on Wednesday).

:pencil: __3a__ Read sub-chapter 1.4 of the AIMA book (p.45-48). 

:pencil: __3b__ Read a blog, and note down the research topic, author, and affiliated university/company, etc.

- [Berkeley Artificial Intelligence Research (BAIR)](https://bair.berkeley.edu/blog/)

- [Google AI Blog](https://ai.googleblog.com/)

- [OpenAI Blog](https://openai.com/blog/)

Struggling to read these (scientific) blogs, try to read a blog on a novel AI algorithm and/or application that is posted on [Medium](https://medium.com/tag/artificial-intelligence), which caters to a more general audience. 

> Two Minute Papers is a YouTube series that showcase and attempt to explain interesting research works, a couple minutes or more at a time, run by Károly Zsolnai-Fehér. Two Minute Papers aims to communicate newest scientific discoveries, ideas and result, bringing people in the conversation that are oftenly reserved for experts of the field. Zsolnai-Fehér breaks down the scientific papers that are meant to communicate ideas and results between experts, and making the language more understandable for people who may not have expertise in mathematics or science ([Source](https://youtube.fandom.com/wiki/Two_Minute_Papers)).

<img src="./images/TwoMinutePapers.jpeg" alt="Two minute papers" width="560"/> 

*Figure 1. Two Minute Papers.*

:pencil: __3c__ Select a videos from [Two Minute Papers](https://www.youtube.com/c/K%C3%A1rolyZsolnai), and summarize its content in a maximum of 300 words.  

For example, check out their awesome video on OpenAI's Dall-E 2:

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/lbUluHiqwoA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 1. OpenAI's DALL-E 2: Even More Beautiful Results!*

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Note: When you are finished with the independent study material, and still have some time left, try to apply your newly gained knowledge to the DataLab tasks.
</div>

***