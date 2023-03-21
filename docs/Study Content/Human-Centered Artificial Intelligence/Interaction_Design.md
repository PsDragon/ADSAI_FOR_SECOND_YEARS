---
sort: 2
---

# Interaction Design

For this module we are going to explore the fundamentals of user interaction and experience design. We're going to start by setting up our project in proto.io; this is the software we're going to use to build our wireframe prototype! Then we're going to define user stories which is vital to define the main features of our application. Our main features are what give our application its unique value: which should revolve around your AI algorithm. Than, we're going to learn about interaction design, after which we're going to work on our vertical slice based on our user stories and interaction design knowledge! After that, we're going to get hand-on with our knowledge and start building our wireframe prototype in proto.io! 

## Learning Objectives:
After this module, you'll gain a basic understanding and learn how to:
1. Defining user stories;
2. Design for user interaction;
3. Design a appropriate user experience;
4. Prototype a vertical slice.
5. Create a wireframe prototyping for an HCAI application;


Table of contents:
1. Introduction to wireframe prototyping using Proto.io: 1.5 hour
2. Defining User Stories: 1 hour
3. Interaction Design & User Experience Design: 4 hours
3. Prototyping a vertical slice: 2 hours

**Now, open your worklog and plan the different tasks for today in there!**

## Questions?

If you have questions or issues regarding the course material, please post a message on the 'Q&A' channel in Teams. The channel will be monitored by mentors but also please help your peers if you have the answer to their question. 

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Note down any important HCAI related questions you might have! You can ask them during Datalab in person to the responsible lecturer for this module: Bram Heijligers
 </div>

Good luck!


## 1) Introduction to wireframe prototyping using Proto.io
[Look at the intro video of Proto.io](https://support.proto.io/hc/en-us/articles/220425988-Introduction-to-Proto-io-6), create a [user account](https://proto.io/en/signup/) and install the latest version of the software: Proto.io 6! Use the free trail using you student email account.

Then watch the following videos and follow the instructions to get to know how to use the Proto.io application! Pause the video whenever you know how to create one of the 3 requirements below in Proto.io. It's really quite intuitive; as is to be expected of a design application! For now we are just going to create:
1. a basic start screen with some button to continue to the main menu;
2. a main menu screen with a button to exit the application and a button to lead to our computer vision application (empty panel);
3. an empty panel for the computer vision application which leads back to the main menu.

<iframe src="https://player.vimeo.com/video/180154545?h=160768ae29" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/180154545">Proto.io Essentials, Episode 1</a> from <a href="https://vimeo.com/protoio">Proto.io</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

<iframe src="https://player.vimeo.com/video/180284484?h=e40946b73a" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/180284484">Proto.io Essentials, Episode 2</a> from <a href="https://vimeo.com/protoio">Proto.io</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

<iframe src="https://player.vimeo.com/video/180290210?h=1268c31048" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/180290210">Proto.io Essentials, Episode 3</a> from <a href="https://vimeo.com/protoio">Proto.io</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

**Save your Wireframe Prototype to Github, name it 'HCAI_Wireframe_[NameOfApplication]_[StudentName]' and note what your did; and your evidence, in your work- and learning log**

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
No finished? Don't worry, we are going to continue working on this tomorrow!
 </div>



## 2) Defining User Stories
Now that we have come to grips with creating a wireframe prototype using Proto.io, we're going to continue with understanding what makes up good user interaction. Good user interaction start by enabling easy and efficient use of the core functionality of an application. In our case, the core functionality of our app will revolve around the computer vision algorithm at the center of our application. Prototyping this core functionality is conventionally done by creating a vertical slice; an interactable prototype which has the full low-level design implemented. Currently, we created the high-level design of our app, so let's start building the low-level design!

To create our vertical slice, we first need to define what the user can actually do using this core functionality; which is typically referred to as user stories. So to define what would make up our vertical slice we first need to define **user stories**. Then we can use our user stories and interaction design knowledge to build a wireframe prototype using proto.io! A vertical slice is essentially the core of your application prototyped/build and only that. For you, that means that you design the interaction around how you are going to use the deep learning algorithm; the core functionality which is going to do the computer vision magic.

The following video will explain the concept of  vertical slice in more detail in more detail!
<iframe src="https://edubuas-my.sharepoint.com/personal/heijligers_b_buas_nl/_layouts/15/embed.aspx?UniqueId=84e01d03-f5b2-416f-a25c-ba9ae31af88c&embed=%7B%22ust%22%3Atrue%2C%22hv%22%3A%22CopyEmbedCode%22%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create" width="640" height="360" frameborder="0" scrolling="no" allowfullscreen title="Meeting with Heijligers, Bram-20230321_205953-Meeting Recording.mp4"></iframe>

So, we already made the computer vision algorithm which contains our core functionality and we've gathered our dataset which represents our Proof-of-Concept (PoC). Ofcourse, doing the programming; turning our Juypter notebook into .py scripts and integrating them in an API, to actually create the real application is something outside the scope of this project (that'll come next block). However, the UI and UX is something we can design, prototype and test already for our envisoned application. That way we can detect early design flaws and change them before we would actually start building the full application. So, to start designing the UX; and UI, we need to know what the user needs and wants to do, so let's **learn to define user-stories by watching the video below:**

