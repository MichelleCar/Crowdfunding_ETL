-- Create the Crowdfunding Database
-- Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBD Links to an external site..
-- Use the information from the ERD to create a table schema for each CSV file.
-- Note: Remember to specify the data types, primary keys, foreign keys, and other constraints.
-- Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and save it to your GitHub repository.
-- Create a new Postgres database, named crowdfunding_db.

-- Using the database schema, create the tables in the correct order to handle the foreign keys.
-- Drop tables if they exist
DROP TABLE IF EXISTS campaigns CASCADE;
DROP TABLE IF EXISTS contacts CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS subcategory CASCADE;

-- Create category table
CREATE TABLE category (
  category_id VARCHAR(150) NOT NULL,
	PRIMARY KEY (category_id),
  category_name VARCHAR(150) NOT NULL
);

-- Create subcategory table
CREATE TABLE subcategory (
  subcategory_id VARCHAR(150) NOT NULL,
	PRIMARY KEY (subcategory_id),
  subcategory_name VARCHAR(150) NOT NULL
);

-- Create campaign table
CREATE TABLE campaign (
  cf_id VARCHAR(150) NOT NULL,
	PRIMARY KEY (cf_id),
  contact_id VARCHAR(150) NOT NULL,
  company_name VARCHAR(150) NOT NULL,
  description VARCHAR(150) NOT NULL,
  goal VARCHAR(150) NOT NULL,
  pledged VARCHAR(150) NOT NULL,
  outcome VARCHAR(150) NOT NULL,
  backers_count VARCHAR(150) NOT NULL,
  country VARCHAR(150) NOT NULL,
  currency VARCHAR(150) NOT NULL,
  launched_date VARCHAR(150) NOT NULL,
  end_date VARCHAR(150) NOT NULL,
  category_id VARCHAR(150) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
  subcategory_id VARCHAR(150) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Create contacts table
CREATE TABLE contacts (
  contact_id VARCHAR(150) NOT NULL,
	PRIMARY KEY (contact_id),
  first_name VARCHAR(150) NOT NULL,
  last_name VARCHAR(150) NOT NULL,
  email VARCHAR(150) NOT NULL
);

-- Verify the table creation by running a SELECT statement for each table.

--Print campaign table
SELECT * FROM campaign;

--Print category table
SELECT * FROM category;

--Print subcategory table
SELECT * FROM subcategory;

--Print contacts table
SELECT * FROM contacts;

-- Import each CSV file into its corresponding SQL table.

-- Verify that each table has the correct data by running a SELECT statement for each.
--Print campaign table
SELECT * FROM campaign;

--Print category table
SELECT * FROM category;

--Print subcategory table
SELECT * FROM subcategory;

--Print contacts table
SELECT * FROM contacts;