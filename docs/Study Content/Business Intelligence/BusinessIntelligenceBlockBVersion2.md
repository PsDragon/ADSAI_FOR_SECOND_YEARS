---
sort: 2
---

# __Introduction to Business Intelligence__

## __Assignment__

### __Part 1: Pre-processing__

By now you should have mastered the basics of SQL and data architecture & pipeline design (Datalab 2, Week 1). The knowledge you acquired so far will enable you to complete this section of the assignment. You will work with two data sources:

1. PostgreSQL database with youth care data from the municipality of Oosterhout. Hereinafter, data collection 1.
2. A csv./flat-file containing national health data from the RIVM. Hereinafter, data collection 2.

<img src="./images/sql_meme.png" alt="SQL meme" width="350"/> \
*Figure 1. Joining tables in SQL...*

Additionally, you will have to prepare and run various SQL queries on the loaded data. After you have successfully prepared and ran the queries, listed in the procedure below :point_down:, you should be familiar youth care dataset.
\
__Requirements:__

For this part of the assignment, we work with three levels that correspond to the proficiency levels in the assessment form (except the 'Missing' criterion). For example, to get a 'Sufficient' on this section of the assignment you should master the skills listed in the yellow block (i.e. Level 2)

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #FFAB91; border-color: #FFAB91;">
LEVEL 1 ('Insufficient')

<br>Elementary SQL queries & Modifying databases in SQL 1

<br>A) Prepare, and run SQL queries that use DELETE, UPDATE, ADD, SELECT INTO, INSERT INTO SELECT, CREATE TABLE, ALTER TABLE, and COPY.
<br>B) Prepare, and run SQL queries that use SELECT, FROM, ORDER BY, WHERE, IN, BETWEEN, OR, AND, NOT, LIKE, EXISTS, and LIMIT.
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #FFE082; border-color: #FFE082;">
LEVEL 2 ('Sufficient')

<br>Intermediate (relational) SQL queries 1 & Modifying databases in SQL 2

<br>A) Prepare, and run SQL queries that use COUNT, SUM, MIN, MAX, AVG, GROUP BY, DISTICT, HAVING, DATE, and CASE.
<br>B) Prepare, and run SQL queries that use LEFT JOIN, INNER JOIN, OUTER JOIN, IS NULL, and IS NOT NULL.
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #E6EE9C; border-color: #E6EE9C;">
LEVEL 3 ('Good')

<br>Modifying databases in SQL 3

<br>A) Prepare, and run SQL queries that use PRIMARY KEY, FOREIGN KEY, and REFERENCES.
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #C0CA33; border-color: #C0CA33;">
LEVEL 4 ('Excellent')

<br>Intermediate (relational) SQL queries 2

<br>A) Prepare, and run SQL subqueries.
</div>

__Procedure:__

Each colour block corresponds to a specific criterion of ILO 3.1. To attain a certain skill-level, e.g. yellow (Level 2, 'Sufficient'), you need to answer all the questions in the corresponding colour block correctly.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #FF7043; border-color: ##FF7043;">
1. Install the PostgreSQL database server.
<br>2. Install a client that is compatible with PostgreSQL (e.g. DBeaver, pgAdmin etc.).
<br> 3. Place the data collection 2 file into your computer's 'Public' folder (e.g. C:\Users\Public).
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #FFAB91; border-color: #FFAB91;">
4. a) Use CREATE to construct a new table for data collection 2 in the PostgreSQL database, and name it health.
<br> b) Import data collection 2 into the table health by using the COPY statement.
<br> 5. Produce an list of instances (maximum of 5) where the value of column [...], located within in the table health, exceeds a certain threshold.
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #FFE082; border-color: #FFE082;">
6. Create a new instance of the variable BuurtNaam called Oosterhout that includes the mean value for each of the remaining columns in the table health (except for the variable BuurtCode), and rename the table health_extra.
<br> 7. Produce a list of each client's name (first name, middle name and last name), id, and their first 'nota' (= invoice) after year [....]. Order by client's ID.
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #E6EE9C; border-color: #E6EE9C;">
9. Create correct relationships between the table health_extra and the tables from data collection 2, which include geographic, demographic, financial, and youth care supplier information.
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #C0CA33; border-color: #C0CA33;">
10. Produce a list of all clients, and their corresponding geographic, demographic, financial, and youth care supplier data, that have a [...](1) that is greater than the average [...](2, same concept as 1) of all clients.
</div>

