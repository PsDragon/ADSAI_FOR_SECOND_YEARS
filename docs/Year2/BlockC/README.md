# Block C - Artificial Intelligence Scientist - Speech and Language

Welcome to Block C! During the next 8 weeks we will explore one of the pillars of AI: Natural Language Processing (NLP).

Collins dictionary defines natural language as "a language that has evolved naturally as a means of communication among people". Computer analysis of natural language is called Natural Language Processing (NLP). This is a multidisciplinary field combining linguistics, computer science and artificial intelligence.

In this block you will train models that can predict the sentiment of tweets, translate English to French and much more.


## Staff Members

| Name   |  Availability |  Week | Email  | Subject  |
|---|---|---|---|---|
| Alican Noyan (Lecturer), PhD.<img src="./images/AlicanProfile.jpg" alt="Alican Noyan profile picture" width="200"/>|  Mon, Wed, Thu, Fri  | Weeks 1-8 |  noyan.a@buas.nl | Natural Language Processing |
| Frank Peters, PhD. <img src="./images/FrankProfile.jpeg" alt="Frank Peters profile picture" width="200"/> | Mon, Tue, Wed, Thu |  Omnipresent | peters.f@buas.nl | Supreme Leader of the ADSAI Department, A.K.A. 'El Patron'  |

## DataLab Attendance 

Regular attendance and punctuality in every DataLab is required of each student (by default from 9:00 to 17:00). A student who has incurred absences of more than two DataLab sessions without a valid reason throughout the block shall not be given credit for the professional ILO(s). 

A student is considered late when they are not yet present until the fifteenth minute from the start of DataLab (9:15) Two instances of lateness are counted as one absence.

