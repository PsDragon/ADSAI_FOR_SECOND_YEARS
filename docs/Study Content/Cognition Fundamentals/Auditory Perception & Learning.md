---
sort: 7
---

# Auditory Perception & Learning - Self-Study Day
Just what is the difference between sensing and perceiving? And how does hearing actually work? What's the difference between hearing something and making sense of it? And how do we memorize and learn all of that? Today we're going to start answering all of these questions!

Then, we're going to apply these concepts to creating a perceptual model of human cognitive vision; how a human would see our bin-picking task. So we're going to place ourselves in the shoes of the robot, fill in the template and then elaborate on it by doing some research into human cognitive vision! 
Seeing and perceiving however is not enough, humans will also need to remember, relate and contextualize what it sees in order to decide what to do. So after defining our model of human cognitive vision, we're going to learn about the human memory and where how reinforcement learning works!

Finally, we're going to translate our cognitive model of human vision and memory into a model for our robot which does object detection and reinforcement learning . As the project progresses you can then use your flowchart model of the robot to design & maintain an oversight of your code implementation and subsequently communicate it in your technical report!

## Learning Objectives: 
1. Identify appropriate perceptual features for object detection.
2. Identify required prior-knowledge for contextualising object detection.
3. Use cognitive models of pattern recognition to improve feature and/or object detection.
4.	Identifiy relevant real-world input required for situational awareness & reinforcement learning.
5.	Identify cognitive processes used to process relevant real-world input required for situational awareness & reinforcement learning.



## Introduction to the Auditory System 
The human auditory system is a complex system responsible for the sense of hearing. It consists of several components that work together to detect, process, and interpret sound waves. Please watch this quick refresher on perception, sensation and overview of the auditory system: watch untill minute 3:25 (or longer if you are interested in taste and other sensory systems).

<iframe width="560" height="315" src="https://www.youtube.com/embed/fxZWtc0mYpQ?start=82" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Auditory Processing
The auditory system can be divided into three main components: the outer ear, the middle ear, and the inner ear. Let's take a closer look at each component:

<img src="./assets/HumanAuditorySystem.png" alt="HumanAuditorySystem" width="900"/>
*Figure 1. Overview of the human auditory system.*

**Outer ear:** The outer ear is the visible portion of the ear, known as the pinna, concha, and the ear canal. The pinna is responsible for capturing sound waves in the environment and funneling them through the concha into the ear canal. Furthermore, the shape; or folds, of the pinna also helps to determine the vertical location of the sound. The ear canal then directs the sound waves towards the eardrum, which is located at the end of the canal.

**Middle ear:** The middle ear is a small, air-filled chamber that is separated from the outer ear by the eardrum. When sound waves reach the eardrum, they cause it to vibrate. These vibrations are then transmitted through three small bones in the middle ear, called the ossicles, which amplify the sound waves and transmit them to the inner ear. The ossicles are composed of the malleus (or hammer), incus (anvil), and stapes (or stirrup).

The middle ear also contains the Eustachian tube, which connects the middle ear to the back of the throat. This tube helps equalize air pressure between the middle ear and the environment, which is important for maintaining proper functioning of the eardrum and ossicles.

**Inner ear:** The inner ear is the most complex system of the three parts of the ear and the one most interesting with regards to computational modelling. The inner ear consists of fluid-filled chambers that are responsible for converting sound waves into electrical signals that can be interpreted by the brain. The inner ear is made up of two main structures: the cochlea and the vestibular system.

<img src="./assets/Cochlea.png" alt="Cochlea" width="900"/>
*Figure 2. A closer look a the cochlea.*

The cochlea is a snail-shaped structure that is responsible for converting sound waves of different frequencies into electrical signals. It contains tiny hair cells that are arranged along the length of the cochlea. When sound waves enter the cochlea, they cause the fluid inside to move, which in turn causes the hair cells to bend; a process called basilar tuning. This bending generates electrical signals, which are then transmitted to the brain via the auditory nerve.

<img src="./assets/BasilarTuning.png" alt="BasilarTuning" width="900"/>
*Figure 2. A closer look a the basilar membrame where the signal as transferred by the Stapes in the upper tube; the scala vestibule. From the oval window to apex; called the scala vestibule, sounds from 20 hertz to 200 hertz are registered. After reaching the apex the sounds travel through the scale tympani to the round window from 200 hertz onwards are registered.*

