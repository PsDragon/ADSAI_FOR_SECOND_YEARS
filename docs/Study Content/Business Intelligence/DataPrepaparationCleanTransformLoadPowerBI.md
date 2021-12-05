---
sort: 6
---

## __Getting started with Power BI & Prepare data for analysis with Power BI__
\
\
<img src="./images/books_banner.png" alt="Books banner" width="600"/>

### 1. Introduction

During this independent study day, you will be introduced to one of the most popular business intelligence tools, Microsoft's Power BI. For the majority of Week 3, you will be following Microsoft's data analyst associate tutorial. This tutorial will teach you all the basic skills needed to build insightful and visually pleasing dashboards:

<img src="./images/certification_microsoft.png" alt="Books banner" width="250"/>

*Figure 1. Microsoft Certified: Data Analyst Associate.*

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Note: After completing Microsoft's data analyst associate tutorial, you should be able to pass the corresponding exam. For more information, see <a href="(https://docs.microsoft.com/en-us/learn/certifications/data-analyst-associate/#certification-exams">Exam DA-100: Analyzing Data with Microsoft Power BI</a> or contact one of your lecturers.
</div>

***

### 2. Introduction to Power BI

__2a__ Watch the YouTube video 'What is Power BI?' by Guy in a Cube.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Vqz2d7pTOV8?controls=0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

>Businesses need data analysis more than ever. In this learning path, you will learn about the life and journey of a data analyst, the skills, tasks, and processes they go through in order to tell a story with data so trusted business decisions can be made. You will learn how the suite of Power BI tools and services are used by a data analyst to tell a compelling story through reports and dashboards, and the need for true BI in the enterprise (Microsoft Certified: Data Analyst Associate, Get started with Microsoft data analytics).

__2b__ Complete the modules ```Get started with Microsoft data analytics``` and ```Get started building with Power BI``` of the Microsoft Certified: Data Analyst Associate tutorial, which you can find [here](https://docs.microsoft.com/en-us/learn/paths/data-analytics-microsoft/).

__2c__ List at least one business intelligence dashboarding tool, and compare and contrast it with Power BI, taking into regards elements such as 'spatial data', 'cost', 'security' etc. Write your answer down in a maximum of 150 words.

***

### 3. Prepare data for analysis in Power BI

> You will explore Power Query as you learn to extract data from different data sources and choose a storage mode and connectivity type. You will learn to profile, clean, and load data into Power BI in preparation for modeling your data (Microsoft Certified: Data Analyst Associate, Prepare data for analysis).

__3a__ Complete the modules ```Get data in Power BI``` and ```Clean, transform, and load data in Power BI``` of the Microsoft Certified: Data Analyst Associate tutorial, which you can find [here](https://docs.microsoft.com/en-us/learn/paths/prepare-data-power-bi/).

There is a big difference between absorbing information and putting what you have learned into practice. Without doing the latter, the training you have received will go to waste. Therefore, you are going to apply your newly acquired Power BI knowledge to a famous Microsoft dataset/database called AdventureWorks. Each of the lab exercises (do not confuse them with the DataLab sessions!) take approximately 45 minutes to complete.

You can either complete the lab exercises in a Virtual Machine (VM) provided by Microsoft on their website or you can complete them on your local device (a.k.a. laptop). Setting up the lab exercises on your local device takes a bit more effort at first, but it will greatly reduce the time spent on loading the exercises in Power BI.

All in all, there are two options:

__Power BI in a VM (online)__

Step 1. Access the lab exercises through the learning paths of [Microsoft Certified: Data Analyst Associate](https://docs.microsoft.com/en-us/learn/certifications/data-analyst-associate/?azure-portal=true).

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #a94442; background-color: #f2dede; border-color: #ebccd1;">
Alert: Either BUAS' WIFI or its student email accounts are causing some unexpected behaviour in Microsoft's online lab environment (e.g. blocked accounts). Advice: Choose the safe option, Power BI on a local machine.
</div>

or

__Power BI on a local device__

Step 1. Install [Microsoft SQL Server 2019](https://www.microsoft.com/en-GB/sql-server/sql-server-downloads), and [Microsoft SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15).

<iframe width="560" height="315" src="https://www.youtube.com/embed/QsXWszvjMBM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 1. How to download and install Microsoft SQL Server 2019 database and SQL Server Management Studio by Lie Jenn.*

Step 2. Git clone Microsoft's [DA-100: Analyzing Data with Power BI](https://github.com/MicrosoftLearning/DA-100-Analyzing-Data-with-Power-BI) GitHub repository.
Step 3. Manually add AdventureWorksDW2020.bak (location: DA-100-Analyzing-Data-with-Power-BI --> Allfiles --> DA-100-Allfiles --> DatabaseBackup) to your databases listed in Microsoft SQL Server Management Studio. Follow the instructions provided in the section ´Restore to SQL Server´ from Microsoft's AdventureWorks sample databases article, which you can access [here](https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms).

<iframe width="560" height="315" src="https://www.youtube.com/embed/FTKtNLmiIT0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*Video 2. How to download and import AdventureWorks sample database for Microsoft SQL Server 2019 by Lie Jenn.*

For the DataLab sessions, you need to install Power BI Desktop on your local device. If you have not installed it yet, please do so! You can download the software, [here](https://powerbi.microsoft.com/en-gb/desktop/).

__3b__ Complete ```Module 2 - Get Data in Power BI``` and ```Module 3 - Clean, Transform, and Load Data in Power BI``` lab exercise, which you can find [here](https://microsoftlearning.github.io/DA-100-Analyzing-Data-with-Power-BI/).

When everything fails, you can use the AdventureWorks dashboard template. See teams folder Class Materials --> Business Intelligence --> Data --> AdventureWorks2020.pbix

***

### 4. Additional resources (optional)

As a data analyst, it is important to identify the needs of your client (i.e. CRISP phase 1: Business Understanding – What does the business need?). What are useful KPIs? What does the term 'toewijzing' mean? Or when is somebody eligible to receive youth care within the municipality of Oosterhout? When you can answer these kinds of questions, you will be much better equipped to deliver an insightful dashboard report.

<img src="./images/CRISP-DM.png" alt="Layout" width="450"/>

*Figure 2. CRISP-DM cycle.*

Do you have time left, and want to create a dashboard that can help the municipality of Oosterhout to improve its youth care policy, explore the following additional resources:

- Hilverdink, P., Daamen, W., & Vink, C. (2015). [Children and youth support and care in the Netherlands.](http://aaof.eseng.nl/dwd/youth_support_care.pdf) Utrecht: Netherlands Youth Institute.
- Gervink, C. M. (2018). [The contemporary state of youth care: Impact of the decentralization on youth care employees: How decentralization of youth care influenced how youth care employees carry out their work and how they cope with the changes in their working conditions](https://essay.utwente.nl/74908/1/Gervink_MA_BMS.pdf). (Master's thesis, University of Twente).

***

## __Literature__

Gervink, C. M. (2018). The contemporary state of youth care: Impact of the decentralization on youth care employees: How decentralization of youth care influenced how youth care employees carry out their work and how they cope with the changes in their working conditions (Master's thesis, University of Twente).

Hilverdink, P., Daamen, W., & Vink, C. (2015). Children and youth support and care in the Netherlands. Utrecht: Netherlands Youth Institute.
