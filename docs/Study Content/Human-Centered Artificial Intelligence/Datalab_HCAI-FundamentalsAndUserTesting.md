---
sort: 3
---

# Datalab: HCAI Fundamentals & User Testing 
Up untill now, you essentially started making the high-level design of your application. Today, we start by reviewing your design with your peers. After which, we'll conclude the morning with an introductory lecture to Human-Centered AI Fundamentals.

In the afternoon, we're going to design and test the core functionality component of our HCAI application, which the part which actually contains the AI; the computer vision algorithm. We'll design and test that AI component of our application by doing an iterative Wizzard of Oz experiment!

## Learning Objectives:
After this module, you'll be able to run and conduct:
1. Demo you prototype and collect feedback;
2. Conduct a Wizzard of Oz user test;

Table of contents:
0. Stand-up: 0.5 hours
1. User-testing - Demo: 1 hour
2. Human-Centered AI Fundamentals & Applications **Lecture**: 1.5 hours
3. Wizzard of Oz Experiment: 3.5 hours
4. In-Class Discussion: 0.5 hours


## Questions?

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
If you have questions or issues regarding the course material, please first ask a peer. Otherwise, ask your mentor or the responsible lecturer for the module: Bram Heijligers
 </div>

Good luck!

## 0) Stand-up
We start by hosting a stand-up. Form groups of ~ 5 and run on-another through the following points:
- What progress have you made up since last datalab?
- What progress do you anticipate to make today?
- What impediments are you facing or expecting?
- With what could you use help or support?

**Open your worklog and plan your day informed by the stand-up and today's schedule**

## 1) User testing: Product Demo
All products should include some form of user testing, whether they are digital or not, interactive or non-interactive: as a designer you generally know too much about the product and technology relating to your own project. You cannot simply pretend you don't know these things; that's not how your brain works, and therefore we perform user tests to create a ecologically valid setup to test our designs!

The most basic form of testing your design is simply showing it to a participant and having them 'conceptually' interact with the application in a controlled manner: a Demo. This can be a generic prototype where the user can interact with (e.g. let the user control your wireframe), or a more guided one; (usually non-interactive but you could accept user requests for example), where you are controlling the prototype instead of the participant.

**Open your Learning Log in MS teams and create a section called 'Product Demo - [DD-MM-YYYY]' in this week's slides. Create a bullet point list for logging all feedback points of your peers (name them)!** Log feedback regardless of your considerations, refuting the feedback comes at a later stage and should not be a filter while transscribing the feedback.

Run 3 classmates through your vertical slice. Explain them along the way what will happen for each given condition and user story. Start by choosing an approach for your demo:
1. User-Controlled: Let your peers interact with your wireframe and note down what happens. Specifically, anything that seems important to you: things which work well and don't work as intended. The user should be able to navigate through the wireframe without explaination if possible, but if they have any questions you should answer them or help them if they're struggeling.
2. Designer-Controlled: Run you peer(s) through your wireframe yourself. Explain them along the way what will happen for each given condition and user story. Answer their questions and specifically focus on the intended user-journey (how you envision using the app from start to finish; for as far as you designed thus far).

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Collect any feedback they might have! This is the crucial part of user testing because you will need to know what might work and what might not work in order to iterate on your design: make the best possible application.
 </div>


