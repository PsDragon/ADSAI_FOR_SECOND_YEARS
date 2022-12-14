---
sort: 4
---

# 1. Decision-making & Actions- Workshop
Today, we're going to create the full picture: which is determening which cognitive systems are involved in the bin-picking tasks and how they work. Then we're going translate to that to a robot doing the task which is going to be our high-level design of the robot. 

## Learning Objectives: 
We first re-iterate on the learning objectives from the previous cognition datalab:
1. Identify appropriate perceptual features for object detection.
2. Identify required prior-knowledge for contextualising object detection.
3. Use cognitive models of pattern recognition to improve feature and/or object detection.
4.	Identifiy relevant real-world input required for situational awareness & reinforcement learning.
5.	Identify cognitive processes used to process relevant real-world input required for situational awareness & reinforcement learning.

After which we will aim for a new set of learning objectives to:
1. Identify relevant real-world input required for situational awareness & reinforcement learning.
2. Identify cognitive processes used to process relevant real-world input required for situational awareness & reinforcement learning.
3. Use situational awareness & reinforcement learning to make a decision and respond with a action.
Which we'll integrate into our flowchart for both the human and robotic side.

Let's get started!

## Schedule:
1. Refresher lecture on Perception & Learning: 9:15 - 10:00
2. Creative Briefing: Iterate on you flowchart: 10:00 - 12:00 
- Lunch -
3. Decision-making & Actions Lecture: 13:00 - 14:30
4. Decision-making & Actions Tutorial: 14:30 - 17:00



## Lecture - Cognition Fundamentals: Perception & Learning Refresher
Live lecture which is given at the 15th of December from 9:15 till 10:00. Take a look at your timetable to see where and when exactly the lecture takes place! If you can't wait, [here are the slides already](https://github.com/BredaUniversityADSAI/ADS-AI/blob/f796cdb8c7629fe462f89344ab5592b0d858d35f/docs/Study%20Content/Cognition%20Fundamentals/assets/lectures/Cognition%20Fundamentals%20-%20Refresher%20on%20Perception%20and%20Learning.pptx) but after the lecture, there should be [a recording available here!](https://www.youtube.com/watch?v=dQw4w9WgXcQ&feature=share&si=ELPmzJkDCLju2KnD5oyZMQ)

## Creative Briefing: Iterate on your flowchart
Open your flowchart and technical report, or notes thereof, these are going to be the tools to make our design. I've provided all who uploaded their flowchart with feedback, please iterate on your flowchart based on the provided feedback.


1) If you haven't done so already, create a second model for your robot below your current cognitive model. Which should roughly look a bit like this:

<img src="./assets/Flowchart-HighLevelLayOut.jpg" alt="Flowchart-HighLevelLayOut" width="900"/>
*Figure 0. An example of the two parrallel models. Both should have simmilar input (information) and output (actions); although there are going to be variations. 



### Object Detection Algorithm
Having layed out that groundwork condition, we are going to work on the [creative brief](https://adsai.buas.nl/Year2/BlockB/#cognition). Using your flowchart supplemented by text in your report/notes we're going to run over the part we already created to check if we have adequately met the creative brief requirements by doing the following tasks:

<img src="./assets/CognitiveVisionSystem.jpg" alt="CognitiveVisionSystem" width="900"/>
*Figure 1. Flowchart of a typical human cognitive vision system (de Souza Alves, T., de Oliveira, C. S., Sanin, C., & Szczerbicki, E.,2018).*

- [(click for more refreshment on perception)](https://adsai.buas.nl/Study%20Content/Cognition%20Fundamentals/Perception%20&%20Learning%20-%20Workshop.html#refreshers)

2) **Identify appropriate perceptual features for object detection:** what does the human and robot both have to perceive to detect the objects? If you haven't done so already, be sure to add the environment to your flowchart such as 

<img src="./assets/ReinforcementLearning.jpg" alt="Reinforcement Learning" width="800"/>
*Figure 5. The most basic form of a reinforcement learning model.*

3) **Identify required prior-knowledge for contextualising object detection:** what do the human and robot both need to know about the object to detect the object and know what to do with it? Take a look at the figures.


<img src="./assets/Memory.jpg" alt="Memory Cognitive Model Example 1" width="1100"/>
*Figure 2. The full human cognitive memory system.*

- [(click for more refreshment on memory and learning)](https://adsai.buas.nl/Study%20Content/Cognition%20Fundamentals/Perception%20&%20Learning%20-%20Workshop.html#refreshers-1)

<img src="./assets/Memory2.png" alt="Memory Cognitive Model Example 2" width="800"/>
*Figure 3. A simplified human cognitive memory system.*


4) **Use cognitive models of pattern recognition to improve feature and/or object detection:**
- Start with a dry-run of your flowchart: Test your flowchart by running the different object-detection tasks through your cognitive model and robot model. Can it deal with all the input and process it in the way you intend to? Is anything missing? Make changes if you run into any issues; this is how you create a good high-level design!
- For now, and for later; which visual perception processes (e.g. edge detection) can help recognize the object (characteristics) faster and with greather relieability? Answer this question for both the human and robotic side.