<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/software-design-developing-effective-requirements/user-stories?autoplay=false&claim=AQEdMXouytUZwgAAAX2AJ9-QmZzRCVyggq0_gN4OsER1UeDvyb5vFXysEBbnj6yt4EIp7yyj-OKCujqvYam9qXfkZQ-mElXZwAN8um3FRffnKPRW07gamB8f41ZYCfz4tfHrepnMK2V_w0JA8gjvBfYeqnbzM7SabbIV_vAM6qYV2hS4AwSyMoA8CuXJGvSd8G-nwe0tigTADllj-jyPOtf7WqWeeg9dt5Jkt0OSiZ8Ue9T_yQ-iDzGKZArn1o9vNPTnNYYPzvgHxWtMe1FnF7LZ6dz9eqBmEqf8O4lYLMFKJOAB8PBLgty5DqH03DNikHgNo5jmw2Um_VV6D8E-fpgEn9McdPm9Pg-xm3XYqw_kje8Wz7SWgoxOU1hL3NLUsCcwsLm1e_diDmqNTPPI265PXEVNvRX_dTloFPVszs6-CdScGS0kzNtdrQsdSkQKNU8hhnkxJa30PjqxUuht1Ea2bti3ToKoz-5xxX_HScFTcqZ0m0t-yXY4smGcUEiUg24iPvfuTWajxdAesd7VYPJb5KrHG3TiLbXBvkU9tq4yXPz5qobW1LDUvIfuyViPNSolyI6OwHDhp3nLVTFfY63K6uoGPeGevNt3CV47mgeYVetj0vaHOKJuJWrqBlYyt9ypazXKiWUd7kMy6cm6fH1juEvADa5ouLzsw62LIurCJ44obFtVwrnjn2pciMq3hvQd_miKrlS7j9Fk6WPUmlPXAk19AJYyhHJTzFez52syx_xa_hM&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BrPd%2FRTAHQxifYD2luO6XRA%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/software-design-developing-effective-requirements/user-stories?trk=embed_lil">User-stories</a></strong> from <strong><a href="https://www.linkedin.com/learning/software-design-developing-effective-requirements?trk=embed_lil">Software Design: Developing Effective Requirements</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/neelam-dwivedi?trk=embed_lil">Neelam Dwivedi</a></strong></p>

So, say I have a beer label scanning algorithm, then I just want to prototype the screen where the user could scan the beer bottle and use the core functionality. On this screen he could see information on the beer, but what information would he want to see? What does he want to do with the information? Make a decision of what beer to buy or maybe I want to pair food with it...

My user might be able to click on a pop-up which automatically googles that specific beer or presents him a suggestion of some alternative retrieved from a online library of beers so the user can make more informed purchase. Or I can save the beer, and add to my library of beers I consumed; with that I may be able to attach a review to that saved beer containing a score, a description and a taste profile. With that taste profile I might also recommend new beers based on the consumed beers and the taste profile I described. That app could compare that to online library of beers and the information stored there by other users. If that is my core functionality, every time I scan a beer, those interaction options will pop-up.
So, as a user I:
- can scan beer bottle labels;
- can save the label;
- can review the beer *by assigning a score, description and taste profile*;
- can see simillar/suggested beers based on my taste profile and purchase history.

## Datalab Preparation 3: Defining User Stories

Now, **open your Block C Notes - Y1C_2022-23_ADSAI document, create a section called 'User Stories' and start creating your own user stories.** Use bullet points to list the user stories. In the upcoming datalab, we're going to demonstrate our vertical slice prototype to our classmates and gather feedback! So make sure to have finished your user stories before the end of the day so you can do some user tests (peer reviews in this case) in the upcoming datalab!


## 3) Interaction Design
Interaction is all about change: by exchanging information in the form of data (or energy) we're creating some kind of new state in the world. As a user can for example gain new information from my phone in the form of data by vision, sound or vibrations; this new information makes the user aware of something. This new information changes the internal state of the user (e.g "if my phone vibrate I got a notification"). Or I can exchange information in the form of energy by kicking a football and which after my interaction will interact with the environment and change it ("if the football is kicked with force X and in direction Y, then it'll land somewhere in place Z"). What it essentially comes down to when you are designing for interaction is that you create some kind of change which the user can anticipate and understand without thinking; the user can (roughly) predict the outcome. In other words: design should be intuitive.