## 2) Human-Centered AI Fundamentals & Applications
You can find [the slides here](https://github.com/BredaUniversityADSAI/ADS-AI/blob/cbea9fe9290a5512a2ed59137ff6791ec232ddcc/docs/Study%20Content/Human-Centered%20Artificial%20Intelligence/Assets/HCAI%20Fundamentals%20and%20Applications.pptx)!

A video recording of the lecture can be found in [here](https://edubuas-my.sharepoint.com/:v:/g/personal/heijligers_b_buas_nl/EdsDFEiIsuRHk5zJVi8brdYBf7hQ1M01kru37a_vkzMpSA?e=9J0DLW).

## 3) Wizzard of Oz Prototyping
Watch the following video first!

<iframe width="560" height="315" src="https://www.youtube.com/embed/NZR64EF3OpA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
Bla
https://pair.withgoogle.com/guidebook/workshop

So basically, Dorothy and her friends go to see the Great and Powerful Wizard of Oz, and find out that he’s a fraud with no real magic. When using the Wizard of Oz prototyping method, we try to create the illusion of a functional product, to allow for testing before producing the final version. This way, we can test the interaction before investing the time and money to truly make it functional.
With respect to AI this is especially useful because a big challenge with machine learning systems is prototyping. If the whole value of your product is that it uses unique user data to tailor an experience to her, you can’t just prototype that up real quick and have it feel anywhere near authentic. Also, if you wait to have a fully built ML system in place to test the design, it will likely be too late to change it in any meaningful way after testing.

Essentially, Wizard of Oz studies have participants interact with what they 'believe' to be an autonomous system, but which is actually being controlled by a human (usually a teammate). Having a teammate imitate an ML system’s actions like chat responses, suggesting people the participant should call, or movies suggestions can simulate interacting with an “intelligent” system. These interactions are essential to guiding the design because when participants can earnestly engage with what they perceive to be an AI, they will naturally tend to form a mental model of the system and adjust their behavior according to those models. Observing their adaptations and second-order interactions with the system are hugely valuable to informing its design.

So, let's start coming up with our own Wizzard of Oz experiment!

[Here's a quick example walkthrough of how to create a Wizzard of Ozz (Paper) Prototype!](https://drive.google.com/file/d/15LwN3SESX8vcoFop4BmlxTsyRyNluuzq/view?usp=sharing)

**Open your HCAI design document and create a section called 'Wizzard of Ozz Experiment'**

1. Conceptualize the test using your user stories and knowning the functionality of your algorithm.
2. Create the necessary images, videos, animations and elements to do the test. *(if you need to print materials, just ask the lecturers)*
2. Run the test and observe the user’s actions while making the system react to those actions by triggering the different responses the system should give at that moment in the interaction. It's best if the 'Wizzard' hides from view but that's not always possible.
4. Take notes of what works and what does not work while doing the test.
5. Ask participants about their impression of the system and the design. Take notes.
6. Make sure to repeat the above steps at least once with your mentor; who should record their feedback in your learning- and work-log.

**Save your HCAI design document to Github and note what your did; and your evidence, in your work- and learning-log**


Note: A Wizzard of Ozz Prototype can be executed in a variety of ways, this time we chose to do [Paper Prototyping](https://en.wikipedia.org/wiki/Paper_prototyping) because it's most accesible and rapid way to prototype a design.


## 4) In-Class Discussion
At 14:30, there's a meeting you're encouraged to take part in to ask questions and to discuss our progress and reflect on today activities.


## 5) Work on Creative brief
Implement your findings in your wireframe prototype!

## Up Next!
Next week, we will continue building our Interface Design skills and work on our wireframe prototype! 

Tomorrow, we will first continue to expand our knowledge by applying it a subfield: interface design and flow! We will also continue to further work out our vertical slice tomorrow!

## Recommend Literature:
- [Human-Centered Artificial Intelligence: Wizzard of Oz Prototyping Blog](https://medium.com/google-design/human-centered-machine-learning-a770d10562cd)
- [Conventional: Wizzard of Oz Prototyping Blog](https://blog.prototypr.io/wizard-of-oz-prototyping-process-blog-a20ffce8886)
−	[Interaction Design: beyond human-computer interaction](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=cat01829a&AN=buas.303541695&site=eds-live)   
−	[UX Fundamentals for Non-UX Professionals : User Experience Principles for Managers, Writers, Designers, and Developers](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=edsebk&AN=1892077&site=eds-live)

## Further Reading:
−	[Designing with Data](http://shop.oreilly.com/product/0636920026228.do)
−	[The Design of Everyday Things, Donald A. Norman](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=cat01829a&AN=buas.393706974&site=eds-live)