Located within the cochlea is the basilar membrane which is a thin, flexible membrane that runs along the length of the cochlea, which is the snail-shaped structure in the inner ear that is responsible for converting sound waves into electrical signals that the brain can interpret. The basilar membrane is lined with thousands of tiny hair cells that are responsible for detecting the vibrations caused by sound waves of different frequencies: the organ of Corti.

<img src="./assets/OrganCortiLocation.jpg" alt="OrganCortiLocation" width="600"/>
*Figure 2.a. Within the basilar membrame there is the organ of corti. Essentially, this is the part of the basilar membrame which registers the sound waves by registering the tiny movements of the hairs.

The organ of Corti contains rows of hair cells, which are specialized sensory cells that are responsible for detecting particular sound waves. These hair cells are arranged in a specific pattern to detect specific sound characteristics and are connected to nerve fibers that transmit electrical signals to the brain. The hair cells in the organ of Corti are arranged in a tonotopic manner, meaning that they are sensitive to different frequencies of sound. Hair cells near the base of the cochlea are sensitive to high-frequency sounds, while hair cells near the apex are sensitive to low-frequency sounds from 200 hertz onwards.

<img src="./assets/StructureOrganCorti.jpg" alt="StructureOrganCorti" width="600"/>
*Figure 2.b. Within the organ of Corti there is the tectorial membrame which is the main vibrating component to which the hairs are attached. As the tectorial membrame vibrates the different hairs hairs are moved with differanting intensity, velocity and angles which registers the different aspects of a sound. Don't pay attention to the rest the unmentoined components in the diagram, we don't go that deep into the neuroscientific aspects of the auditory system.*

The basilar membrane is wider and more flexible at the base of the cochlea, and narrower and stiffer at the apex. This means that higher frequency sounds, which have shorter wavelengths, cause maximum displacement of the basilar membrane near the base of the cochlea, while lower frequency sounds, which have longer wavelengths, cause maximum displacement closer to the apex.

As a result, different frequencies of sound cause different hair cells along the length of the basilar membrane to bend and generate electrical signals. These signals are then transmitted to the brain via the auditory nerve, which then interprets the signals as sound.

In this way, the basilar membrane acts as a frequency analyzer, with different regions of the membrane responding preferentially to different frequencies of sound. This process is known as basilar tuning, and it allows the brain to distinguish between different frequencies of sound and perceive pitch.

Basilar tuning is important for our ability to distinguish between different sounds and to understand speech, music, and other complex auditory stimuli. It also plays a role in our ability to locate the source of sounds in space, as the relative timing and intensity of sound waves reaching each ear can be used to determine the location of the sound source.



The other important system located in the cochlea is the vestibular system which is responsible for providing the brain with information about the body's position and movement in space, as well as its orientation with respect to gravity. It consists of three semicircular canals and two otolith organs: the utricle and saccule which generates electrical signals that are transmitted to the brain via the vestibular nerve.

<img src="./assets/VestibularSystem.png" alt="VestibularSystem" width="900"/>
*Figure 3. A closer look a the the vestibular system.*

The semicircular canals are three fluid-filled tubes that are arranged perpendicular to each other, and they are responsible for detecting rotational movements of the head. Each canal contains a specialized sensory structure called a crista, which is covered in hair cells that are embedded in a gelatinous structure called the cupula. When the head rotates, the fluid in the canals also moves, which causes the cupula to bend and the hair cells to generate electrical signals that are sent to the brain. These signals provide information about the direction and speed of the head's rotation.

The utricle and saccule are two small, fluid-filled sacs that are located next to the semicircular canals, and they are responsible for detecting linear movements and changes in head position. The walls of these organs are covered in hair cells that are embedded in a gelatinous structure called the macula. When the head moves or changes position, the fluid in the sacs also moves, which causes the macula to bend and the hair cells to generate electrical signals that are sent to the brain. These signals provide information about the head's orientation with respect to gravity and the direction and acceleration of linear movements.

Together, the semicircular canals and otolith organs provide the brain with information about the body's position and movement in three-dimensional space. This information is crucial for maintaining balance and posture, coordinating movements, locating the source of both auditory and visual stimuli, and navigating the environment. When the vestibular system is not functioning properly, it can lead to problems with balance and spatial orientation, dizziness, and vertigo.

**Auditory Cortex:** Finally, the auditory cortex is the region of the brain responsible for processing sound information. It is located in the temporal lobe, which is one of the four main lobes of the cerebral cortex.

