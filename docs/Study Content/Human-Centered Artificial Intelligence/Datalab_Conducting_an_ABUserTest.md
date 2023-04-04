---
sort: 7
---

# Datalab: Introduction to A/B-Testing
During the self-study days, we designed an A/B test that we could use to compare our two different wireframe prototypes (A & B). So, today we're going to conduct our A/B-test in class, and then we will do a statistical test to see whether our improved version is a significant improvement or not! Then, depending on the outcome and your goal, we will iterate on our wireframe prototype based on the collected feedback, finalize our design, or do another A/B test.

## Learning Objectives:
After this module, you'll:
1. be able to conduct A/B tests;
2. analyse the data from a simple A/B test;
3. iterate on your application design in a data-driven manner.

Table of contents:
0. Stand-up: 0.5 hours
1. A/B Testing on deployed prototype: 
- Setting up: 9:30 - 10:00
- Round 1: 9:45 - 10:45 
- Round 2: 11:00 - 12:00
- Round 3: 13:00 - 14:00
- Round 4: 14:15 - 15:15
- Round 5: 15:30 - 16:30 **Optional** 
2. Data Analysis: 15:15 - 17:00 


## Questions?

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
If you have questions or issues regarding the course material, please first ask a peer. Otherwise, ask your mentor or the responsible lecturer for the module: Bram Heijligers
 </div>

Good luck!

**Open your worklog and plan your day informed by the stand-up and today's schedule**


## 1) A/B Testing your wireframe prototypes
Yesterday, you have worked on setting up your A/B test by preparing two wireframe prototypes for the experiment and by building a survey to use to collect data. If you've done all preparation, you should have the following prepared:
- a test plan to conduct the A/B Test;
- wireframe prototypes: Version A & B;
- surveys: version A & B (didn't manage to prepare this in time? Message on Teams Bram);
- [T-testIndependentSamplesHCAI Juypter Notebook](./Assets/T-testIndependentSamplesHCAI.ipynb) - ok if you didn't prepare this, you can do this later.

Now, we're going to have 4 rounds where we'll test on another's wireframes. When it's your turn to set-up, you'll have 15 minutes to get out your test plan and do 10 rounds, each lasting 6 minutes, to do a user-test and to let your participant fill in the questionnaire. 

Let's make our experiment a little bit more random by [tossing a coin](https://justflipacoin.com/#flip-a-coin) to choose which version you start with: A (heads) or B (tails).

The schedule is going to be:

| Timeslots | Hn0.015 Experimentors | Hn0.015 Participants | Library Experimentors | Library Participants
|-----------|-------------|-------------|-------------|-------------|
| 9:45 - 10:45 | Mentor Group HEI/KOZ | Mentor Group BLR | Mentor Group BHU | Mentor Group ASW |
| 11:00 - 12:00 | Mentor Group ASW | Mentor Group BHU | Mentor Group BLR | Mentor Group HEI/KOZ |
| 13:00 - 14:00 | Mentor Group HEI/KOZ | Mentor Group BHU | Mentor Group BLR | Mentor Group ASW |
| 14:15 - 15:15 | Mentor Group ASW | Mentor Group BLR | Mentor Group BHU | Mentor Group HEI/KOZ |
| 16:00 - 17:00 | any willing | any willing | any willing | any willing |

So, let's setup our A/B tests as described in our test-plan if it's your turn to be an experimentor! If you are a participant, get out your phone so you can fill in the questionnaires of your peers. 

**For the last round, we're just going to allow whoever is eager to run another test to do so. There's a 45 minute break so you can make some potential quick changes to your wireframe.**


## 2) Data Analysis
1. Go to Qualtrics and take a look at the descriptive data. Download a table with the descriptive data for each question for both version A and B. Past the descriptive data table for both A and B in your learning log for week 8. 
2. Take a look at your descriptive data. What do the descriptive statistics say about your design by themselves if you interpret them as they are? 
3. Go back to Qualtrics and download the data as a CSV file; [same way as you did yesterday](https://adsai.buas.nl/Study%20Content/Human-Centered%20Artificial%20Intelligence/ABUserTests.html#datalab-preparation-3-measuring-a-and-b-using-a-survey) for both version A and B of your survey. 
3. Do the data analysis using the [T-testIndependentSamplesHCAI Juypter Notebook](./Assets/T-testIndependentSamplesHCAI.ipynb) you set up yesterday. First, import the data you just exported in step 2. Then, do the data analysis by following the steps in the notebook. Finally, add the results to your learning log for week 8; just copy-paste the output for each question. Make sure it’s readable.
3. Interpret your results in your learning log: Check which questions have a significant difference between them and which haven't. How big is the mean increase for the questions where there was a significant difference? What does this say about your application and the aspect of the app?


## 3) Done?
Done with the analysis and time left? You can now either:
- Based on the feedback you collected today, Iterate on your wireframe prototype or the design as recorded in the project proposal presentation.
- Set up another A/B - test; for this, you would create a 'C' version which slightly iterates on your 'B' version (e.g. one simple hypothesized improvement). Then you export your wireframe or share it as interactable prototype and run the test again using the same questionnaire.


## Up Next!
Tomorrow, we make any last changes we might want to make to our design as described in our project proposal presentation (and potentially our notes), and we'll finalize our wireframe prototype!



## Recommend Literature:
−	[Interaction Design: beyond human-computer interaction](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=cat01829a&AN=buas.303541695&site=eds-live)   
−	[UX Fundamentals for Non-UX Professionals : User Experience Principles for Managers, Writers, Designers, and Developers](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=edsebk&AN=1892077&site=eds-live)

## Further Reading:
−	[Designing with Data](http://shop.oreilly.com/product/0636920026228.do)
−	[The Design of Everyday Things, Donald A. Norman](https://login.proxy1.dom1.nhtv.nl/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=cat01829a&AN=buas.393706974&site=eds-live)