__Deliverable(s):__

- The code and answers to the questions above, should be uploaded to your personal GitHub page in either a Jupyter Notebook or Markdown file.
- A modified PostgreSQL database dump.

The Jupyter notebook or Markdown file is to be uploaded to Github no later than 5pm on last DataLab day. Confer with a lecturer beforehand if you are handing in something other than a Jupyter Notebook.

For more information on writing Markdown files, visit GitHub's [Mastering Markdown](https://guides.github.com/features/mastering-markdown/) guide.

***

### __Part 2: Analysis & Visualization__

For part 2 of the assignment, you are going to perform operations on the youth care data to provide insightful visualizations.

<img src="./images/power_bi.jpg" alt="Power BI dashboard" width="650"/> \
*Figure 2. Power BI dashboard example*

__Requirements:__

- Create a maximum of 3 dashboard pages.
- Import the results from ML analyses, in 'flat-file' format, to Power BI.
- Clean and/or transform the data that is imported into Power BI.
- Use visualizations that are appropriate for the data type you are working with. See Microsoft’s visualization guideline in Literature.
- Visualize descriptive statistics in the dashboard.
- Visualize results of the ML model(s) in the dashboard.
- Record or perform a live demo of the dashboard (to stakeholders). The demo should not take longer than 5 minutes.
- Provide a pleasant User experience (UX) for the dashboard: layout, buttons etc. See book by Stull (2018) in Literature.
- Optimize (a part of) the data pipeline (i.e. dashboard) in terms of performance and security. See Microsoft’s (e.g. Kesselman et al.) optimizing performance and security in Literature.

__Deliverable(s):__

- A Power BI dashboard in .pbix-format.
- A recorded or live demo of the Power BI dashboard.

For information on how to record your demo, see Windows 10s [screen recorder tool](https://betanews.com/2020/01/20/windows-10-screen-record-xbox-game-bar/) guide.

The Power BI dashboard in .pbix-format is to be uploaded to GitHub Classrooms no later than 5pm on last DataLab day.

The recorded demo of the Power BI dashboard is to be uploaded to GitHub Classrooms no later than 5pm on last DataLab day. Confer with a lecturer beforehand if you want to demo your dashboard in front of a live audience.

***

## __Codebook --> Adjust__

| Variable      | Data type    | Description                                          |
|---------------|--------------|------------------------------------------------------|
| gwb_code_10   | String       | District ID                                          |
| regio         | String       | District name                                        |
| A_soz_ww      | Integer      | Number of people who receive unemployment benefits   |

***

## __Literature__

Batra, R. (2018). SQL Primer: An Accelerated Introduction to SQL Basics. (Freely accessible through BUAS’s MetaSearch!)

Database data Warehousing Guide. (2017, June 07). Retrieved June 30, 2021, from https://docs.oracle.com/database/121/DWHSG/toc.htm

Kesselman, Y., Osborne, P., Neely, M., & Bencic, T. (2021, April 2). Power BI security white paper - Power BI. Retrieved June 30, 2021, from https://docs.microsoft.com/en-us/power-bi/guidance/whitepaper-powerbi-security

Master a skill - design databases with postgresql. (n.d.). Retrieved June 30, 2021, from https://www.codecademy.com/learn/paths/design-databases-with-postgresql

Optimization guide for Power BI - Power BI. (2021, April 2). Retrieved June 30, 2021, from https://docs.microsoft.com/en-gb/power-bi/guidance/power-bi-optimization

Visualization types in Power BI - Power BI. (2021, March 18). Retrieved June 30, 2021, from https://docs.microsoft.com/en-us/power-bi/visuals/power-bi-visualization-types-for-reports-and-q-and-a#feedback

Stull, E. (2018). UX Fundamentals for Non-UX Professionals: User Experience Principles for Managers, Writers, Designers, and Developers. Berkeley, CA: Apress. (Freely accessible through BUAS' MetaSearch!)
