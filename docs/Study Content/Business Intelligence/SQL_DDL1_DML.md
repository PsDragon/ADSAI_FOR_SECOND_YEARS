---
sort: 2
---

## __SQL: Data Definition Language (DDL) clauses 1 & Data Manipulation Language (DML) clauses__
\
\
<img src="./images/books_banner.png" alt="Books banner" width="600"/>

### 1. Introduction

For the second half of the day, you will dive into the foundational concepts of database design, and Structured Query Language (SQL). You will start with the Design Databases With PostgreSQL course in Codeacademy, and work your way through some additional SQL exercises, which focus on Data Definition Language (DDL) and Data Manipulation Language (DML) specific clauses.

<img src="./images/sql_types_1.png" alt="Books banner" width="450"/>

*Figure 1. Types of SQL.*

__1__ Complete the ```What is a Database?``` module in Codeacademy, which you can find, [here](https://www.codecademy.com/paths/design-databases-with-postgresql/tracks/what-is-a-database/modules/welcome-to-design-databases-with-postgresql/informationals/welcome-to-design-databases-with-postgresql).

***

### 2. What is a database?

A database is an organized collection of structured information, or data, typically stored in a computer system, such as your laptop. It is usually controlled by a database management system, also known as DBMS. Together, the data and the DBMS, along with the applications that are associated with them (e.g. PostgreSQL client), are referred to as a database system, often shortened to database. In this section, you will explore the different types of databases, and their corresponding strengths and weaknesses.

__2a__ a) What is a SQL or relational database, and b) how does it differ from a so-called NoSQL database? Explain your answer

__2b__ List three advantages/disadvantages of using a relational database. Write your answer down.

__2c__ The start-up HomeRobot is looking for a lightweight relational database management system (RDBMS) that they can embed in their Internet-of-Things (IoT) application. They have asked you, as a seasoned data engineer/analyst, for advice; which RDBMS would you recommend to them? Explain your answer.

***

### 3. Install PostgreSQL database server & client

For this section of the Project Brief, you are going to install the PostgreSQL database server, and a so-called database client (e.g. PgAdmin).

__3a__ Watch the video Introduction to PostgreSQL by Adam Wilbert on LinkedIn Learning, and read the article [What is PostgreSQL?](https://www.postgresqltutorial.com/what-is-postgresql/).

[![Video 1.](./images/postgresql_linkedinlearning.png)](https://www.linkedin.com/learning/postgresql-essential-training/what-is-postgresql?u=36359204 "Click on link to open video!")
*Video 1. Introduction to PostgreSQL by Adam Wilbert.*

__3b__ Install the PostgreSQL database server:

- [Install PostgreSQL on Windows](https://www.postgresqltutorial.com/install-postgresql/).

__3c__ Install a PostgreSQL compatible client:

- [PgAdmin](https://www.pgadmin.org/download/)
- [DBeaver](https://dbeaver.io/download/)
- etc.

__3d__ Connect PostgreSQL client to server. For PgAdmin, see online [tutorial](https://www.postgresqltutorial.com/connect-to-postgresql-database/).

***

### 4. Manipulating a database

__4a__ What happens if you try to create a table with an existing name? Write your answer down.

__4b__ Identify, describe, and subsequently correct the error(s) in the following SQL statements.

Example 1a:

``` sql
CREATE TABLE youth (
  ClientKey INTEGER PRIMARY KEY,
  ToewijzingKey INTEGER,
  ClientVoornamen TEXT,
  NotaRegelBedrag NUMERIC,
  GeboorteJaar INTEGER NOT NULL
);

INSERT INTO youth
VALUES
  (
    1, 'Jan', 24, 4657, 2014
	),
	(
		1, 'Jan', 51, 45, 2014
	),
	(
		2, 'Anne', 205, 6778, 2008
	);
```

Example 1b:

``` sql
CREATE TABLE youth (
  ClientKey INTEGER PRIMARY KEY,
  ToewijzingKey INTEGER,
  ClientVoornamen TEXT,
  NotaRegelBedrag NUMERIC,
  GeboorteJaar INTEGER NOT NULL
);

INSERT INTO youth VALUES (1, 'Jan', 24, 4657, 2014);
INSERT INTO youth VALUES (1, 'Jan', 51, 45, 2014);
INSERT INTO youth VALUES (2, 'Anne', 205, 6778, 2008);
```
<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Note: Example 1a, and 1b look similar, but present a very different output when you run the corresponding SQL queries.
</div>

Example 2:

``` sql
INSERT INTO youth VALUES (11, Bert, 106, 2234.50, 2005)
```
Example 3:

``` sql
DELETE ClientKey FROM youth
WHERE youth = 11;
```

__4c__ What are constraints? List three of them, and explain why it would be beneficial to apply such as constraint?

__4d__ After placing a UNIQUE constraint on one of the variables (named 'unique_constraint') in the table above, the data analyst of the municipality of Oosterhout, receives the following error message in his PostgreSQL client: ERROR: could not create unique index "unique_constraint". Can you explain the error? What could have possibly gone wrong? Multiple answers possible.

***

### 5. Additional resources (optional)

Do you have time left, and have the desire to become a data wrangling SQL wizard, explore the following additional resources:

__Interactive exercises:__
- PostgreSQL Exercises: [Modifying data](https://pgexercises.com/questions/updates/).
- Intro to SQL: Querying and managing data: [SQL basics](https://www.khanacademy.org/computing/computer-programming/sql/sql-basics/v/welcome-to-sql), and [Modifying databases with SQL](https://www.khanacademy.org/computing/computer-programming/sql/modifying-databases-with-sql/a/using-sql-to-update-a-database).

__Instructional videos:__
- LinkedIn Learning: [PostgreSQL Essential Training](https://www.linkedin.com/learning/postgresql-essential-training/manage-relational-data-with-postgresql?resume=false&u=36359204).

__Books/articles/webpages etc.:__
- Batra, R. (2018). SQL primer: An accelerated introduction to SQL basics. (Freely available through BUAS' MetaSearch).
- W3schools: [SQL Tutorial](https://www.w3schools.com/sql/default.asp).

***

## __Literature__

Batra, R. (2018). SQL primer: An accelerated introduction to SQL basics. (Freely available through BUAS' MetaSearch).
