---
sort: 1
---

# Information Processing Fundamentals & Concept Design
The current era is often referred to as the "Information Age" or "Digital Age," characterized by the rapid development and widespread use of information and communication technologies (ICTs) such as computers, the internet, and mobile devices. In this age, information is the most valuable resource, and once could argue that data has become the currency of the world. 

With the proliferation of ICTs, people can access and share information from anywhere in the world in real-time. This has led to an explosion of information, with more data being created and exchanged every day than ever before. This development has transformed the way we live, work, and communicate, and will continue to shape our society in the years to come, bringing about fundamental changes such as:
- The rise of the knowledge economy: The most successful companies today are those that can effectively leverage information and technology to create new products and services; e.g. Google and OpenAI.
- Increased connectivity: The internet has made it possible for people to connect with others around the world instantaneously, facilitating communication and collaboration; e.g. e-mail, whatsapp, videocalling and Microsoft Teams.
- The democratization of information: With the internet, anyone can create and share information, leading to a more open and democratic society; e.g. forums, threads, youtube explainers.
- New forms of media: The rise of social media has given rise to new forms of media, allowing people to create and share content in new and innovative ways; e.g. Instagram, Facebook and LinkedIn.
- Privacy concerns: With so much personal data being shared online, privacy has become a major concern, leading to new laws and regulations to protect people's personal information; e.g. TikTok, NSA whistle Blowing and the EU's General Data Protection Regulation (GDPR).

In this module, we're going to examine how humans consume, process and interact with this new wealth of information; and how we can help humans to process and utilize it in the most efficient way possible. Therefore, we start our dive into Human-Centered Artificial Intelligence (HCAI) with a general introduction to information processing and interaction design. How do people interact with information, and why do people interact with information in the first place? 

After the kick-off, we're going to look into a couple of design techniques, after which we'll apply them to our project in preparation for the upcoming datalab. After being introduced to the fundamentals, you'll be introduced to HCAI by UX experts from Google. Then, we're going to use our new insights to make our high-level design more attuned to integrated machine/deep learning algorithms.

## Learning Objectives:
After this module, you'll:
1. Understand why people interact with information as individual: Extended Mind Hypothesis;
2. Understand why people interact with interconnect information: Network-Enabled Cognition Hypothesis;
3. Know and Apply Design Thinking;
4. Basic Human-Centered AI principles;
5. Creating a high-level designs for HCAI applications.

Table of contents:
0. Kick-off: 1 hour
1. Interaction and Information Processing Fundamentals: 0.5 hours
2. Design Techniques:  1.5 hours
3. Datalab Preparation 1 - High-level design: 2 hours
3. Introduction to Human-Centered Artificial Intelligence **Lecture**: 0.75 hours
4. Datalab Preparation 2: High-Level Design for HCAI Applications: 1 hour

**Now, open your worklog and plan the different tasks for today in there!**

## Questions?

If you have questions or issues regarding the course material, please post a message on the 'Q&A' channel in Teams. The channel will be monitored by mentors but also please help your peers if you have the answer to their question. 

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Note down any important HCAI related questions you might have! You can ask them during Datalab in person to the responsible lecturer for this module: Bram Heijligers
 </div>

Good luck!


## 0) Kick-off
The kick-off has been scheduled in your agenda but you can also attend by [clicking this link](). The kick-off outlines what this module is about, how we will learn about HCAI and how we will assess your final deliverable: a wireframe prototype!

Want to see the slides? [Click this link!](./Assets/HCAI Kick-off.pptx)

Missed the kick-off? Watch it back over here:
<iframe src="https://edubuas-my.sharepoint.com/personal/heijligers_b_buas_nl/_layouts/15/embed.aspx?UniqueId=686add29-3750-4ef1-99d4-fde0debeefb8&embed=%7B%22ust%22%3Atrue%2C%22hv%22%3A%22CopyEmbedCode%22%7D&referrer=StreamWebApp&referrerScenario=EmbedDialog.Create" width="640" height="360" frameborder="0" scrolling="no" allowfullscreen title="Human-Centered Artificial Intelligence_ Kick-Off-20230327_100223-Meeting Recording.mp4"></iframe>

