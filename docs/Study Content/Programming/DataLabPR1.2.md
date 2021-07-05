---
sort: 7
---

# 3. Data Lab 2: Python data structures exercises

If you had succesfully completed the workshop assignments yesterday, you should
now have:

- [ ] Your Python IDE set-up (Anaconda and Jupyter Notebooks)
- [ ] Familiarity with Python syntax
- [ ] A basic understanding of variable assignment, conditionals, loops and functions
     in Python.
- [ ] Familiarity with Python data types and data structures
- [ ] Familiarity with Python ```pandas```

In today's data lab, you will merge these concepts and solve the following use-cases using
Python.

## 1. RVIM Vaccine Registration

The following table indicates the vaccination schedule for people who
are not in medically at-risk or high-risk groups, who live at home and can
access the vaccination location on their own, and who do not work in healthcare

Year of Birth  |  Vaccine registration  |  Vaccine  | Location
-------------- |  ------------------------- | ----------| -------
1931 or earlier|	From 25 January 2021	    |BioNTech   |	Groningen
1932 - 1936	   |  From 29 January 2021	    |Pfizer     | Arnhem
1937 - 1941    |	From 5 February 2021	    |Pfizer 	  | Breda
1942 - 1946	   |  From 6 March 2021	        |Moderna	  | Harlingen
1947 - 1951	   |  From 6 April 2021	        |Moderna	  | Edam
1952 - 1955	   |  From 15 April 2021	      |AstraZeneca|	Amsterdam
1956 - 1957	   |  From 15 February 2021	    |AstraZeneca| Sittard
1958 - 1960    |  From 15 April 2021	      |Moderna    |	Rotterdam
1961 - 1971	   |  From 27 April 2021	      |Janssen    |	Groningen
1972 - 1981	   |  From early June 2021	    |Janssen    |	Arnhem
1982 - 1991	   |  From mid-June 2021	      |Moderna    | Breda
1992 or later  |  From mid-June 2021	      |BioNTech   |	Maastricht

**Using Jupyter notebooks, write a Python function which prints out the vaccine registration date, vaccine
and location for a user supplied year of birth. Use Python dictionaries or a Pandas dataframe to store data.**

## 2. Covid Flowchart: Should I stay or should I go?

<figure>
    <img src=".\assets\DL1_Flowchart.PNG" />
    <figcaption>Covid flowchart (Source: NHL Stenden)</figcaption>
</figure>
<br>

**Using Jupyter notebooks, write a Python function which implements the logic presented in the flowchart.**

> Hint: Use the input() command to request the user to provide an input.
