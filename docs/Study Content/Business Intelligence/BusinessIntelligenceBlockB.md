---
sort: 7
---

# __Business Intelligence__

## __Assignment__

### __Part 1: Pre-processing__

By now you should have mastered the basics of SQL and data architecture & pipeline design (Datalab 2, Week 1). The knowledge you acquired so far will enable you to complete this section of the assignment. Here, you will have to import a selection of youth care data, provided by the client, into an PostgreSQL client:

1. PostgreSQL database with youth care data. Hereinafter, youth care data collection 1.
2. A collection of youth care related csv./flat-files. Hereinafter, youth care data collection 2.

<img src="./images/sql_meme.png" alt="SQL meme" width="350"/> \
*Figure 1. Joining tables in SQL...*

Additionally, you will have to prepare and run various SQL queries on the loaded data. After you have successfully prepared and ran the queries, listed in the procedure below :point_down:, you should be familiar with the use-case's data and have a workable data source for part 2 of the assignment.  
\
__Requirements:__

For this part of the assignment, we work with three levels that correspond to the proficiency levels in the assessment form (except the 'Missing' criterion). For example, to get a 'Sufficient' on this section of the assignment you should master the skills listed in the yellow block (i.e. Level 2)

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #FFAB91; border-color: #FFAB91;">
LEVEL 1 ('Insufficient')

<br>Elementary SQL queries & Modifying databases in SQL 1

<br>A) Prepare, and run SQL queries that use DELETE, UPDATE, SELECT INTO, INSERT INTO SELECT, and CREATE TABLE.
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

The code and answers to the questions below, should be uploaded to your personal GitHub page.

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #FF7043; border-color: ##FF7043;">
1. Install the PostgreSQL database server.
<br>2. Install a client that is compatible with PostgreSQL (e.g. DBeaver, pgAdmin etc.).
<br>3. Import the youth care data collection 1 into the PostgreSQL client.
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #FFAB91; border-color: #FFAB91;">
4. a) Select a table from the youth care data collection 2;
   <br>b) Use CREATE to construct a new table for the youth care data collection 1 that contains three rows with the smallest values of a numerical column located within the table selected for question 4a, and name it data1.
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #FFE082; border-color: #FFE082;">
5. Produce a list of the total number of ... in the table data1.
<br>6. Produce a list of all the instances in table toewijzingen where the column a_soz_ww is not empty (see table 1), and rename the table as toewijzingen_unemp.
</div>

| gwb_code_10   | regio | a_soz_ww   |
|---------------|-----------------------------------|------------|
| WK082600      | Wijk 00 Oosterhout-Centrum        | 80         |
| WK082601      | Wijk 01 Slotjes                   | 110        |
| WK082602      | Wijk 02 West                      | 40         |
| WK082603      | Wijk 03 Strijen                   | 50         |
| WK082604      | Wijk 04 Leijsenakkers             | 20         |
| WK082605      | Wijk 05 Oosterheide               | 150        |
| WK082606      | Wijk 06 Dommelbergen              | 230        |
| WK082607      | Wijk 07 Vrachelen                 | 110        |
| WK082608      | Wijk 08 Industrieterrein Zuid     | 0          |
| WK082609      | Wijk 09 Industrieterrein Noord    | NULL       |
| WK082610      | Wijk 10 Buitengebied Oosterhout   | 0          |
| WK082611      | Wijk 11 Den Hout                  | 10         |
| WK082612      | Wijk 12 Oosteind                  | 10         |
| WK082613      | Wijk 13 Dorst                     | 50         |

*Table 1: Key figures, districts and neighbourhoods (SN, 2020); [Unemployment benefits](https://www.cbs.nl/nl-nl/maatwerk/2020/29/kerncijfers-wijken-en-buurten-2020)*

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #E6EE9C; border-color: #E6EE9C;">
9. Create a correct relationship between the table toewijzingen_unemp and a table from the youth care data collection 2 that includes geographic information, which can be linked to the clients.
</div>

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #000000;; background-color: #C0CA33; border-color: #C0CA33;">
10. Produce a list with the name (first and  surname), gender, neighborhood id, 'wachttijd' for those clients who have such a 'wachttijd', which is the shortest 'wachttijd' of any of the neighborhoods.
</div>

***

### __Part 2: Analysis & Visualization__

For part 2 of the assignment, you are going to import the youth care dataset, you created in part 1 of the assignment, into Power BI, and perform operations on the data to provide insightful visualizations.

<img src="./images/power_bi.jpg" alt="Power BI dashboard" width="650"/> \
*Figure 2. Power BI dashboard example*

__Requirements:__

- Import PostgreSQL database to Power BI.
- Create a maximum of 5 dashboard pages.
- Import the results from ML analyses, in 'flat-file' format, to Power BI.
- Clean and/or transform the data that is imported into Power BI.
- Use visualizations that are appropriate for the data type you are working with. See Microsoft’s visualization guideline in Literature.
- Visualize descriptive statistics in the dashboard.
- Visualize results of the ML model(s) in the dashboard.
- Record or perform a live demo of the dashboard (to stakeholders). The demo should not take longer than 5 minutes.
- Provide a pleasant User experience (UX) for the dashboard: layout, buttons etc. See book by Stull (2018) in Literature.
- Optimize (a part of) the data pipeline (i.e. dashboard) in terms of performance and security. See Microsoft’s (e.g. Kesselman et al.) optimizing performance and security in Literature.

***

## __Codebook__

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