Note that you need to log into the BUas SSO (Single Sign-On) to view the video; e.g. log into your student portal. If you are signed in and it still doesn't work, contact Bram Heijligers using the Q&A channel. If that still doesn't work, [please click here](https://edubuas-my.sharepoint.com/:v:/g/personal/heijligers_b_buas_nl/ESndamhQN_FOmdT94N6-77gBVJSU0_1rnqVFxUNaAjXBsg).



## 1) Introduction to Interaction and Information Processing Fundamentals
To figure out how data-driven applications for humans work, especially AI operated ones, we first require a deeper understanding of what it means for humans to interact and process information in the first place. So, how do humans interact with the world, and how do they process information? The following video explains how information processing works with regard to our physical and online environment; it's a continuous process. Information isn't created or processed simply in one place, it is a result of the interaction between multiple entities; these can be human, objects or phenomena interacting with one another. That's what the theory of the Extended Mind and Network Enabled Cognition is about! Let's dive into it and explore the context of interacting with information!


<iframe width="560" height="315" src="https://www.youtube.com/embed/rSngHyD44OY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Want to know more? [Read the following paper about these concepts!](https://eprints.soton.ac.uk/266649/1/Network-Enabled_Cognitionv17.pdf)

## 2) Design Techniques
What is design? Essentially, designing is simply conceptualizing a method to solve a given problem. This problem can be abstract and not clearly defined; artists or craftsmen usually want to create something and don't clearly define a problem: an integrative approach. It can also be more structured, where a designer clearly defines a problem and the requirements for solving that problem: a systematic approach.

We're going to follow the systematic method since we're working with structured data, models, ethics and regulations: if we just just YOLO our way through there's a high change we'll make something which might not work, and is responsible, fair or explainable. That approach will cost us a lot of time, iteration cycles, backtracking, changing mistakes and with that frustration (e.g. bugs and misspecified models). Frustration can lead to project development or teams breaking down over time which is what you want to avoid.

That doesn't mean that there are no integrative parts in the design of HCAI applications! Design is, by nature, integrative since you are connecting the dots between concepts to create new solutions. Therefore, we are going to apply a systematic framework wherein we have room for integrative design and some freedom to plan and do what we feel is suitable for the project.


### Design thinking
[Design thinking](https://en.wikipedia.org/wiki/Design_thinking) is essentially a structured approach for defining and solving a problem while keeping the requirements to solve the problem in mind. A lot of people who use it enjoy giving it fancy terms and using all kinds of buzzwords, like this definition of Wikipedia uses:

"Design thinking is a term used to represent a set of cognitive, strategic and practical processes by which design concepts (proposals for products, buildings, machines, communications, etc.) are developed. Many of the key concepts and aspects of design thinking have been identified through studies, across different design domains, of design cognition and design activity in both laboratory and natural contexts."

It's an effective method, but essentially it's all about defining a problem and solution; some people didn't re-invented the wheel but a taxonomy to order design processes. These processes and terms are helpful for collaboration, research, and client communication, but actually practising it in the field becomes more integrative, maybe because we're humans and not computers. Frameworks like design thinking help us to design and collaboratively. It gives us a sense of direction, control and progress; and ensures we keep making whatever it is we're making. This is especially important when working in a team or involving stakeholders who require insight into the project's progress in order to trust you. Furthermore, structured and systematic design approaches resulted in great accumulation of design techniques that are tried and tested which you can now use for yourself!

**Now, do the full Linkedin Learning course below and save the certificate to your GitHub and evidence it in your learning- and worklog**

<div style="position:relative;height:0;padding-bottom:56.25%"><iframe width="640" height="360" src="https://www.linkedin.com/learning/embed/design-thinking-understanding-the-process/what-is-design-thinking?autoplay=false&claim=AQHBqI6Ru-c5QgAAAX13Rcd4oz4KN05gDHN-QbE-JsFOE-CGXZo2TOH15NV2f2maZIMtQIaXtBSWagy53d-DgqJqB4_UrhrvlFxzN7wIXLdse9a8NelAxJj8vDwYT_jqaegztNRhYUyTvy1CYf8Yq8EsM-fu0tg8EqRWEp1ThXGZOoISVLCz40OEN2QqvnLSJxxGwTJe8atPxAvb_FQJjd6QeJbh9PSZwlSI-bQ0ENJhUrKExQsELVpyzCDMVmPPtQjGqtyxWWIlxTA_4tL11uS2ZkqU3fQqDRy8ZiMdu5JTOcUjNVQpHDquImzUB0YSdw1N0RR_PcBg2Nb6Vl9Im3L0mSppvXFcr036b83VY3pD7YkWQj9PqJnxWeLNEPP5Wm0Hs7QC7XI08YRex2VCRQHvXX4yz3ASz5mWNkKjomJ7fCHNDxwfoOkQmBvX4pi63qC3McwVykElVqqkaKWU4wY5CVKS_0X97mmwSMqPOCPCcfMDtWthZadi1c-qdGuNWtK0gA2QgrKjh_u5uIFOhorVj9RRR42q2HEVgUDRpKUTd6oybmDP313kKFQkJoyxRq4wdMcJz-mp0B0QwVTtJ15iKkk_VAkEVZad1D70LIJjHBav1DMViuKCp5Uy5xUf8yKYrekTrXxcREJ_jN3wHfh1gxRju27okvwMG17MYKdyQOVZiUopFUGDsY7IIaRCaAa1Ad8NFY3oQLwB1jyYCAtrB4xfDQM51-umibB5Ccnd3VwQcGk&lipi=urn%3Ali%3Apage%3Ad_learning_content%3BvY7ghlL5QD%2B%2FW0K%2ByWcTbg%3D%3D&licu" mozallowfullscreen="true" webkitallowfullscreen="true" allowfullscreen="true" frameborder="0" style="position:absolute;width:100%;height:100%;left:0"></iframe></div><p><strong><a href="https://www.linkedin.com/learning/design-thinking-understanding-the-process/what-is-design-thinking?trk=embed_lil">What is design thinking?</a></strong> from <strong><a href="https://www.linkedin.com/learning/design-thinking-understanding-the-process?trk=embed_lil">Design Thinking: Understanding the Process</a></strong> by <strong><a href="https://www.linkedin.com/learning/instructors/chris-nodder?trk=embed_lil">Chris Nodder</a></strong></p>

**Did you do the full course already? Make sure to get the certificate an upload it to GitHub and evidence it in both your worklog and learning log! Consider putting it up as part of your LinkedIn profile if you have it. It's a nice edge to have on there!**

### Divergent - Convergent Processes
Let's zoom in on this process again, let's specifically use this model to define an array of solutions and select one. That way we can present and discuss our design solutions with our peers in datalab tomorrow (or clients/colleagues) and potentially iterate, or improve, on it further.

Watch the videos below and then make the exercises!

<iframe width="560" height="315" src="https://www.youtube.com/embed/xjE2RV6IQzo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/cmBf1fBRXms" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## 3) Datalab Preparation 1: High-level Design
When we're designing, it usefull to take serveral approach to our process; you can see them as lenses with which you can view your problem and solution. Use you newly gained knowledge and skills on design thinking to do the excercises below to create your high-level design.

0. Open the **Block C Notes - Y1C_2022-23_ADSAI** document attached to your Microsoft Teams Assignment and start by creating a section called 'Design Fridge' at the bottom of your document. Remember that we are making a high-level design: if you write too much down, you'll loose oversight. If you think of specific or details you feel are important, note them down in the 'Design Fridge' of your document for later integration. These specifics or details will usually be part of your low-level design, so we want to save them in our Design Fridge.

Let's really start working on the High-Level Design! Try to be concrete, concise and clear. Remember that you have to orally present and discuss your designs in the upcoming Datalab (to a peer) and in the final presentation in week 9! Testing and getting feedback on your design is crucial to get a robust design! 

In the **Block C Notes - Y1C_2022-23_ADSAI** document, complete the following datalab preparation excercises:

1. **What are we going to solve?**
- A) **Define your problem!** What problem does your algorithm solve? Clearly [define your problem statement](https://adsai.buas.nl/Study%20Content/DataScience/Problem%20Statements%20and%20Research%20Questions.html#1-forming-a-problem-statement) in max 100 words! Take a look at your AI-Canvas (in your Project Proposal Template), what you have written down there will probably already suffice! You want you problem statement to be as concise and clear as possible!
- B) **Define your requirements!**
Take a look at your Project Proposal Template; specifically the AI-Canvas (fill-it in now if you haven't done so yet), and define the requirements. Create a table of at least 8 rows and 4 collumns, and list your requirements there row-by-row. Feel free to use more rows and collumns if you find that helpful: the goal is to be both clear and concise, while being complete (while retaining all important requirements you need to consider). 

2. **Diverge with multiple solutions:** Come up with 3 solutions at least! Write each solution down in a short paragraph. You can come up with as many as you like, just make sure you have at least 3! Motivate your solution by at least answering the following questions:
- What could solve your problem?
- How is it going to solve your problem?
- Why is it feasible?
- What are the requirements for this solution to work?
3. **Converge on the best solution** by completing the following excercises:
- A) Which solution do you think is best? Give your subjective judgement; the integrative design approach.
- B) List each of your solutions in the top collumns of the requirements table (excercise 1.B). Then, you rowwise grade each solution for the extent to which it meets a given requirement on a schale of 0 (doesn't solve it) to 10 (completely solves it) based on your subjective judgement. Now sum all the grades for each solution, which one scores highest? Why is that?
- C) Is your subjectively chosen solution the same as the systematically chosen one? If not, motivate your answer: why do you think it's the best solution? Is there anything else to consider which we missed with our systematic approach so far?
4. **Communicate your solution:** Open your Project Proposal Presentation, go to the first HCAI slide with the header "High-level concept design" and briefly reiterate your high-level design there using the questions listed there under "Reiterate:". If you feel like those questions don't fully cover your high-level design, feel free to elaborate further or add slides but remember to keep it clear and concise! 

