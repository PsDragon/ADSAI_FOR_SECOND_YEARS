---
sort: 4
---

## __SQL: Data Query Language (DQL) clauses__
\
\
<img src="./images/books_banner.png" alt="Books banner" width="600"/>

### 1. Introduction

Today's independent study material focusses a specific type of SQL, Data Query Language (DQL), which is comprised by SQL clauses that allow you to retrieve data from a database.

<img src="./images/sql_types_2.png" alt="Books banner" width="450"/>

*Figure 1. Types of SQL.*

__1a__ Complete the ```What Can I Do With A Database?``` module in Codeacademy, which you can find [here](https://www.codecademy.com/paths/design-databases-with-postgresql/tracks/what-can-i-do-with-a-database/modules/what-can-i-do-with-a-database/informationals/what-can-i-do-with-a-databases).

***

### 2. Basic queries

In this section, you are going to experience how you, as a data analyst, can truly benefit from using SQL:

> One of the core purposes of the SQL language is to retrieve information stored in a database. This is commonly referred to as querying. Queries allow us to communicate with the database by asking questions and returning a result set with data relevant to the question (Codeacademy, Design databases with PostgreSQL).

__2a__ Is the following SQL clause written correctly? Explain your answer.

``` sql
select ClientKey, ClientGeslacht
FROM youth;
```

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

__2b__ The data analyst of the municipality of Oosterhout wants to permanently change the title of the column ClientKey to ClientID in the table youth. Write an SQL statement to successfully solve this task.

__2c__ Once in a while the youth care database gets filled with erroneous data. To tackle this issue the data analyst of the municipality of Oosterhout regularly runs an SQL query that checks if the values in the column NotaJaar are always greater than the values in the column GeboorteJaar. Prepare and run such an SQL statement.

__2d__ Can you apply an ORDER BY with multiple columns? Explain your answer.

__2e__ What will happen when the data analyst runs the following SQL query on table 1:

``` sql
SELECT *
FROM youth
LIMIT 25;
```
Write your answer down.

__2f__ Which of the three SQL queries below is correctly written?

Example 1:

``` sql
SELECT ClientKey
  CASE
    WHEN NotaRegelBedrag < 50 THEN 'Categorie A'
    ELSE 'Categorie B'
  END AS 'Kosten'
FROM youth;
```

Example 2:

``` sql
SELECT ClientKey,
FROM youth
  CASE
    WHEN NotaRegelBedrag < 50 THEN 'Categorie A'
    ELSE 'Categorie B'
  END AS 'Kosten';
```

Example 3:

``` sql
SELECT ClientKey
FROM youth
  CASE
    WHEN NotaRegelBedrag < 50 THEN 'Categorie A'
    ELSE 'Categorie B'
  END AS 'Kosten';
```

Write your answer down.

### 3. Aggregate functions

An aggregate function performs a calculation on a set of values, and returns a single value. For example, the SQL function AVG() takes a list of values, and returns the mean value of them.

__3a__ The data analyst of the municipality of Oosterhout is almost finished for the day when his manager pops in and asks if he can provide a list with the number of unique clients for the municipal council meeting (we might run into some ethical issues here....whoops...). Write an SQL statement that solves this task.

__3b__  How does the COUNT() function differ from the SUM() function? Write your answer down.

***

### 4. Multiple tables

By deploying SQL join statements you can get information from columns in more than one table. These operations are specified by placing the names of those tables that you want to join in the same FROM clause of a SELECT statement.

<img src="./images/sql_joins.PNG" alt="Books banner" width="600"/>

*Figure 2. SQL joins & Set theory.*

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Want to explore the mathematical foundations of these SQL join operators, see Khanacademy' <a href="(https://www.khanacademy.org/math/statistics-probability/probability-library/basic-set-ops/v/intersection-and-union-of-sets">Basic set operations</a> tutorial.
</div>

__4a__ There is no difference between a JOIN and INNER JOIN statement. True or false? Explain your answer.

__4b__ List at least two requirements for a PRIMARY KEY. Write your answer down (Hint: take a look at Table 1!).

__4c__ What happens if the tables you perform a UNION operator on have duplicate rows? Explain your answer.

__4d__ What is the main difference between the join operators (e.g. INNER JOIN, LEFT JOIN etc.) and the UNION operator? Write your answer down.

***

### 5. Additional resources

<img src="./images/data_warrior.png" alt="Books banner" width="450"/>

*Figure 3. An example of how you might look when you reach the level of data wrangling SQL wizard/action hero/avatar etc...*

Do you have time left, and want to stay on track to eventually become a data wrangling SQL wizard, explore the following additional resources:

__Interactive exercises:__
- PostgreSQL Exercises: [All remaining exercises, except the ones listed under the header 'Recursive'](https://pgexercises.com/).
- Intro to SQL: Querying and managing data: [All remaining exercises](hhttps://www.khanacademy.org/computing/computer-programming/sql/).

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Select your practice exercises wisely, not all are relevant for the assignment (See Assignment Part 1 requirements in the Project Brief).
</div>

__Instructional videos:__
- LinkedIn Learning: [PostgreSQL Essential Training](https://www.linkedin.com/learning/postgresql-essential-training/manage-relational-data-with-postgresql?resume=false&u=36359204).

__Books/articles/webpages etc.:__
- Batra, R. (2018). SQL primer: An accelerated introduction to SQL basics. (Freely available through BUAS' MetaSearch).
- W3schools: [SQL Tutorial](https://www.w3schools.com/sql/default.asp).

***

## __Codebook__

|Number|Variable           |Description              |
|------|-------------------|-------------------------|
|1     |ClientKey          |Client ID                |
|2     |ClientVoornamen    |Client first name        |
|3     |ClientTussenvoegsel|Client middle name       |
|4     |ClientAchternaam   |Client last name         |
|5     |GeboorteJaar       |Client birth year        |
|6     |ClientGeslacht     |Client sex               |
|7     |NotaRegelBedrag    |Invoice amount in Euro's |
|8     |NotaJaar           |Invoice year             |
|9     |NotaKwartaal       |Invoice quarter          |
|10    |NotaMaand          |Invoice month            |
|11    |BuurtCode          |Neighborhood ID          |
|12    |BuurtNaam          |Neighborhood name        |


***

## __Literature__

Batra, R. (2018). SQL primer: An accelerated introduction to SQL basics. (Freely available through BUAS' MetaSearch).
