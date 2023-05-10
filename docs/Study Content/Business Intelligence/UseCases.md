---
sort: 3
---

# __DataLab: Creative Brief__

## __Data Management and Analysis with PostgreSQL and Python__

### Chapter overview

I. Databases, Data Definition Language (DDL) clauses I & Data Manipulation Language (DML) clauses <br>
II. Data Query Language (DQL) clauses <br>
III. __DataLab: Use-Cases__ <br>
IV. Data Definition Language (DDL) clauses II & Python <br>
V. __DataLab: Use-Cases <br>__ 

### Introduction

The focus of this week is on the second phase of the CRISP-DM process, which deals with __*Data Understanding and Preparation*__. To be more specific, our main goal will be to, __*individually*__, examine the datasets that we will be using for the project.

By conducting an Exploratory Data Analysis (EDA), we will be able to gain a better understanding of the data and detect any potential data quality problems that we might have to deal with during the project. Moreover, this will assist you and your team members in developing data-driven solutions to the issues presented by the municipality.

The knowledge module, __*Data Management and Analysis with PostgreSQL and Python*__, is divided into four use-cases, which are described in the following sections. Each use-case is related to a criteria of ILO 5:

> __5.0 Data Understanding  and Preparation__ <br>
The student is able to collect, combine, and explore the data. Further, they can assess data quality, and provide recommendations to improve the data management strategy. 

The criteria 'Poor', which is about clearly evidencing your individual contributions, is not included as a separate use-case, because it is assumed that you will be able to complete this without any additional instructions. However, if you are struggling with the use-cases, you can always ask the teaching staff for help.

### Use-cases

Here is a table of the use-cases and their description.

| Use-Case | Description | Dataset | Week | Individual/Team
|----------|-------------|-------------|-------------|-------------|
| 1 | Select, combine, and preproccess the data | All | Weeks 2-8 | Individual/Team 
| 2 | Describe, and explore the data | Selected dataset(s) | Week 2 | Individual
| 3 | Assess the quality of the data | Selected dataset(s) | Week 2 | Individual/Team
| 4 | Propose improvements to the data management strategy | N.A. | Week 2-8 | Team

:bell: Before we start, please make sure you have read the sections on Deliverables and Plagiarism you can find in the bottom of this page.

**Let's get started: Keep the coffee flowing and the music playing!**

:thumbsup: :headphones: :coffee:

***

### Use-case 1: Select, combine, and preproccess the data

In this use-case, which is related to the 'Insufficient' criteria of ILO 5, you will be asked to select, combine, and preproccess the data. For example, you will need to select the relevant datasets for your business problem, and combine them into a single dataset and/or database. In addition, you will also need to preproccess the data in such a way that it is ready for analysis. 

__To solve this use-case, you will need to:__

