---
sort: 3
---

# Datalab: HCAI Fundamentals & User Testing 
If you followed along as planned, you have now finished the high-level design of your application. Before we go an do any more design work, it's smart and efficient to see how well what we have up untill now works. That's why we start today, after the stand-up, by reviewing your designs up untill now with your peers. After which, we'll conclude the morning with an introductory lecture to Human-Centered AI Fundamentals to expand on your design toolkit.

In the afternoon, we're going to design and test the core functionality component of our HCAI application, which is he part which actually contains the AI; the computer vision algorithm. We'll design and test that AI component of our application by doing an iterative Wizzard of Oz experiment, which will help us determine how the user should interact with and operate our AI component.

## Learning Objectives:
After this module, you'll be able to:
0. Understand and apply the fundamentals of HCAI;
1. Demo your prototype and collect feedback;
2. Create and operate a paper prototype;
3. Conduct a Wizzard of Oz Experiment;

Table of contents:
0. Stand-up: 0.5 hours
1. User-testing - Demo: 1 hour
2. Human-Centered AI Fundamentals & Applications **Lecture**: 1.5 hours
3. Wizzard of Oz Experiment Prototyping 3.5 hours
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
All products should include some form of user testing, whether they are digital or not, interactive or non-interactive: as a designer you generally know too much about the product and technology related to your own project. You cannot simply pretend you don't know these things; that's not how your brain works, and therefore we perform user tests to create a ecologically valid setup to test our designs!

The most basic form of testing your design is simply showing it to a 'user' and having them 'conceptually' interact with the application in a controlled manner: a demo. This can be a generic prototype where the user can interact with (e.g. let the user control your wireframe), or a more guided one; (usually non-interactive but you could accept user requests for example), where you are controlling the prototype instead of the participant.

**Open your Learning Log in MS teams and create a section called 'Product Demo - [DD-MM-YYYY]' in this week's slides. Create a bullet point list for logging all feedback points of your peers (name them)!** Log feedback regardless of your considerations, refuting the feedback comes at a later stage and should not be a filter while transscribing the feedback.

Form groups of (max) 3 classmates and run your classmates; or users, through your vertical slice. 

**As a user:** When you are assuming the role of the user, be sure to ask questions and give feedback. Especially, if anything isn't clear, intuitive, if you don't understand what is going on, or why something is done in a certain way. Any feedback or suggestions are welcome to a designer in this stage; even punching hole in a design, because this is the best design stage to adress those! 


**As a designer:** When you are assuming the role of the designer, explain to your users what will happen for each given condition and user story. Start by choosing an approach for your demo:
1. User-Controlled: Let your peers interact with your wireframe and note down what happens. Specifically, anything that seems important to you: things which work well and don't work as intended. The user should be able to navigate through the wireframe without explaination if possible, but if they have any questions you should answer them or help them if they're struggeling.
2. Designer-Controlled: Run you peer(s) through your wireframe yourself. Explain them along the way what will happen for each given condition and user story. Answer their questions and specifically focus on the intended user-journey (how you envision using the app from start to finish; for as far as you designed thus far).

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Collect any feedback they might have! This is the crucial part of user testing because you will need to know what might work and what might not work in order to iterate on your design: make the best possible application.
 </div>


## 2) Human-Centered AI Fundamentals & Applications
You can find [the slides here](https://github.com/BredaUniversityADSAI/ADS-AI/blob/cbea9fe9290a5512a2ed59137ff6791ec232ddcc/docs/Study%20Content/Human-Centered%20Artificial%20Intelligence/Assets/HCAI%20Fundamentals%20and%20Applications.pptx)!

A video recording of the lecture can be found in [here](https://edubuas-my.sharepoint.com/:v:/g/personal/heijligers_b_buas_nl/EdsDFEiIsuRHk5zJVi8brdYBf7hQ1M01kru37a_vkzMpSA?e=9J0DLW).

## 3) Wizzard of Oz Prototyping
For this design process we're going to combine two techniques runnign a Wizzard of Oz Experiment and Paper Prototying. By doing this we can very quickly design and test the core functionality of our application and make changes where needed.

### A. Wizzard of Oz Experiments
Watch the following video first!

<iframe width="560" height="315" src="https://www.youtube.com/embed/NZR64EF3OpA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

So basically, Dorothy and her friends go to see the Great and Powerful Wizard of Oz, and find out that he’s a fraud with no real magic. He's prentending to be a wizzard using all kinds of tricks to simulate what an actual wizzard could do. That's what we're going to do; simulate what the actual AI behind our computer vision algorithm would do.

When using the Wizard of Oz prototyping method, we try to create the illusion of a functional product, to allow for testing before producing the final version. This way, we can test the interaction before investing the time and money to truly make it functional.

With respect to AI this is especially useful because a big challenge with machine learning systems is prototyping. If the whole value of your product is that it uses unique user data to tailor an experience to them, you can’t just prototype that up real quick and have it feel anywhere near authentic. Also, if you wait to have a fully built ML system in place to test the design, it will likely be too late to change it in any meaningful way after testing.

Essentially, Wizard of Oz studies have participants interact with what they 'believe' or pretend to be an autonomous system, but which is actually being controlled by a human (usually a teammate). Having a teammate or script imitate an ML system’s actions like chat responses, suggesting people the participant should call, or movies suggestions can simulate interacting with an “intelligent” system. These interactions are essential to guiding the design because when participants can earnestly engage with what they perceive to be an AI, they will naturally tend to form a mental model of the system and adjust their behavior according to those models. Observing their adaptations and second-order interactions with the system are hugely valuable to informing its design.

So, let's start coming up with our own Wizzard of Oz experiment!

A Wizzard of Oz experiment consists of 3 components:
1. A script; which defines the user-journey. What does the user want to achieve and how is he going to get there?
2. A wizzard; who is going to respond to the user input and simulate AI algorithm by simulating the desired AI output. 
3. An test-user; who is going to pretend to be the end-user and is unaware of the contents of experiment. The test user will provide user-input based on the script provided to them which define their desired user-journey.

**Open your Block C Notes - Y1C_2022-23_ADSAI**, create a header called "Wizzard of Oz Script" followed by a numeric list, and create your user-journey from start to finish. Take your user-stories into account, base your user stories on them. Start with the initial impetous to use the app (e.g. I see a beer I want to buy) and walk the user through (e.g. opens the app, opens computer vision screen, etc.) to the very end (closes app and buys the beer).


## 4) Paper Prototyping
[Here's a quick example walkthrough of how to create a Wizzard of Ozz (Paper) Prototype!](https://drive.google.com/file/d/15LwN3SESX8vcoFop4BmlxTsyRyNluuzq/view?usp=sharing)



**Open your Block C Notes - Y1C_2022-23_ADSAI and create a section called 'Wizzard of Ozz Prototype' and complete the following excercises:**
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