Like doors, they are great when they are intuitive. Like the door of our classroom. But some doors, they just don't make sense and are very frustrating...
<iframe width="560" height="315" src="https://www.youtube.com/embed/yY96hTb8WgI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## Datalab Preparation 4: Interaction Design

It's a fun and easy to understand example, but we're not designing doors ofcourse. So let's learn more techniques on how to design intuitively; how to make interaction predictable for the user. **Do the full LinkedIn Learning course on UX Foundations: Interaction Design and save the certificate to your github and evidence it in your learning- and worklog**. Some techniques might be useful for you vertical slice, some might not be. Whenever you come across a technique which seems valuable to your application, pause the course and try it out in Proto.io!

<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/ux-foundations-interaction-design/interaction-design?autoplay=false&claim=AQFXfCOdK-DqygAAAX13SMnrIbtlP40aB2L5v2J5DIX0g-9K4jxFb0d_jDDJcoBtyVj3WQvEHcP7ajKiACfMqOX0BCyV-KG-aCMT4RP8ekNyVF8IUE1KLtXmz_ABOGhgMcCnlRFDEFYUUU3lrPaBU6WBW2uqBoDVreJInJ1Jz0HxSK8qG1M7ZJB1caQWU_1rOUA-Ap2G5tyH7KwITYIIce-5YF6v74GGzc3kTQ9VOqXJqCegzrSNxbzu_RtzcbOZ4DH8ebnbLY7oVNFNj7zsDBO7tzTftGDuYVzeXViFZGSnBh1ubMhN876ePTqJIUochyAU67JuXL8c8DkfkutEVcg-KUXDT6i3QmWxDBXVeGJK0DcMISEI2nPNWA5jvjgWab1RceXBcJoC4x04sc51thnxVLjcrQaeuMIH1paJ4qR59f90DO9qKfNHa6AXv4ioF-HM3CXntFELYtBwedyXMRxh_vd-4ROkrN4vwU5tqgc6XmWExsDrnKDbpiHf9O0viSbRsiVe06EXd7ZDajQXmM4_4xwG8sUjZL52P0-J661wVYbixznrQhpLchvFQqttXxgyrVNDEQdBTARKtcU5yu0ZaiQzv6A8sxKECFthC-_6R5omN-XctSjyuvKlFwSRJPjT5XdmcEpdqvT3yP2RJS352xpIKKHHe3imwQl4xsBUhB6LyR8xcU0av1ovN2vwgESh2gAWYWcda06DcdTCattEnSdjHgddqGPy1LjpMNBPrqsJ&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BCQ3PTXWySOeGlu7Tsl%2F0fg%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/ux-foundations-interaction-design/interaction-design?trk=embed_lil">Interaction design</a></strong> from <strong><a href="https://www.linkedin.com/learning/ux-foundations-interaction-design?trk=embed_lil">UX Foundations: Interaction Design</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/david-hogue?trk=embed_lil">David Hogue</a></strong></p>


**Did you do the full course already? Make sure to get the certificate an upload it to GitHub and evidence it in both your worklog and learning log!**

## 4) Datalab Preparation 5: Create a vertical slice in Proto.io
Now, use the skills you learned so far to create a vertical slice of the specific screens where your computer vision algorithm is actively used in Proto.io.

So for the beer bottle scanner app, this would just be the camera and what the user can do there; which user stories are connected to using that feature? I 'll probably have multiple screens if I can do multiple things with my core functionality or when my core functionality is realized in multiple steps; say a search query.

Make sure to finish your vertical slice today! 

**Save your Wireframe Prototype to Github by exporting is a .zip file, name it 'HCAI_Wireframe_[NameOfApplication]_[StudentName]' (if you didn't do so already) and note what your did in your work- and learning log; and link your .zip file as evidence.**

## Datalab Preparation Checklist:
[] Datalab Preparation 1: High-level Design
[] Datalab Preparation Part 2: High-Level Design for HCAI Applications
[] Datalab Preparation 3: Defining User Stories
[] Datalab Preparation 4: Interaction Design
[] Datalab Preparation 5: Create a vertical slice in Proto.io

## Next up!
Coming Datalab, we are going to test your vertical slice 2 user-test: a demo in the form of a peer-review and Wizzard of Oz Prototyping. We are also going to learn more on what sets HCAI apart from regular human-computer interaction!


# Resources
## Recommend Literature:
−	[Interaction Design: beyond human-computer interaction](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=cat01829a&AN=buas.303541695&site=eds-live)   
−	[UX Fundamentals for Non-UX Professionals : User Experience Principles for Managers, Writers, Designers, and Developers](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=edsebk&AN=1892077&site=eds-live)

## Further Reading:
−	[Designing with Data](http://shop.oreilly.com/product/0636920026228.do)
−	[The Design of Everyday Things, Donald A. Norman](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=cat01829a&AN=buas.393706974&site=eds-live)