- [ ] Define your research questions: Start by defining some [research questions](https://bookdown.org/rdpeng/artofdatascience/chapter-question.html) that you could answer with the data. This will help you to determine what data you need to collect and how you need to preprocess it.
- [ ] Gather the data: Collect relevant data from various sources such as databases, APIs, or CSV files. Ensure that the data is in a format that can be easily processed.
- [ ] Combine the data: Merge data from different sources if necessary. Ensure that the keys for merging are consistent across all datasets.
- [ ] __*Documents individual contribution:*__ Keep track of the data you have selected and the steps you have taken to preprocess the data. 

***

### Use-case 2: Describe, and explore the data 

In this use-case, which is related to the 'Sufficient' criteria of ILO 5, you will be asked to perform an Exploratory Data Analysis (EDA), which will help you to get a better understanding of your data, identify patterns, detect outliers, and gain insights that can guide further analysis :sunglasses:. 

__To solve this use-case, you will need to:__

- [ ] Familiarize yourself with the data: Understand the structure, format, and types of variables present in the data.
- [ ] Identify the key variables: Identify the variables that are most important to your analysis and focus on exploring those.
- [ ] Perform descriptive statistics: Use summary statistics such as mean, median, standard deviation, and range to describe the data.
- [ ] Visualize the data: Use graphs, charts, and histograms to explore the distribution of the data and identify any patterns or outliers.
- [ ] Identify any missing or incomplete data: Check for any missing or incomplete data. More on this in the next use-case!
- [ ] __*Documents individual contribution:*__ Keep track of any interesting findings or insights you discover during the analysis process. 

__How to connect to the PostgreSQL database:__

First you will need to be connected tto the BUas VPN. You can find the instructions on how to do this [here](https://adsai.buas.nl/Study%20Content/VPN%20Access/VPN%20Access.html). Once you are connected to the VPN you will be able to connect to the database.

Use the following code to connect to the database:

```python
from sqlalchemy import create_engine

user = "user1"
password = "1234"
host = "145.101.164.141"
port = "5432"
database = "adsai_1d"

# PostgreSQL connection string
connection_string = f"postgresql://{user}:{password}@{host}:{port}/{database}"

# Create a new SQLAlchemy engine using the connection string
engine = create_engine(connection_string)
```

Use the following code to check that everything is working correctly:

```python
from sqlalchemy import text

# Define a simple query to test the connection
test_query = text("SELECT 1")

# Execute the query using the SQLAlchemy engine
result = engine.execute(test_query)

# Check if the result matches the expected output
if result.scalar() == 1:
    print("Connection successful!")
else:
    print("Connection failed!")
```
If the output is "Connection successful!" then you are good to go :+1:

You can check what data tables are available and what data relationships exist between the tables using the following code:

```python
from sqlalchemy import create_engine, MetaData
from sqlalchemy.orm import declarative_base
from sqlalchemy.inspection import inspect

metadata = MetaData(bind=engine)
metadata.reflect()

Base = declarative_base(metadata=metadata)

# List available tables
print("Tables:")
for table_name in metadata.tables:
    print(table_name)

# List relationships
print("\nRelationships:")
inspector = inspect(engine)
for table_name in metadata.tables:
    print(f"Table: {table_name}")
    for foreign_key in inspector.get_foreign_keys(table_name):
        print(f"  Foreign key: {foreign_key['constrained_columns']} -> {foreign_key['referred_table']}.{foreign_key['referred_columns']}")
```

***

### Use-case 3: Assess the quality of the data

In this use-case, which is related to the 'Good' criteria of ILO 5, you will be asked to assess the quality of the data. This will help you to identify any potential data quality problems that you might have to deal with during the project.

__To solve this use-case, you will need to:__

- [ ] Evaluate the completeness of the data: It is essential to evaluate the data's completeness by examining if there is any missing or duplicated data. If certain observations are not available, it results in missing data, while multiple records of the same observation lead to duplicated data. 
- [ ] Identify any inconsistencies or anomalies: Another important step in assessing data quality is to identify any inconsistencies or anomalies in the data. This could involve looking for outliers or unusual patterns in the data. Inconsistencies or anomalies can indicate errors in the data or problems with data collection. Identifying and addressing these issues can help ensure that the data is accurate and representative of the population being studied.

<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/OYwq0MlY11g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

*Video 1. What should you do with outliers? by Cassie Kozyrkov, the secret crush of Alican (Please do not tell his wife :grin:).*

- [ ] Check for bias: It is also important to check for bias in the data. Bias can occur when the data is not representative of the population being studied or when certain observations are overrepresented. This can result in incorrect conclusions or predictions. Identifying sources of bias can help ensure that the data is accurate and unbiased. Common sources of bias include selection bias, measurement bias, and reporting bias.
- [ ] Evaluate the quality of data sources: In addition to assessing the data itself, it is important to evaluate the quality of the data sources. This could involve assessing the methodology used for data collection.
- [ ] Draft a report, where you summarize your findings, - i.e. data quality report.  
- [ ] __*Documents individual contribution:*__ Keep track of any issues you find with the data, such as missing or incomplete data, outliers, or bias. 

***

## Use-case 4: Propose improvements to the data management strategy

In this use-case, which is related to the 'Excellent' criteria of ILO 5, you will be asked to propose improvements to the data management strategy. This will help you to identify areas where you can improve the data management strategy of the municipality of Breda. 

__To solve this use-case, you will need to:__

- [ ] Identify the current state of data management: Conduct an audit of your current data management practices to identify areas that need improvement. This may involve reviewing data management policies, procedures, and practices.

:bell: Use the Q&A session with the civil servants of the municipality of Breda to get more information about their data management strategies. 

- [ ] Define the scope of the proposal: Determine the specific goals and objectives of your data management improvement proposal. This might include improving data accuracy, enhancing data security, or improving data accessibility.
- [ ] Conduct a gap analysis: Identify the gap between your current state and desired future state of data management. This can help you identify specific areas where you need to focus your improvement efforts. Popular templates for conducting a gap analysis include the SWOT analysis, the McKinsey S7 framework, and the Nadler-Tushman model. For more information, click [here](https://creately.com/blog/strategy-and-planning/gap-analysis-tools/).
- [ ] Develop a roadmap: Create a detailed roadmap for implementing your data management improvement proposal. This should include timelines, resource requirements, and milestones.
- [ ] Determine the costs and benefits: Evaluate the costs and benefits of your proposed improvements (Also see previous step!). This will help you make a strong business case for your proposal.
- [ ] Develop a communication plan: Develop a communication plan to engage stakeholders and keep them informed of your progress. This can help ensure that your proposal is well-received and supported by your organization.
- [ ] Monitor: Finally, determine how you could monitor the the effectiveness of you proposed improvements. This will help you ensure that your improvements are achieving their desired outcomes and making a positive impact on your organization.
- [ ] __*Documents individual contribution:*__ Keep track of your proposed improvements to the data management strategy of the municipality of Breda.

If you have come this far, you have now completed the Creative Brief section for the knowledge module __*Data Management and Analysis with PostgreSQL and Python*__. Congratulations! :tada: :tada: :tada:

:trophy: If you still have time remaining, please have a look at the Medal Challenges!

***

### Deliverables

If you are done with the use-cases, ensure that you have saved and committed all your (individual) work to Github:

- [ ] Individual contribution to the use-cases. As evidence, you can, for example, include Python scripts, SQL queries, and/or markdown files.
- [ ] The data quality report (Use-case 3)
- [ ] The data management strategy proposal (Use-case 4)

***

### Plagiarism

Please note that plagiarism is a serious offense. You are encouraged to use the internet to help you with your analyses, but you must ensure that you cite your sources. However, if your code, and/or accompanied explanation(s) (e.g., inline-comments, texts in markdown block, etc.), exactly resembles the code, and/or explanation(s) of another student, you will be reported to the Board of Examiners. You are encouraged to discuss the use-cases with your peers, but you must ensure that you write your own code, and provide your own explanation(s). If you are unsure about whether your code, and/or explanation(s) are similar to another student's code, and or explanation(s), please ask your mentor to review your work. 

***
