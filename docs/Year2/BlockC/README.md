# Block C - Artificial Intelligence Scientist - Speech and Language

Natural language is a language that has evolved naturally as a means of communication among people. Computer analysis of natural language is called Natural Language Processing (NLP). NLP is used for e-mail classification, smart assistants, search engines, language translation and many more applications. Hundreds of millions of people use Google Translate daily!

NLP is an interdisciplinary field combining linguistics, computer science, and AI. Linguistic knowledge is key for building NLP models. A word can have multiple meanings, that is, **polysemous**. *Mouse* refers to an animal as well as computer hardware. Two words can be **synonyms**, meaning the same thing, such as *train* and *educate*. Yet you *train* a machine learning model, not *educate* a machine learning model because *train* is part of the machine learning **lexicon**. There are a lot of words that are not synonyms but can be **similar** such as *cat* and *dog*. The meaning of two words can be **related** in ways other than similarity (*coffee* and *cup*). Words also have **connotations**, meaning the reader's sentiment about the word. *Happy* has a positive connotation. Similar words can have different connotations. *Fake* and *replica* are similar words yet *fake* has a more negative connotation. On top of that, word usage evolves. *Awful* originally meant impressive instead of extremely bad. Add to these irony, slang, idioms, humor, and differences between the 7000 languages that exist...

<iframe width="896" height="504" src="https://www.youtube-nocookie.com/embed/4LjDe4sLER0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
Video 1: Qué difícil es hablar el español.

## Textbooks
In this block you will follow two books. The first book is great for conceptual understanding of NLP and the second book is focused towards hands-on NLP with Python.

1) D. Jurafsky, J.H. Martin, Speech and Language Processing, 3rd edition draft, 2022\
Book website: [https://web.stanford.edu/~jurafsky/slp3/](https://web.stanford.edu/~jurafsky/slp3/) \
Book pdf: [https://web.stanford.edu/~jurafsky/slp3/ed3book_jan122022.pdf](https://web.stanford.edu/~jurafsky/slp3/ed3book_jan122022.pdf)

2) S. Bird, E. Klein, E. Loper, Natural Language Processing with Python\
Book website: [https://www.nltk.org/book/](https://www.nltk.org/book/)

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

## Creative Brief - Disaster or not?
<img src="./images/emergency.jpeg" alt="emergency.jpeg" width="60%"/>

During emergencies, individuals, news agencies, disaster relief organizations, and emergency management agencies use social media for communication, information diffusion, making sense of the event, and managing risks. As a result, Twitter has become an essential communication channel during natural disasters and terror attacks.

> "The main reason I like [Twitter] as a source of data is that it integrates not just a measure of typical exposure — which is ‘Did the water come 
> onto the land in a place where it wasn’t supposed to be? [It also] measures ‘What are people noticing? What are people talking about?’ Twitter can
> give us this aggregated measure of what those social consequences of that particular flood are."

> Dr. Frances Moore
> Assistant Professor in the Department of Environmental Science and Policy at the University of California, Davis\
> [Source](https://blog.twitter.com/en_us/topics/company/2022/when-natural-disasters-happen-twitter-can-help-heres-how)

On the other hand, Twitter contains vast amounts of misinformation making accurate identification of emergency tweets indispensable. In this block you will build NLP models for identifying emergency tweets. You will join one of the largest active NLP competitions on Kaggle titled [Natural Language Processing with Disaster Tweets.](https://www.kaggle.com/c/nlp-getting-started) Your task is to predict whether a given tweet is about a disaster. If so, predict a 1. If not, predict a 0. The training dataset consists of more than 7000 tweets together with tweet location and keywords.

Each sample in the train and test set has the following information:

- [ ] The text of a tweet
- [ ] A keyword from that tweet (e.g. 'earthquake')
- [ ] The location the tweet was sent from
- [ ] The label 0 or 1 (only training set)

In addition to distinguishing spam or not spam, it’s not always clear whether a person’s words are actually announcing a disaster. Take a look at the tweets shown in Figure 1. Both tweets mention that something is *ablaze*. *Ablaze* is **polysemous**. According to the Oxford Languages English dictionary, *ablaze* can mean the following:

- [ ] burning fiercely.\
*"his clothes were ablaze"*

- [ ] very brightly coloured or lighted.\
*"New England is ablaze with colour in autumn"*

- [ ] filled with anger or another strong emotion.\
*"his eyes were ablaze with excitement"*

The tweet on the left-hand side uses the second meaning of *ablaze*, therefore is not about a disaster. However, the other tweet uses its first meaning and talks about a disaster.

<img src="./images/tweets.png" alt="emergency.jpeg" width="60%"/> \
Figure 1: Two tweets using the word ablaze with different meanings.


## Project Timeline

### Week 1

The block starts with a kick-off lecture. This week you will work on preprocessing text.

Self-study:

- Speech and Language Processing/Chapter 2/Section 2.1/Regular Expressions

- Natural Language Processing with Python/Chapter 1/Section 1/Computing with Language: Texts and Words

- Natural Language Processing with Python/Chapter 1/Section 2/A Closer Look at Python: Texts as Lists of Words

DataLab 1 Regular Expressions

Goal(s):

- [ ] Regular expressions

Self-study:

- Speech and Language Processing/Chapter 2/Section 2.2/Words
- Speech and Language Processing/Chapter 2/Section 2.3/Corpora
- Speech and Language Processing/Chapter 2/Section 2.4/TextNormalization
- Speech and Language Processing/Chapter 2/Section 2.5/MinimumEditDistance
- Speech and Language Processing/Chapter 2/Section 2.6/Summary

- Natural Language Processing with Python/Chapter 1/Section 3/Computing with Language: Simple Statistics

- Natural Language Processing with Python/Chapter 1/Section 2/A Closer Look at Python: Texts as Lists of Words

DataLab 2, Goal(s):
- [ ] Tweet processing

### Week 2

This week you will create your first NLP models.

DataLab 1, Goal(s):
- [ ] Naive Bayes

DataLab 2, Goal(s):
- [ ] Logistic Regression

__Formative feedback I__
 
### Week 3

Last week you have learned developing your first NLP models. This week you will start competing on Kaggle using the algorithms you have learned.

DataLab 1, Goal(s):
- [ ] Kaggle

DataLab 2, Goal(s):
- [ ] Embeddings

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
Final day of Kaggle submissions

### Week 8 

DataLab 1, Prep and Goal(s):
Kaggle team submission

DataLab 2, Prep and Goal(s):
Presentation of Kaggle solutions

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

The medal courses for this block have been specifically selected to help boost your portfolio and extend your knowledge and expertise.

![badge](https://custom-icon-badges.herokuapp.com/badge/ADS&AI-1x-orange.svg?logo=bronzemedal) ![badge](https://custom-icon-badges.herokuapp.com/badge/ADS&AI-1x-orange.svg?logo=silvermedal) ![badge](https://custom-icon-badges.herokuapp.com/badge/ADS&AI-1x-orange.svg?logo=goldmedal)

<img src="./images/medals.png" alt="medals.png" width="60%"/>


*** 