The auditory cortex receives information about sound from the thalamus, which is a structure in the brain that relays sensory information to the appropriate processing centers. Specifically, the auditory cortex receives information from the medial geniculate nucleus (MGN) of the thalamus, which is the final relay station for auditory information before it reaches the cortex. Essentially, the thalamus is where information from the long- and short-term working memory are combined with the incoming sensory information which enables the auditory cortext to perceive the incoming sound.

The auditory cortex is organized into different regions that are specialized for processing different aspects of sound. The primary auditory cortex is the first region of the cortex to receive information about sound, and it is organized tonotopically, which means that different frequencies of sound are represented in different regions of the cortex. The organization of the primary auditory cortex is thought to reflect the organization of the basilar membrane in the inner ear, which is responsible for separating different frequencies of sound.

<img src="./assets/AuditoryCortex.jpg" alt="AuditoryCortex" width="900"/>
*Figure 4. A closer look a the Auditory Cortex.*

The secondary auditory cortex is a collection of brain regions that are located adjacent to the primary auditory cortex and are responsible for higher-level processing of auditory information. 
These higher-level areas of the auditory cortex are responsible for more complex aspects of sound processing, such as the identification of speech sounds, music perception, sound localization and language comphrension. The two more important parts of the secondary auditory cortext are the Wernicke's and Broca's areas which are responsible for language comphrension and speech production.

**Wernicke's area:** Wernicke's area is purely involved in language comphrension. Wernicke's area is named after Carl Wernicke, a German neurologist who first described it in the late 1800s. He observed that damage to this region of the brain resulted in deficits in language comprehension, but not in the ability to produce speech.

The function of Wernicke's area is to interpret and assign meaning to auditory and visual information related to language. When we hear or read language, the information is processed in the primary auditory cortex and then sent to Wernicke's area for interpretation. The area processes the information and extracts the meaning of words and sentences, allowing us to understand the language.

Neurological defects, although tragic, have provided us with many insights into the brain which is otherwise so difficult to measure and quantify. Damage to Wernicke's area can result in a condition known as Wernicke's aphasia, which is characterized by difficulty understanding spoken or written language, even though the person is still able to produce speech. Individuals with Wernicke's aphasia may speak fluently, but their speech may be nonsensical, with incorrect word choices and grammatical errors.

In addition to its role in language comprehension, Wernicke's area is also involved in other cognitive processes, such as attention, memory, and working memory. It is connected to other brain regions involved in language processing, such as Broca's area.

<img src="./assets/BrocaWernicke.jpg" alt="BrocaWernicke" width="900"/>
*Figure 4. A closer look at the Broca's and Wernicke's respective areas.*

**Broca's area:** Broca's area is a region of the brain located in the posterior part of the left frontal lobe; therefore, one could argue it's distinct from the auditory cortex but for our purposes it doesn't really matter. This area is involved in speech production and language processing.

Broca's area is named after Paul Broca, a French neurologist who first described it in the mid-1800s. He observed that damage to this region of the brain resulted in deficits in speech production, but not in the ability to understand language.

The function of Broca's area is to coordinate the movements of the mouth, tongue, and vocal cords required for speech production. When we speak, information about the words we want to say is sent from Wernicke's area to Broca's area, which then plans and coordinates the movements required for speech.

Damage to Broca's area can result in a condition known as Broca's aphasia, which is characterized by difficulty with speech production, with the person often speaking slowly and with great effort, and making errors in grammar and sentence structure. However, individuals with Broca's aphasia can still understand language relatively well.

In addition to its role in speech production, Broca's area is also involved in other cognitive processes, such as language processing and comprehension, as well as decision-making, attention, and working memory. Like any concept of information processing and brain area these areas have a general function but are not only clear-cut destinct categories; or processor, because information has to travel between all parts of the brain and some phenomena we perceive as distinct are likely dispersed, [emergent phenomena](https://necsi.edu/emergence#:~:text=Emergence%20refers%20to%20the%20existence,they%20would%20not%20do%20alone.).

Now that we have gotten a basic overview of the auditory system we can start mapping the flow of information into a flowchart. Because who doesn't love a flowchart?

