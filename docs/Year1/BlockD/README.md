# Block D - Team-based Working

Block D is the capstone course of the propaedeutic stage of your bachelor degree where you are asked to do a full CRISP-DM cycle in a small group which should result in some kind of data science product like a dashboard, model, package or application. Next to working as a team, you will also need to keep track of your individual contribution and group collaboration. But to start of, you will also complete several knowledge modules individually and prepare several small project proposals to your group in week 3. You'll then select/combine ideas and start working as a group from then onwards. Many of the dynamics will therefore change in this block:

- [ ] Groupwork replaces individual work, but assessment will still be done on your individual contribution;
- [ ] The assessment of your groupwork skills are an explicit element of the assessment in this block;
- [ ] Less emphasis is put on delivery of knowledge and skills. Self-guided learning (under supervision) is the new standard;
- [ ] Skills training mainly consists of proffesional skills such as project management, communication and working in teams; and brief ADSAI knowledge modules such as legal & ethics, SQL and writing Production-Ready Code python code. 

As a result, you will spend most of your time (5.5 weeks) on your project as a team. Before you start working as a team though, you will first have to complete your individual part consisting of a your conveyed business understanding, a legal review and an EDA using Python and SQL. You will then bring your legal, data together with your business understanding to culminate in a Project Proposal Presentation which you present on Wednesday Week 3. You will each present at least 1 project idea substantiated by your business understanding, an EDA and your legal review. Then, your team will pick one of the project ideas and start working them as a team from then onwards. More on that later.

This block will focus on the __*Deployment*__ phase of the __*CRISP-DM*__ lifecycle; you will learn how to deploy your model or application! Last block, you've learned how to justify the development of a project by creating a project proposal which you backed up with a substatiated design and proof-of-concept. Now, you're going to again propose a project but based on your EDA and the specific client requirements instead. They're open, they don't really know what they want, they just want 'tools' to solve the problems. This happens more often in industry, 'we have data and we have problems, and we think the data can solve our problems but we don't know how'; difficult for us as unclarity and abstraction makes it difficult to judge what to do... However, these situation do give us more the creative freedom to solve a problem so let's get started **creating something we can deploy!**

<figure>
    <img src=".\assets\CRISP-DM_Process_Diagram.png" width=1080 />
</figure>

*Figure 1. CRISP-DM Lifecycle.*

## Creative Brief: Improve Breda
The Municipality of Breda has approached BUas to help them analyze and understand their data; which they want to use to help their citzens. They essentialy want to use the data to improve Breda in every single way possible; but specifically focussed on improving the lives of those living in Breda. 
*'The program "Verbeter Breda" (Improve Breda) works towards equal opportunities, no matter where you grow up in Breda. Within one generation, we want to achieve this. By 2040, everyone should have sufficient opportunities to create a valuable life for themselves, with a focus on housing, education, and income. Residents, schools, businesses, police, housing corporations, healthcare and welfare organizations, the municipality, and the national government work together towards a continuously better Breda.'* - Municipality of Breda

It's a broad aim, not neccesairily concrete, there's a ton of data in there. So to make our start more focussed we specified seven themes below. So let's Bredameliorate (ameliorate = to improve)! #Bredameliorate