### Robotic Controller & Reinforcement Learning algorithm


5) **Identifiy relevant real-world input required for situational awareness & reinforcement learning:** What do the robot and human respectively, need to know to make out what is going on in the situation and environment? How does the robot receive negative and positive feedback?

<img src="./assets/ReinforcementLearning.jpg" alt="Reinforcement Learning" width="800"/>
*Figure 5. The most basic form of a reinforcement learning model.*


6) **Identify cognitive processes used to process relevant real-world input required for situational awareness & reinforcement learning:** How do the robot and human respectively, know what is going on in the situation and environment, and how does the robot know what to do? How does the robot learn using reinforcement learning?



Note that these apart from designing, implementing it is also part for the [higher assessment criteria](https://adsai.buas.nl/Year2/BlockB/#cognition).

## Lecture - Cognition Fundamentals: Decision-making & Actions
Live lecture which is given at the 15th of November from 13:00 till 14:30. Take a look at your timetable to see where and when exactly the lecture takes place! If you can't wait, [here are the slides already](https://github.com/BredaUniversityADSAI/ADS-AI/blob/8a312a9350b35bad7ebbf135293d669582d8575d/docs/Study%20Content/Cognition%20Fundamentals/assets/lectures/Cognition%20Fundamentals%20-%20Decision-making%20and%20Actions.pptx) but after the lecture, there should be [a recording available here!](https://www.youtube.com/watch?v=dQw4w9WgXcQ&feature=share&si=ELPmzJkDCLju2KnD5oyZMQ)



## Creative Briefing: Decision-making & Actions
Open your flowchart and technical report or notes thereof, these are going to be the tools to make our design. Answer the following question using your flowchart and supplemented with text:


7) **How do humans sample relevant real-world input required for situational awareness & reinforcement learning?**
- After sampling the relevant input, how is this input then processed to create situational awareness & reinforcement learning?
- When we have sampled, processed (e.g. classified) our real-world input, how do we then decide upon which action to take?
- How do we take and execute that action?


8) **The robot controller can respond to different situational conditions using formal logic:** ?
Do a dry run of your flowchart:
- Test your flowchart by running the different bin-picking tasks through your cognitive model and robot model. Can it deal with all the input and process it in the way you intend to? Is anything missing? How does the robot/human can then respond to delivered input? Make changes if you run into any issues; this is how you create a good high-level design!
- Which input can be proccesed into a response using just if/else statements; for the robot


9) Define the environement within your flowchart; input, proccesses, output, and start planning the environment wrapper:
- [Instructions](https://adsai.buas.nl/Study%20Content/Robotics%20and%20Reinforcement%20Learning/10.%20Datalab4-Prep.html)



10) **Optional: Suggestions for model improvement, real-world implementation, knowledge acquisition and decision-making are made**: How could you improve on your robot in the future? If you have any great ideas which are out of scope, list them for the excellent criteria!


## Relevant literature to research:
- [Summary of Concepts and Terms](https://github.com/BredaUniversityADSAI/ADS-AI/blob/260f3f788372cfb55e2a4ba2956800de1b3b14a8/docs/Study%20Content/Cognition%20Fundamentals/assets/Summary%20of%20Concepts%20and%20Terms.docx): Highly recommended read which summarizes most important concepts discussed in the literature below. It also contains various important model you can use to create cognitive systems; or systems to deal with information processing in general.
- [Schurgin, M.W. (2018). Visual memory, the long and the short of it: A review of visual working memory and long-term memory. Attention, Perception, & Psychophysics, 80: 1035-1056.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/997b5108aa39c2ceded8eb9dd979c7333360e624/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/Visual%20memory,%20the%20long%20and%20the%20short%20of%20it%20-%20A%20review%20of%20visual%20working.pdf)
- [Eichenbaum, H. (2017). Memory: Organization and Control. Annual Review of Psychology, 68, 19-45.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/997b5108aa39c2ceded8eb9dd979c7333360e624/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/Memory%20-%20Organization%20and%20Control.pdf)
- [O’Reagan, J.K. (1992). Solving the “real” mysteries of visual perception: the world as an outside memory. Can J Psychol, 46(3):461-488.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/29bd304acfa39a1ae5c9aa8640a56cbbe9a18c1e/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/SOLVING%20THE%20REAL%20MYSTERIES%20OF%20VISUAL%20PERCEPTION.pdf)
- [Szeliski, R. (2022). Computer vision: algorithms and applications. Springer Nature.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/7c3e62e0c5ba4a3939286b0462568cc2dc592acc/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/Computer%20Vision%20-%20Algorithms%20and%20Applications,%202nd%20Edition.pdf)