## Tutorial - Auditory Perception
Now we are going to make a flowchart of our model of the  human auditory system; or auditory perception more specifically, and fill it in with information for our NLP task:
1. Pick a tweet from your dataset which is either a disaster or non-disaster tweet and rewrite it in your own words as if you were telling it to another person. Make sure to say it out loud so you can check whether it's actually something that makes sense as dialogue.
2. Take a look at your flowcharts from last time and figure X. image dataset and figure 1 below. Create a flowchart of figure 1. List down the objects that you are going to identify in the in the 'High-Level Vision' section of the flowchart.
2. Imagine that you are identifying the objects. What features/characteristics do you look out for yourself? How do you personally identify the object. List these down in the 'mid-Level Vision' section of the flowchart.
3. Fill in the rest of the flowchart using the following steps:
- Take a look at the lecture slides and provided literature below regarding human visual perception. Fill in the rest of the human cognitive vision system; specifically taking the input, visual perception proccesing steps and desired output in mind.

<img src="./assets/CognitiveVisionSystem.jpg" alt="CognitiveVisionSystem" width="900"/>
*Figure 1. Flowchart of a typical human cognitive vision system (de Souza Alves, T., de Oliveira, C. S., Sanin, C., & Szczerbicki, E.,2018).*

### Example of perceptual processing model: Edge detection
What is it used for: We depend on edge detection for tasks such as depth perception and detecting objects in our field of view.
What do we look out for:
- Discontinuities in depth.
- Discontinuities in surface orientation.
- Changes in material properties.
- Variations in scene illumination

<img src="./assets/EdgeDetection.jpeg" alt="Edge detection example" width="900"/>
*Figure 2. Edge Detection Example.*