### Equal opportunities for everyone in Breda
According to the report by the [Audit Office](https://www.verbeterbreda.nl/uploads/file/104?download=1) (in Dutch, install use a [translator browser extension](https://chrome.google.com/webstore/detail/google-translate/aapbdbdomjkkjkaonfhkkikfgjllcleb?hl=en), enable it, and [translate the dutch pages to english](https://youtu.be/QE4t28lRB0U); dutch students will be equally distributed across teams), there are 16 neighborhoods in Breda: Geeren Noord, Geeren Zuid, Biesdonk, Wisselaar, Doornbos, Linie, Tuinzigt, Schorsmolen/Fellenoord, and the intermediate areas of Haagdijken, Muizenberg, Kesteren, Brabantpark Oost (Epelenberg, Ringenbuurt/Wilderen), Heuvel, and Haagpoort. These neighborhoods bring together people from different backgrounds and cultures, where there is a strong sense of community and entrepreneurial spirit. These are places where people live with ambitions and talents, but apparently, there are also more people with fewer opportunities on average. And it's imperative to do something about that.

In order to make Breda Better (#Bredameliorate), the municipality came up with several cases with specific potential where more insight using data could be used to create a Better Breda; i.e. have a high impact (##BredameliorateToTheMax). Each case consists of a theme; for a clear context, and problem statement; to direct your problem solving:

| Theme: | Problem Statement: | 
| --- | --- | 
| **Segregation** | The municipality of Breda is facing the challenge of social segregation, which refers to the separation of different groups of people based on socioeconomic status, race, or other factors. By addressing social segregation and identifying key influencing factors, the municipality of Breda can promote a more inclusive and cohesive community that benefits all residents. | 
| **Green-index** | Municipality Breda wants to become more sustainable and green; a city within a forest. To achieve this goal, they have developed the green index of Breda. The municipality now requires the green index for the entire city and a better understanding of the factors that contribute to a given green index score. |
| **Public Safety** | Ensuring the safety, both real and perceived, of the citizens is crucial for maintaining a high quality of life in the municipality of Breda. However, the municipality faces challenges in defining and measuring perceived safety, as well as identifying the factors that influence it. Additionally, the municipality needs to determine the appropriate allocation of resources to address upcoming safety concerns. |
| **Public Nuisance** | To maintain its appeal for a diverse population, Breda must address and minimize public nuisance. However, the municipality faces difficulties in defining public nuisance, understanding its impact on quality of life, and attracting new residents. Furthermore, accurately predicting the necessary number of BOAs (enforcement officers) to prevent public nuisance is a crucial challenge for the municipality. |
| **Pandemic Consequences** | The COVID-19 pandemic has had a profound and far-reaching impact on the municipality of Breda, both in the short and long term. To fully understand the implications of the pandemic, it is essential to examine the differences in various aspects of life before, during, and after the pandemic. It is essential to understand how these changes have affected the municipality of Breda and to develop strategies to mitigate any negative effects and build a more resilient future. |
| **Quality of Life** | VerbeterBreda aims to improve the quality of lifea nd well-being(QoL)of its inhabitants. Currently QoL places more emphasis on socio-economic indicators. However, climate change affects QoL and its influence is becoming stronger. To this end, it becomes important to understand the effect of weather and environmental variables on QoL in Breda. | 
| **City Bustle and Congestion** | The measurement of congestion and city bustle in the municipality of Breda is currently based on the number of people moving in and out of the city center. This city bustle can have a significant impact on the overall liveability and attractiveness of the city center, particularly in regards to parking availability and ease of access for visitors. Reducing congestion and city bustle can improve the liveability and attractiveness of its city center, making it a more desirable destination for visitors and residents alike. |

To Bredameliorate (i.e. to improve Breda) better, the Municipality created the [Monitor (improve)'Verbeter Breda'](https://app.powerbi.com/view?r=eyJrIjoiNDc3YzM0YTItNDdiMS00MGY5LWFlYmYtNmZkMmQyZGZjZmYwIiwidCI6IjkyMDIwZGY0LWM5ZTctNDAwZi1iMjAyLTM3NzU0NDg0ZWYyZSIsImMiOjh9) and is starting to [collect data on Breda and put it out there](https://data.breda.nl/) for analysts to use to help [Improve Breda](https://www.verbeterbreda.nl/)!

<!---Therefore, the municipality of Breda examined the state of segregation in Breda and the extent to which Breda's policy is effective in combating segregation in the city. There are several indications that segregation and social inequality between neighbourhoods have increased in the past 10 years. Recent research points to a further increase in social inequality in the Netherlands since the outbreak of the corona crisis. It is therefore imperative that the city of Breda combats such rising inequalities. One of the key driving factors of such segregation is Quality of Life (QoL).

 QoL is traditionally defined by two components:

1. Socio-economic indicators
2. Environmental quality indicators.

Socio-economic indicators include features such as house prices, perception of neighbourhood safety, migration patterns etc. and environmental quality indicators such as noise levels, CO2 levels etc. Traditionally, experts were used to identify key features which could predict QoL accurately and thus help combat neighbourhood segregation – this involved hand-picking features which were hypothesized to be a key determinant of QoL and using those features to help minimize neighbourhood segregation.


[Seggregation](../../Year1/BlockD/Themes/Seggration.html) - [Alternative Link](LINK)
[Green-index](../../Year1/BlockD/Themes/GreenBreda.html) - [Alternative Link](LINK)
[Public Safety](../../Year1/BlockD/Themes/PublicSafety.html)
[Public Nuissance](../../Year1/BlockD/Themes/PublicNuissance.html) - [Alternative Link](LINK) 
[Pandemic Consequences](../../Year1/BlockD/Themes/Covid19PandemicConsequences.html) 
[Quality of Life](../../Year1/BlockD/Themes/QualityofLife.html) - [Alternative Link](LINK)
[City Bussle and Congestion](../../Year1/BlockD/Themes/CityBustleAndCongestion.html) - [Alternative Link](LINK)
-->

**Your creative brief for this block expects you to use the skills and knowledge you have gained over the course of this year to build a tool to improve Breda in a completely data-driven manner**. This could be for example, adashboard to provide useful insights, or an AI model that helps predict QoL, or ideally, a combination of both. Once you have developed and deployed the tool, you are expected to provide recommendations to the city of Breda in terms of policy: button they could press or tune as it were to influence Breda and Improve it.

<figure>
    <img src=".\assets\breda.PNG" />
</figure>
<br>
*Figure 2. An overview of the municipality of Breda.*

In addition, you are expected to ensure that your solution complies to the latest legal and ethical frameworks, is written in production-ready code, communicates with an SQL database and is developed while adhering to the SCRUM-framework. Self-study material and  introductory workshops will be provided on these subjects.
Note that the amount of new knowledge and skills to acquire via GitHub classroom is limited: the focus is on participating in a real-life project executed as a group.

### Datasets

Please use the following datasets to help you solve the creative brief. You will be provided access to the data during Week 1 of the project. Please note that you are not expected to use all data. Think about a problem to solve; the data you pick will also depend on how you plan to approach the creative brief. **You can extract all the data from our** [SQL Server here]() or from the internet using the links below in case of some public datasets/databases. The non-public data from the Municipality itself is released from Friday 17:00 onwards (first finish your business understanding, legal and ethics parts) so let's start exploring on our ocean of data in week 2; or start with the public data if you really can't wait. 


<figure>
<center>
    <img src=".\assets\DutchRepubicShipOceanOfData.png"  width=1080  />
</center>
</figure>
*Figure 3. Rinud rrindir indeed DALL-E, rinud rrindir indeed. Remember to [use the Generative AI Reference Guide](https://buas.libguides.com/c.php?g=704234&p=5102449) when you use any type of generative AI [OpenAI, A Dutch Republic Sailing Ship exploring a data lake, 24-04-2023]! Unsure? Ask you mentor!*


| Dataset: | Publisher: | Measurement level: | Description : |
| --- | --- | --- | --- |
| [Data Breda](https://data.breda.nl/) | Breda Municipality | Grid/Neighboorhood/Borough/Municipal | Public data on Breda in general, sorted by theme, which links to other official data channels on Breda by the EU and national government |
| [General Statistical Data](https://opendata.cbs.nl/statline/portal.html?_la=nl&_catalog=CBS) | CBS/SN | Grid - National (Varies) | Annual publication of sociological data of the Central Bureau of Statistics of the Netherlands. Contains demographics, housing, energy, social security, density, and proximity of facilities to  low-regional division into grids and postal code, 2015 and beyond |
| [Green index](#https://edubuas-my.sharepoint.com/:x:/g/personal/blerck_i_buas_nl/EW5hnPBOGlBMiTLaf3HXa_gBBwmJGguE7YKleM8PcTriIw?e=MWA2cm) | Municipality of Breda | Grid | Score indicating the degree of greenery on a grid level |
| [Heat stress index](#https://edubuas-my.sharepoint.com/:u:/g/personal/blerck_i_buas_nl/Eeffh6rKQc1BgH-TWAndcNEBNWlpsTPmx1PzrEpBIHupZw?e=bYRJ75) | Municipality of Breda | Grid | Score indicating the level of heat stress on a grid level |
| [Livability index](#https://edubuas-my.sharepoint.com/:x:/g/personal/blerck_i_buas_nl/ESp0zUKaq_RErIRZFVe9iMwBvvEW9-tRd91x1WN4NdQg2Q?e=3fTSjM) | Municipality of Breda | Grid | Score indicating [the livability on a grid level](https://www.leefbaarometer.nl/home.php) |
| [Move house](#https://edubuas-my.sharepoint.com/:f:/g/personal/blerck_i_buas_nl/EisT2yTIritPgBTYKtRAq3kB5NRH-ke7NeE6MvowY_Gzng?e=zIqSQQ) | Municipality of Breda | Grid | The number of households moving from Breda to another location (within or outside the municipality) |
| [Buurt enquête](#https://edubuas-my.sharepoint.com/:x:/g/personal/blerck_i_buas_nl/EcnbV_3adbJBgQHtK8dFNKYBUKutDHWdripcQjzDw9abmQ?e=uUDMWD) | Municipality of Breda | Neighbourhood | Survey regarding social capital and neighborhood participation. [Click to view actual surveys](#https://edubuas-my.sharepoint.com/:f:/g/personal/blerck_i_buas_nl/Eq7izTSGbctPvHDAbyaYh7MBVjmISMbzHldim030wZTLHw?e=0Ccihm). |
| [Klimaateffectatlas](https://www.klimaateffectatlas.nl/en/) | Klimaateffectatlas | Grid - National (Varies) | A collection of datasets illustrating the effects of climate change on people and their living environment |
| [POI](https://www.arcgis.com/home/item.html?id=90830abcc0a54b04a968c451e4122341) | Esri Nederland | Grid | OpenStreetMap dataset of the Netherlands. These locations have a specific function by the Municipality have been designated as **Points of Interest.** |
| [Police](https://data.politie.nl/#/Politie/nl/navigatieScherm/thema) | Dutch Police | Grid - National (Varies) | [Data.politie.nl](https://data.politie.nl/#/Politie/nl/) is the data portal of the police and contains figures on registered crime, nuisance, police performance and police operations. Here you can compile your own tables and graphs |
| [RIVM Open Data Statline](https://statline.rivm.nl/portal.html?_la=nl&_catalog=RIVM) | Grid - National (Varies) | Grid/Neighboorhood/Borough/Municipal | Official public Health data from the RIVM, they have [another data portal](https://data.rivm.nl/meta/srv/dut/catalog.search#/home) too because the Dutch National Government believes you can never have too many websites. |
| [Royal Water Management Agency Dataportal](https://www.rijkswaterstaat.nl/zakelijk/open-data) | Rijkswaterstaat | Grid - National (Varies) | Has data on all aspects of water monitoring and management. Collects large amounts of data every day. For example, we measure the water levels, the load on bridges and the traffic intensity on our highways. Water management is very important and an influencing factor on many aspects of Dutch live; including for Breda.  |
| [Data Overheid](https://data.overheid.nl/) | Dutch National Government | Grid - National (Varies) | Large database on different themes from the dutch national government. |
| [BOA Registations](#https://edubuas-my.sharepoint.com/:f:/g/personal/blerck_i_buas_nl/EgM8Bq3JJ7hNioqMJ6g980sBo9nAW0S_9yjbrm7ESgqKPA?e=5Qe8Mb) | Municipality of Breda | Grid/Neighboorhood | The dataset “BOA registration” 2018-2022 includes categories that are registered by the “Special Investigation Officers” of Breda; they're a sort of supporting police officer which can't act but can register things which are off |
| [Eurostat](https://ec.europa.eu/eurostat/databrowser/explore/all/all_themes?lang=en) | European Union | Grid - National (Varies) | Huge database on EU data, useful for comparisons between Breda & other places |

Ask your mentor for any questions regarding the datasets, if they can't help you we'll relay your question to the relevant contact person at the municipality.



### Team-based working - Agile Scrum

For block D, you are expected to follow an agile project management methodology called 'Scrum'. Self-study material & introductory workshops will introduce you to the scrum way of working; absorbing the skills happens by practising it in teams.

The Scrum methodology is characterized by short phases called “sprints” wherein project work; tasks, occurs. During sprint planning, the project team identifies a small part of the scope; a set of tasks, to be completed during the upcoming sprint, which is usually a two week period of time. But we'll stick to a 1 week sprint to match to the project timeline and give everyone a chance to become a Scrum-master::
<figure>
<center>
    <img src=".\assets\Y1D Timeline.jpg" />
</center>
</figure>
You will start working as a team from week 4 onwards, meaning that there will be 5 sprints and that teams may be no larger then 5 person in order to give everyone the chance to be a Scrum-master.


At the end of the sprint, the finished work (or incement) should be ready to be delivered to the Product Owner **each Friday before 9:00**, who assesses the delivered work. That same Friday, the sprint ends with a sprint review and retrospective—or rather; lessons learned. The cycle below is repeated throughout the project lifecycle until the entirety of the scope has been delivered or block D is at an end:
<figure>
<center>
    <img src=".\assets\ScrumDiagram.jpg"  width=1080 />
</center>
</figure>


Please watch the following video to get a brief introduction to scrum as a agile project management methodology.
<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/gy1c4_YixCo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->


# Week 1: Business Understanding - Legal & Ethical frameworks governing AI
Week goals:
- [ ] Understand Breda Municipality's need & how data helps them
- [ ] Use legal & ethical frameworks governing AI for your project proposal
- [ ] Set SMARTER Goals

## Monday
**9 AM - 12 AM: Block D Kickoff in Fe1.018!**
| Time | Topic | Presentor | 
| --- | --- | --- | 
| 9:00-10:00 | Block Kick-Off and announcements | ADS&AI Staff | 
| 10:00 | Municipality Project Brief | Data Science Team Lead |
| 10:15| A day in the life of: Wim | Arno |
| 10:30 | A day in the life of: Erik | Erik |
| 10:45 | A day in the life of: Wim | Wim |
| 11:00 | A day in the life of: Thom | Thom |
| 11:15 | A day in the life of: Data Compliance Officer | TBD |


After that we continue withsome short self-study material:
- [Rotterdam case: Welfare Fraud. Introduction to DEDA Framework](../../Study%20Content/Digital%20Transformation/Legal%20&%20Ethics%201.html)

## Tuesday

- [ ] Today, we're going to spend reading the creative brief so we know what to do. Reading is considered hard work by many, sustaining concentration is no small feat. So let's take today to read the creative brief completely. Good news: it's the page you're on! Scroll to the top and read thoroughly untill you reach the bottom. If you have any questions, post them in the Q&A channel.
- [ ] Don't think that we haven't noticed that you didn't read the brief entirely. Come now, read it!
- [ ] Good. Now, that we have read the creative brief, we're going to [download the following template](".\assets\BUas Powerpoint template.pptx"). Name it FirstnameLastname_ProjectProposals. This is the powerpoint presentation which you're going to use to present your project proposals to your team Wednesday morning. Cool, now pick 3 of the themes and fill in the themes and provided problem statements in your presentation. Write down in less than a 100 words these problem statements interested you using the slides. Come up with a solution/idea to solve the problem statement. We recommend using the AI Canvas, but you can go freestyle if you fancy. If you have trouble choosing, you can make a table with the different qualities and rank/rate you arguments, for example:


**Bram's Project Ranking Table of Greater Dexterity**
| Quality/Theme | Theme 1 | Theme 2 | Theme 3 |
| --- | --- | --- | --- |
| Interest | medium | high | high |
| Difficulty | easy | normal | hard |
| Notes | I see an easy way to create a valuable solution | cool and feasible | Would be so cool, but maybe too big of a project |
| Awesomeness | 3 | 6 | 9 |


<iframe width="560" height="315" src="https://www.youtube.com/embed/LQ5Uj1nryBc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


- [ ] Set SMARTER Goals (Prof. ILO 2): Take a look at SMARTER goals slides in the beginning of the learning log. Then take a look at your self-reflection from last block and start making SMARTER goals by following the steps on the slides! SMARTER goal setting comes in different shapes and size, this one is specifically taylored for educational growth.
- [ ] Deployment Knowledge Module: Setting up for the block: [Virtual environments & Package management with Python](../../Study%20Content/MLOps/VirtualEnvironmentPackageManagement.html)

## Wednesday

[DataLab. Week 1](https://adsai.buas.nl/Study%20Content/Digital%20Transformation/DataLab%20Week%201.html)

## Thursday
[**HOLIDAY**](https://youtu.be/5wdjwp-rB7E)

## Friday - WORK-AT-HOME
[The Proposed Artificial Intelligence Act. ALTAI Framework](../../Study%20Content/Digital%20Transformation/Legal%20&%20Ethics%202.html)

# Week 2: Data Understanding - Data Management and Analysis with PostgreSQL and Python

## Monday
- [Databases, Data Definition Language (DDL) clauses I & Data Manipulation Language (DML) clauses](../../Study%20Content/Business%20Intelligence/DataArchitecturePipelineDesign_2022_2023.html)

## Tuesday
- [Data Query Language (DQL) clauses](../../Study%20Content/Business%20Intelligence/SQL_DQL_2022_2023.html)

## Wednesday
- [DataLab: Creative Brief](../../Study%20Content/Business%20Intelligence/UseCases.html)

## Thursday
- [Data Definition Language (DDL) clauses II & Python](../../Study%20Content/Business%20Intelligence/SQL_DDL2_2022_2023.html)

## Friday
- [DataLab: Creative Brief](../../Study%20Content/Business%20Intelligence/UseCases.html)
- Groups are announced at 16:00 in Datalab

# Week 3: Bringing Data & Business Understanding Together - Agile Project Management

## Monday & Tuesday
9 AM - 10 AM: [Introduction to Project Management]()

- [The scrum approach to project success](../../Study%20Content/Agile%20Project%20Management/1.1.%20The%20scrum%20approach%20to%20project%20success.html)
- [Essential roles for scrum teams](../../Study%20Content/Agile%20Project%20Management/1.2.%20Essential%20roles%20for%20scrum%20teams.html)
- [Project vision and roadmaps](../../Study%20Content/Agile%20Project%20Management/1.3.%20Project%20vision%20and%20roadmaps.html)
- [Creating a Project Vision and Roadmap](https://adsai.buas.nl/Study%20Content/Agile%20Project%20Management/3.%20Creating%20a%20Project%20Vision,%20Roadmap%20and%20Project%20Planning.html)
- [Sprint planning and standups using Jira](https://adsai.buas.nl/Study%20Content/Agile%20Project%20Management/4.1.%20Sprint%20planning%20and%20standups.html)
- [Wrapping up a sprint and retrospectives](https://adsai.buas.nl/Study%20Content/Agile%20Project%20Management/4.2.%20Wrapping%20up%20a%20sprint%20and%20retrospectives.html)

## Wednesday
- [ ] **9:00-12:00, Project Pitches:** Within mentor group; 3 groups per mentor​. See timetable, your mentor will post your schedule. Project pitches within mentor group with separate classrooms for each mentor group; mentor + students curate projects. 4 classroom, 10 minute pitches, teams rotate; 1 every hour.
- [ ] **13:00-17:00, Scrum Workshop:** SomeDescription. At the end of the workshop, the team chooses a first SCRUM-master.


### Work in the meantime:
This is the work that to be completed as a team on Monday Week 4, the sooner you finish this, the sooner you can start plan and work on your project!
- [DataLab: Project vision and roadmap - Creative Brief](https://adsai.buas.nl/Study%20Content/Agile%20Project%20Management/5.%20DataLab%202%20Scrum.html). Also take a look at the Mandatory Knowledge modules at the bottom of the page. Take them into account when creating the project backlog and estimate them story points using story points.
- [DataLab: Check List for ethical & legal decision making](../../Study%20Content/Digital%20Transformation/UseCases%20-%20Legal%20and%20Ethics.html)  - __Use Case 1__.
- [Plan a first sprint]()


## Thursday
[**HOLIDAY**]()

## Friday
[**HOLIDAY**]()



# Week 4: Data Pre-processing 
## Monday
- [ ] [DataLab: Project vision and roadmap - Creative Brief](https://adsai.buas.nl/Study%20Content/Agile%20Project%20Management/5.%20DataLab%202%20Scrum.html). Also take a look at the Mandatory Knowledge modules at the bottom of the page. Take them into account when creating the project backlog and estimate them story points using story points.
- [ ] [Plan a first sprint]()
- [ ] [DataLab: Check List for ethical & legal decision making](../../Study%20Content/Digital%20Transformation/UseCases%20-%20Legal%20and%20Ethics.html)  - __Use Case 1__.

## The rest of the block is dedicated to project work.
**Every self-study day your team will start with a stand-up at the start of the day which will be hosted in microsoft teams (which you will evidence for that day in your learning log). Then you will start your project work.**

**Every Wednesday and Friday, you will meet in the datalabs for project work at 9:00. If you are later then 9:15, you will start by singing [the scrum anthem](https://youtu.be/gRWBw_p6-kQ) in the specially assigned Karaoke Room (Fe3.029) instead.**
- On Wednesday you will simply do a stand-up and work on your project. Additionally, you will have a individual feedback session every other week.
- On Friday you will **fill in the peer-review form for that week** which you will then use to provide to your team with feedback during the sprint review and sprint retrospective. Meaning that you will need to have your peer-review form filled in before starting the sprint review. You will then plan a
new sprint using sprint planning poker.

Please make sure to steadily fill in your checklist for ethics & legal assignment. You can find use cases for ethics & legal by clicking [this link](../../Study%20Content/Digital%20Transformation/UseCases%20-%20Legal%20and%20Ethics.html) and the overall requirements [here](../../Study%20Content/Digital%20Transformation/RequirementsLegal&Ethics.html) .**

## Preparing for the Sounding Board Session


## Wednesday
- **9:00 - 12:00 @ Fe1.027**: Sounding Board Sessions (Panel of Municipality Breda Data Science Team)
- **15:30- 16:30 @ Fe1.018**: Guest Lecturer on Agile in Practise - PhD Research by Ruben Steegh

## Friday​

Morning: 
- [ ] Start Peer-Review (6 weeks) at 9:00 sharp.​ 
- [ ] Sprint Review & Sprint Retrospective - 45 minutes per team (instead of 60)​

Afternoon: 
- [ ] Sprint Planning - 45 minutes of sprint planning (e.g. planning poker) per team

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Take a look at the Mandatory Knowledge modules at the bottom of the page. Take them into account when creating the project backlog and estimate them story points using story points.
 </div>

# Week 5: Data Modelling 
Same structure as week 4 but now hopefully focussed mainly on data modelling. Apart from:

## Wednesday:
- [ ] Team Communication Workshop in Datalab

# Week 6: Evaluation (& Iteration) 
Same structure as week 4 but now hopefully focussed mainly on data modelling evaluation (& iteration). Apart from:

# Week 7: Deployment 
Same structure as week 4 but now hopefully focussed mainly on deploying your project. Apart from:

# Week 8: Client Demonstration 
Same structure as week 4 but now hopefully focussed mainly on presenting you project to the client.  Apart from:

## Preparing for Poster Presentation
- [Setting up Instructions]()
- [Giving feedback & voting]()

## Wednesday
- **9:00 - 16:00 @ Innovation Square**: Poster Presentation and Voting
- **16:00 Onwards @ Innovation Square**: Drinks


## Friday: 
- [Recorded Project Retrospectives with Mentor]()
- **14:30- 17:00 @ Fe1.018**: Final Client Presentations - Top projects are presented to the Municipality of Breda.



## Knowledge Modules:

Below, you will find some additional knowledge modules on various topics, such as MLOps and  geospatial analytics. The mandatory knowledge modules are required for the deployment ILO, and are therefore mandatory to include in the project planning as to be completed sometime before the end of the project. The optional knowledge modules are not required, but they will help to broaden your knowledge and understanding, which in turn will help you to succeed in your project.

### Mandatory
- MLOps 
    - [Virtual environments & Package management with Python](../../Study%20Content/MLOps/VirtualEnvironmentPackageManagement.html)
    - [Production-Level code with Python](../../Study%20Content/MLOps/CodeFormatting.html)
    - [Documenting for Python](../../Study%20Content/MLOps/Documenting.html)
    - [Testing with Python](../../Study%20Content/MLOps/Testing.html)
    - [Continuous Integration with Python](../../Study%20Content/MLOps/ContinuousIntegration.html)
    - [Deployment with Python](../../Study%20Content/MLOps/Deployment.html)

### Optional
- [Sociology](../../Study%20Content/Sociology/Sociology1.html)

- [Geospatial analytics](../../Study%20Content/Geospatial%20Analytics/GeospatialAnalytics1.html)

- [Time series](../../Study%20Content/Time%20Series/TimeSeries1.html)


## References
1. DALL-E, OpenAI, create funny picture, Prompt: 'A Dutch Repubic ship sailing across an ocean of data', 24-04-2023.