## 4) Introduction to Human-Centered Artificial Intelligence
Machine learning (ML) is the science of helping computers discover patterns and relationships in data; adverse to being manually programmed for discovery. It’s a powerful tool for creating personalized and dynamic experiences, and it’s already driving everything from Netflix recommendations to autonomous cars. But as more and more experiences are built with ML, it’s clear that UX designers still have a lot to learn about how to make users feel in control of the technology, and not the other way round.

As was the case with the mobile revolution, and the web before that, ML will cause us to rethink, restructure, displace, and consider new possibilities for virtually every experience we build. After all, if the information processing techniques (e.g. ML) change under the hood of our applications, it naturally follows that the way we interact with our applications changes too; the user experience will therefore change. In the Google UX community, they’ve started an effort called “human-centered machine learning” (HCML) to help focus and guide that conversation on how to deal with these changes. We're going to call it Human-Centered Artificial Intelligence (HCAI) because it is broader and more inclusive; heuristic systems require the same design techniques after all and any application will leverage both approaches (e.g. if-else statements). 

Using the HCAI lens, we look across products to see how ML can stay grounded in human needs while solving them in unique ways only possible through ML. Google works with UX designers across the company to bring them up to speed on core ML concepts, understand how to integrate ML into the UX utility belt, and ensure AI-driven applications are built in inclusive ways. Let's take a look at their design principles by watching the following video:

