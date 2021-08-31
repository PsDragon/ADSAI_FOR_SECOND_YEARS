---
sort: 5
---

## __SQL: Data Definition Language (DDL) clauses 2__
\
\
<img src="./images/books_banner.png" alt="Books banner" width="600"/>

### 1. Introduction

With today's independent study material you are going to deepen your knowledge on relational database design. For example, you will learn to compare and implement various types of database relationships (e.g. One-to-one, many-to-one etc.). Furthermore, you will acquire skills that enable you to correctly deploy DDL related SQL clauses such as PRIMARY KEY, and REFERENCES.

<img src="./images/sql_types_3.png" alt="Books banner" width="450"/>

*Figure 1. Types of SQL.*

__1a__ Complete the ```How Do I Make And Populate My Own Database?``` module in Codeacademy, which you can find [here](https://www.codecademy.com/paths/design-databases-with-postgresql/tracks/how-do-i-make-and-populate-my-own-database/modules/how-do-i-make-and-populate-my-own-database/informationals/how-do-i-make-and-populate-my-own-database).

***

### 2. What is a database schema/key?

A database schema is a schematic design that represents the storage of your data in a database. It describes both the organization of data and the relationships between tables in a given database.

Some database schemas are written in a language that can be interpreted by database management software, while others are comprised by abstract diagrams.

<img src="./images/database_schema.jfif" alt="Books banner" width="600"/>

*Figure 2. Example of a database schema.*

__2a__ The municipality of Oosterhout asks you, as the new data analyst, to build a relational database with the data from Table 1. How would you solve this task? Elaborate on your approach.

|ClientKey|ClientVoornamen|ClientTussenvoegsel|ClientAchternaam|GeboorteJaar|ClientGeslacht|NotaRegelBedrag|NotaJaar|NotaKwartaal|NotaMaand|BuurtCode |BuurtNaam              |
|---------|---------------|-------------------|----------------|------------|--------------|---------------|--------|------------|---------|----------|-----------------------|
|1        |Bader          |van                |Wilgenburg      |2007        |Jongen        |49.8           |2019    |Qtr 3       |September|BU08260102|Slotjes-West           |
|2        |Lorena         |?                  |Steensma        |2010        |Meisje        |0.3            |2020    |Qtr 4       |October  |BU08261300|Dorst                  |
|3        |Jikke          |?                  |Bosveld         |2007        |Jongen        |50.1           |2020    |Qtr 2       |June     |BU08261307|Buitengebied Dorst-Zuid|
|4        |Maroua         |de                 |Backer          |2009        |Meisje        |2022.21        |2015    |Qtr 4       |November |BU08260601|Sterrenbuurt           |
|5        |Izaak          |?                  |Lake            |2008        |Jongen        |67.8           |2019    |Qtr 2       |June     |BU08260300|Vogelbuurt             |
|6        |Izaak          |?                  |Lake            |2008        |Jongen        |90.5           |2019    |Qtr 4       |October  |BU08260300|Vogelbuurt             |


*Table 1. Table with demographic and geographic information from the youth care database*

The table can downloaded as a csv.-formatted file, [here](../../Study%20Content/Business%20Intelligence/data/SQL_DDL1_exercise1_correct_v2.csv).

__2b__ What is 'snake case'? Provide an example based on the data in Table 1.

__2c__ Since there is a client who has multiple 'toewijzingen', there are repeated listings of this client in Table 1. Write an query that designates multiple columns in the table to serve as the primary key (should include the column ClientKey!).

***


### 3. What are database relationships?

Relationships are the cornerstone of relational databases. Data analyst/engineers can query the database and get results that combine data from different tables into a single table. In the Design databases with PostgreSQL course on Codeacademy, you are made familiar with the three types of database relationships; One-to-one, many-to-one, and many-to-many.

__3a__ The municipality of Oosterhout asks you to provide an brief presentation on relational databases to policymakers from the social domain. As part of your preparation your come up with three examples of for each database relationship type (See Table 2). Write your examples down.

|Database relationship|Example 1|Example 2|Example 3|
|---------------------|---------|---------|---------|
|One-to-one           |         |         |         |
|Many-to-one          |         |         |         |
|Many-to-many         |         |         |         |

*Table 2. Types of database relationships.*

***

### 4. Additional resources

Do you have time left, and want to review the material
in this section of the Project Brief, explore the following additional resources:

__Instructional videos:__
- LinkedIn Learning: [PostgreSQL Essential Training](https://www.linkedin.com/learning/postgresql-essential-training/manage-relational-data-with-postgresql?resume=false&u=36359204).
- LinkedIn Learning: [Learning Relational Databases](https://www.linkedin.com/learning/learning-relational-databases-2/welcome?resume=false&u=36359204).

__Books/articles/webpages etc.:__
- Batra, R. (2018). SQL primer: An accelerated introduction to SQL basics. (Freely available through BUAS' MetaSearch).
- W3schools: [SQL Tutorial](https://www.w3schools.com/sql/default.asp).

***

## __Literature__

Batra, R. (2018). SQL primer: An accelerated introduction to SQL basics. (Freely available through BUAS' MetaSearch).
