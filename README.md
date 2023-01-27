# Extract, Transform, and Load (ETL) - Crowdfunding Case Study
![ezgif com-gif-maker--1-](https://user-images.githubusercontent.com/115101031/214898164-a525647c-e9d6-40db-9956-c4694b86b66b.png)

## What is ETL?
ETL is a type of data integration that refers to the three steps (extract, transform, load) used to blend data from multiple sources. It's often used to build a data warehouse. During this process, data is taken (extracted) from a source system, converted (transformed) into a format that can be analyzed, and stored (loaded) into a data warehouse or other system. 

![etl-process-explained-diagram](https://user-images.githubusercontent.com/115101031/214889820-09a11cb8-f4d2-4b5b-a33a-c2952d8b2ad3.png)

#### Key reasons for using ETL are:
* Visualizing your entire data flow pipeline which helps making decisions.
* Transactional databases cannot answer all the questions that can be answered by ETL.
* ETL provides a method of moving the data from various sources into a comprehensive data warehouse.
* As data sources change, the Data Warehouse will automatically update.
* ETL process can perform complex transformations and requires the extra area to store the data.
* ETL helps to Migrate data into a Data Warehouse. Convert to the various formats and types to adhere to one consistent system.
* ETL is a predefined process for accessing and manipulating source data into the target database.
* By providing a consolidated view, ETL makes it easier for users to analyze and report on data relevant to their initiatives.
* Users can combine legacy data with data from new platforms and applications. You can view older datasets alongside more recent information, which gives you a long-term view of data.

ETL helps ensure good data hygiene and improved data analytics. In the real world, ETL tools perform many important functions like:
* Reconciling different data formats to move data from legacy systems to modern technology.
* Syncing external data from vendors, customers, suppliers.
* Consolidating data from multiple overlapping systems.
* Combining transactional data so that it can be understood by users.

#### Common ETL Challenges:
* One of the most notable challenges has to do with the sheer amount of available data. When tackling massive data sets, it’s not uncommon for ETL tools to make mistakes, lose data, or collect corrupted or irrelevant data.
* Disparate data sources are another big challenge. Not every source database and destination system are aligned. In such cases, you may need to conduct a host of different data transformations. It could also lead to redundant or duplicate data and compromise data integrity and quality. You could have trouble normalizing your data warehouse or data lake.

Sources:
* https://medium.datadriveninvestor.com/understanding-extract-transform-and-load-etl-and-its-necessity-in-data-analytics-world-with-an-64346016153d
* https://www.sas.com/en_ca/insights/data-management/what-is-etl.html#etl-importance
* https://aws.amazon.com/what-is/etl/ 
* https://pandio.com/what-is-etl-benefits-challenges-recent-advances/
* https://www.simplilearn.com/what-is-etl-process-article#:~:text=Why%20Is%20ETL%20Important%3F,legacy%20systems%20to%20modern%20technology 

## Scope of Project
Provided with two Excel files (contacts.xlsx and crowdfunding.xlsx), the ETL project entailed: 
1) Building an ETL pipeline beginning with importing and **EXTRACTING** relevant data into a DataFrame
2) **TRANSFORM** the data and create CSV files
3) Create Entity Relationship Diagram (ERD) and table schema, and **LOAD** CSV file data into Postgres database

![1_xyHfm-oLm_Tr6S-Na0SkCA](https://user-images.githubusercontent.com/115101031/214926798-688497eb-0ad1-4b7e-8518-cebfc170463e.jpeg)

#### Methodology
The scope of the project is carried out in the following way:
1) Create the Category and Subcategory DataFrames
2) Create the Campaign DataFrame
3) Create the Contacts DataFrame
4) Create the Crowdfunding Database

For the first three tasks, we have created Jupyter Notebook, using Python as our modus operandi, importing Pandas, Numpy, JSON, and Datetime libraries. For the last step we employ SQL with Postgres.

Python is an elegant, versatile language with an ecosystem of powerful modules and code libraries. Python's strengths lie in working with indexed data structures and dictionaries, which are important in ETL operations. The Python Pandas library is a painless way to accomplish Extract-Transform-Load (ETL).

After importing the crowdfunding.xlsx file, we extracted and transformed the data into a "category" and "subcategory" dataframe, which would later be merged with our "campaign" dataframe.  Once transformed, each of the "category", "subcategory", and "campaign" dataframes were exported as CSV files.

<img width="631" alt="Screenshot 2023-01-26 at 7 22 42 PM" src="https://user-images.githubusercontent.com/115101031/214979803-271f7ab3-12b8-4711-b1e5-04c955be5cb1.png">

<img width="1095" alt="Screenshot 2023-01-26 at 7 16 33 PM" src="https://user-images.githubusercontent.com/115101031/214979029-87466396-f90f-457b-8575-26e85b7b779b.png">

The extraction and transformation of the contacts.xlsx provided the last of our CSV files.

<img width="508" alt="Screenshot 2023-01-26 at 7 21 54 PM" src="https://user-images.githubusercontent.com/115101031/214979973-fb13ea57-db75-4cd4-84ca-99fbf1887d49.png">

In the load phase of the project, we sketched an ERD of the tables by using QuickDBD. Using the information from the ERD, we created a table schema for each CSV file.

<img width="541" alt="Screenshot 2023-01-26 at 7 26 23 PM" src="https://user-images.githubusercontent.com/115101031/214980270-e94233d9-2367-4dbe-b8a4-47d01f6f9415.png">

Finally, we loaded each CSV file into our a database named crowdfunding_db and created the tables.
<img width="1007" alt="crowdfunding_db table screenshots" src="https://user-images.githubusercontent.com/115101031/214982165-8f9e037a-2d1d-4e80-b761-7e610212a08e.png">

## Observations and Conclusions
* Using ETL allows you to break down data silos and makes it easy to access and analyze data, and in the real world, help organizations make informed decisions. 
* ETL helps you synthesize large amounts of information, and gives you the tools to decide which information you want to collect, how you want to transform it, and how you want to make it accessible to others.
* Taking the case study used in this project, using two Excel files, we created a database with four tables, each providing a key to further actions and analysis.
    * For example:
        * Using the category and subcategory values to determine the most effective and successful crowdfunding campaigns (by amount pledged, by the duration of the campaign, by their ability to reach or exceed their goal, by the amount of backers they had, and more)
        * We could use the contacts table to develop an interest pool for new ideas, a knowledgebase for collaboration, or support for other projects