In case of absence, the student needs to fill in the 'DataLab Absence' [form](https://adsai.buas.nl/Contact%20Us/DataLabAttendance.html) in a timely manner (before 9:00), and subsequently proposes and completes activities that are acceptable alternatives to the in-class learning activities. For more details, contact your mentor.

*__Good__* excuses to miss DataLab:

- Personal illness
- Family emergency
- Death of a loved one
- Medical appointment
- Public transportation issue
- Car (or Other) accident
- Etc.

*__Bad__* excuses to miss DataLab:

- Oversleeping
- Being hangover
- Having no babysitter for your rabbit, dog, cat, etc.
- Boyband breakups and/or related drama
- A birthday party for a four-legged pal
- Having no clean underwear to put on
- Going to the beach because a doctor said that you needed more vitamin D
- The universe telling you to take a day off
- Etc.

## Questions?

If you have questions or issues regarding the course material, please post a message on the 'Q&A' channel in Teams. The channel will be monitored by mentors but also please help your peers if you have the answer to their question.

***

# Creative Brief

During emergencies, individual, news agencies, disaster relief organizations and emergency management agencies make use of social media for communication, information diffusion, making sense of the event, managing and mitigating risks. Twitter has become an essential communication channel during natural disasters as well as terror attacks.

> "The main reason I like [Twitter] as a source of data is that it integrates not just a measure of typical exposure — which is ‘Did the water come 
> onto the land in a place where it wasn’t supposed to be? [It also] measures ‘What are people noticing? What are people talking about?’ Twitter can
> give us this aggregated measure of what those social consequences of that particular flood are."

> Dr. Frances Moore
> Assistant Professor in the Department of Environmental Science and Policy at University of California, Davis\
> [Source](https://blog.twitter.com/en_us/topics/company/2022/when-natural-disasters-happen-twitter-can-help-heres-how)

On the other hand, Twitter contains huge amounts of misinformation making accurate identification of emergency tweets indispensible. In this block you will build NLP models for identification of emergency tweets. You will join the largest active NLP competition on Kaggle titled, [Natural Language Processing with Disaster Tweets.](https://www.kaggle.com/c/nlp-getting-started)

Your task is to predict whether a given tweet is about a real disaster or not. If so, predict a 1. If not, predict a 0. The training dataset consists of more than 7000 tweets together tweet location and keywords (e.g.'earthquake')

Each sample in the train and test set has the following information:

- [ ] The text of a tweet
- [ ] A keyword from that tweet (e.g. 'earthquake')
- [ ] The location the tweet was sent from
- [ ] The label 0 or 1 (only training set)

But, it’s not always clear whether a person’s words are actually announcing a disaster. Take this example:

According to Oxford Languages English dictionary, *ablaze* can mean the following:

- [ ] burning fiercely.\
*"his clothes were ablaze"*

- [ ] very brightly coloured or lighted.\
*"New England is ablaze with colour in autumn"*

- [ ] filled with anger or another strong emotion.\
*"his eyes were ablaze with excitement"*

Therefore a tweet with containing the word *ablaze* can indicate an emergency or not, depending on its intended meaning.


## Project Timeline




### Week 1

The block starts with a kick-off lecture. 

DataLab 1, Goal(s):

- [ ] Understand regular expressions

DataLab 2, Goal(s):
- [ ] Develop a logistic regression model

### Week 2

DataLab 1, Goal(s):

DataLab 2, Goal(s): 

__Formative feedback I__
 
### Week 3


DataLab 1, Goal(s):



DataLab 2, Goal(s):

### Week 4



DataLab 1, Prep and Goal(s):



DataLab 2, Prep and Goal(s):



__Formative feedback II__

### Week 5


DataLab 1, Prep and Goal(s):



DataLab 2, Prep and Goal(s):


### Week 6


DataLab 1, Prep and Goal(s):



DataLab 2, Prep and Goal(s):


__Formative feedback III__

### Week 7


DataLab 1, Prep and Goal(s):



DataLab 2, Prep and Goal(s):

### Week 8 


## Project Requirements
Consider each of these task as mandatory to complete your project:



### BUas Ethics Review
- Fill in [the template](https://github.com/BredaUniversityADSAI/ADS-AI/blob/28e3a92cda22e9942aa90bb4178cceeaca0eef7f/docs/Study%20Content/Research%20Methodology/Assets/BUas%20Research%20Ethics%20Review%20Application%20Form-H%202022.docx). (ILO 2.1 - Poor)
- [Submit review and get accepted](https://edubuas.sharepoint.com/sites/researchdevelopment/SitePages/BUas-Research-Ethics-Review-Board.aspx). (ILO 2.1 - Insufficient & Sufficient)

### Research Data Management Plan
- Follows [BUas guidelines](https://edubuas.sharepoint.com/sites/researchdevelopment/SitePages/Datamanagement.aspx). (ILO 3.1 - Sufficient)
- Follow your planned procedures as demonstrated by your data storage. (ILO 3.1 - Good)
- Excecuted procedures ensured adhering to F.A.I.R. principles as demonstrated by your data storage. (ILO 3.1 - Excellent)

### Codebook
- Fill in [the template](https://github.com/BredaUniversityADSAI/ADS-AI/blob/f020e08818bb64486e784e2447334fb866ee1df9/docs/Study%20Content/Research%20Methodology/Assets/Codebook_Template.md) (ILO 3.1 - Insufficient)
- Meet the criteria set in the template. (ILO 3.1 - Sufficient, ILO 3.2 - Poor)

***

## Project Deliverable(s)

__Group:__

- ...
- [BUas Ethics Review](https://adsai.buas.nl/Study%20Content/Research%20Methodology/Overview.html#templates)
- [Research Data Management Plan](https://adsai.buas.nl/Study%20Content/Research%20Methodology/Overview.html#templates)
- [Codebook](https://adsai.buas.nl/Study%20Content/Research%20Methodology/Overview.html#templates)

__Individual:__
- ...



<mark>For more details, see self-assessment rubric.</mark>

***

## Medal Challenges 

The medal courses for this block have been specifically selected to help boost your portfolio and extend your knowledge and expertise. You may also finish them after the initial deadline!

![badge](https://custom-icon-badges.herokuapp.com/badge/ADS&AI-1x-orange.svg?logo=bronzemedal) ![badge](https://custom-icon-badges.herokuapp.com/badge/ADS&AI-1x-orange.svg?logo=silvermedal) ![badge](https://custom-icon-badges.herokuapp.com/badge/ADS&AI-1x-orange.svg?logo=goldmedal)

*** 