Relevant literature and sources to research:
- [Summary of Concepts and Terms](https://github.com/BredaUniversityADSAI/ADS-AI/blob/260f3f788372cfb55e2a4ba2956800de1b3b14a8/docs/Study%20Content/Cognition%20Fundamentals/assets/Summary%20of%20Concepts%20and%20Terms.docx): Highly recommended read which summarizes most important concepts discussed in the literature below. It also contains various important model you can use to create cognitive systems; or systems to deal with information processing in general.
- [de Souza Alves, T., de Oliveira, C. S., Sanin, C., & Szczerbicki, E. (2018). From knowledge based vision systems to cognitive vision systems: a review. Procedia Computer Science, 126, 1855-1864.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/d2d99670e0bff928b8ba3115463b180458ed116c/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/From%20Knowledge%20based%20Vision%20Systems%20to%20Cognitive%20Vision%20Systems%20-%20A%20Review.pdf)
- [O’Reagan, J.K. (1992). Solving the “real” mysteries of visual perception: the world as an outside memory. Can J Psychol, 46(3):461-488.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/29bd304acfa39a1ae5c9aa8640a56cbbe9a18c1e/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/SOLVING%20THE%20REAL%20MYSTERIES%20OF%20VISUAL%20PERCEPTION.pdf)
- [Whitney, D. & Leib, A.Y. (2018). Ensemble perception. Annual Review of Psychology, 69:105-129.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/29bd304acfa39a1ae5c9aa8640a56cbbe9a18c1e/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/Ensemble%20perception.pdf)
- [Deroy, O., Spence, C., & Noppeney, U. (2016). Metacognition in multisensory perception. Trends in Cognitive Sciences, 20, 736-747.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/29bd304acfa39a1ae5c9aa8640a56cbbe9a18c1e/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/Metacognition%20in%20multisensory%20perception%20-%20Trends%20in%20Cognitive%20Sciences.pdf)

## Break Time!
From 12:30 till 13:30.

## Lecture - Cognition Fundamentals: Learning
Live lecture which is given on the 17th of November from 13:30 till 14:30. Take a look at your timetable to see where exactly the lecture takes place! If you can't wait, [here are the slides already](https://github.com/BredaUniversityADSAI/ADS-AI/blob/8a312a9350b35bad7ebbf135293d669582d8575d/docs/Study%20Content/Cognition%20Fundamentals/assets/lectures/Cognition%20Fundamentals%20-%20Learning.pptx) but after the lecture, there should be [a recording available here!](https://edubuas-my.sharepoint.com/:v:/g/personal/heijligers_b_buas_nl/EQKPvTuGA9ZBsMB_78Zmv-cBXjKDFAmFepFHFDopwN8nsQ?e=eFEMpe).

## Refreshers
If you are reviewing this material again or are looking for a different; maybe more entertaining, take then I highly recommend the following videos:

### Learning
<iframe width="560" height="315" src="https://www.youtube.com/embed/qG2SwE_6uVM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Memories
<iframe width="560" height="315" src="https://www.youtube.com/embed/bSycdIx-C48" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Information Retrieval and Deletion
<iframe width="560" height="315" src="https://www.youtube.com/embed/HVWbrNls-Kw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Tutorial - Cognition Fundamentals: Learning
Now, we are going to expand on our model of the human cognitive vision system by adding & connecting it with a cognitive model for human memory and reinforcement learning for our object detection task:
1. Take at your current flowchart and images. As a human you need to remember a whole range of things to recognize objects: the context, concept, movemement, spacial location and individual features of an object to name a few. Consider what you need to remember in order to do the bin-picking task as a human and write these down in your flowchart.
2. Take a look at figure 3 & 4 and your list of things to remember from step 1. Choose one of the two model displayed in figure 3 & 4 to integrate into your flowchart of the human cognitive vision system. After integrating the memory part, fill in the memory model you integrated using your list in step 1.
<img src="./assets/Memory.jpg" alt="Memory Cognitive Model Example 1" width="1100"/>
*Figure 3. The full human cognitive memory system.*
<img src="./assets/Memory2.png" alt="Memory Cognitive Model Example 2" width="800"/>
*Figure 4. A simplified human cognitive memory system.*

3. Now, that we have visualised how we perceive and memorize information about the world in our flowchart. We can start to integrate a model of reinforcement learning; take a look at figure 5 and integrate it in your flowchart. List the conditions/situations which give a positive or negative rewards to a human performing this task. In other words; describe when a human would correctly or incorrectly performs this task and what type of feedback they should receive in that given condition: negative or positive (don't concern yourself with weighting; implement the value function, here yet).
<img src="./assets/ReinforcementLearning.jpg" alt="Memory Cognitive Model Example 2" width="800"/>
*Figure 5. The most basic form of a reinforcement learning model.*


4. The final step is converting your model of human cognitive vision, memory and reinforcement learning to one with robots. You'll learn how to do this during the remainder of the block so you don't have to finish this today! However, make sure to keep this flowchart up-to-date so you have a clear oversight of the functionality of your robot; specifically considering how the processing steps (e.g. algorithms, if-else statememnts etc.) take the input (e.g. images, robot position of arm, pressure excerted by gripper etc.) and how these would result in the desired output.  


### Example of reinforcement learning model: 
What is it used for: We depend on reinforcement learning in order to avoid harming ourselves and others during physical tasks.
What do we look out for:
- Avoiding damage to our body; pain.
- No harming others; mental pain in the form of empathy and social exclusion.
- Awarenes of changing situation context; changes in weather which signify a storm.
- etc.

<img src="./assets/BurningHandStove.jpg" alt="Edge detection example" width="597"/>



Relevant literature to research:
### Books & Papers:
1. [Styles, E.A. (2005). Attention, Perception and Memory: An integrated Introduction. Psychology Press, Taylor & Francis.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/997b5108aa39c2ceded8eb9dd979c7333360e624/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/Attention,%20Perception%20and%20Memory%20-%20An%20integrated%20introduction.pdf)
2. [Oxenham, A.J. (2018). How we hear: The perception and neural coding of sound. Annual Review of Psychology, 69:27-50.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/29bd304acfa39a1ae5c9aa8640a56cbbe9a18c1e/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/How%20we%20hear%20-%20The%20perception%20and%20neural%20coding%20of%20sound.pdf)
3. [Deroy, O., Spence, C., & Noppeney, U. (2016). Metacognition in multisensory perception. Trends in Cognitive Sciences, 20, 736-747.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/29bd304acfa39a1ae5c9aa8640a56cbbe9a18c1e/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/Metacognition%20in%20multisensory%20perception%20-%20Trends%20in%20Cognitive%20Sciences.pdf)

11. [Joseph, S., Teki, S., Kumar, S., Husain, M., & Griffiths, T.D. (2016). Resource allocation models of auditory working memory. Brain Research, 1640: 183-192.](https://github.com/BredaUniversityADSAI/ADS-AI/blob/997b5108aa39c2ceded8eb9dd979c7333360e624/docs/Study%20Content/Cognition%20Fundamentals/assets/sources/Resource%20allocation%20models%20of%20auditory%20working%20memory.pdf)
