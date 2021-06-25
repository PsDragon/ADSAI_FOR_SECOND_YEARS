---
sort: 7
---

## __Block B: Assignment__

### __Sub-section A__
\
__Procedure:__

Each colour block corresponds to a specific criterion of ILO 1. To attain a certain skill-level, e.g. yellow (Level 2, 'Sufficient'), you need to answer all the questions in the corresponding colour block correctly.

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
5. Produce a list of the total number of ... in the table data1 .
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

## __Codebook__

| Variable      | Data type    | Description                                          |
|---------------|--------------|------------------------------------------------------|
| gwb_code_10   | String       | District ID                                          |
| regio         | String       | District name                                        |
| A_soz_ww      | Integer      | Number of people who receive unemployment benefits   |