<iframe width="560" height="315" src="https://www.youtube.com/embed/rf83vRxLWFQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Want to know more? You can read this article on [Human-Centered Machine Learning!](https://medium.com/google-design/human-centered-machine-learning-a770d10562cd)

## 5) Datalab Preparation Part 2: High-Level Design for HCAI Applications
Now, we're going to look at our problem and solution as if there is a human agent/servant doing all the work and interaction so we can distill how our application should respond to the user. If you are struggling, take a look at the [People + AI Guidebook](https://pair.withgoogle.com/guidebook) from Google, it's a great guide for designing HCAI applications and the questions below are further explained there!

**Open your Block C Notes - Y1C_2022-23_ADSAI**, create a header called "HCAI High-Level Design" followed by a numeric list, and answer the following questions in it:
1. Why does the problem you are solving with your application benefits more from an AI solution (the servant) than a traditional solution (so without machine/deep learning; if-else)?
2. How would you describe the way a theoretical human “expert” might perform the task today? Be as elaborate as possible, no word limit.
3. If your human expert were to perform this task (and made a mistake/didn't give you the desired output), how would you respond to them so they improved for the next time?
4. If a human expert were to perform this task, what assumptions would the user want them to make? E.g. "Netflix algorithm, you know I only watch documentaries so only recommend me new documentaries and not regular movies!" 

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
This part is a dependency for creating a user-test for the upcoming datalab so be sure to finish it before doing the next self-study material!
 </div>

## Next up!
Coming Datalab we will reflect on these concept again, peer-review your designs: your problem(s) and solutions, and give you an opportunity to ask any questions you might have.

Tomorrow's self-study sees us operationalize our design using the basic principles of interaction design and preparing our first user-test! 

# Resources
## Recommend Literature:
−	[Interaction Design: beyond human-computer interaction](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=cat01829a&AN=buas.303541695&site=eds-live)   
−	[UX Fundamentals for Non-UX Professionals : User Experience Principles for Managers, Writers, Designers, and Developers](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=edsebk&AN=1892077&site=eds-live)
- [People + AI Guidebook](https://pair.withgoogle.com/guidebook)

## Further Reading:
−	[Designing with Data](http://shop.oreilly.com/product/0636920026228.do)
−	[The Design of Everyday Things, Donald A. Norman](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=cat01829a&AN=buas.393706974&site=eds-live)
