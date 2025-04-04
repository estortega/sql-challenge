# Pewlett Hackard: Employee Database Analysis

My assignment for this project was to recover and analyze employee data from the 1980s and 1990s. The only remaining data came in the form of six CSV files. My objective was to reconstruct the database structure, import the data, and perform queries to answer specific business questions.

This project gave me the opportunity to apply data modeling, data engineering, and SQL-based data analysis techniques.

# 📁 Project Structure
Repository Name: sql-challenge
Project Folder: EmployeeSQL
Tools Used: PostgreSQL, SQLAlchemy, QuickDBD (for ERD)

# 🚧 Step 1: Data Modeling
I began by inspecting all six CSV files to understand the data relationships. Using QuickDBD, I drafted an Entity Relationship Diagram (ERD) to define how the tables should be connected and what keys were required.

# 🏗️ Step 2: Data Engineering
With the ERD as my guide, I created a schema that included:

Proper data types for each column.
Primary keys and foreign keys for table relationships.
Constraints to preserve data integrity.
Composite keys where necessary.
Once the schema was finalized, I created the tables in PostgreSQL in the correct order to avoid foreign key conflicts. I then imported each CSV file into its corresponding table using COPY or psql.

# 📊 Step 3: Data Analysis
Using SQL queries, I answered a series of analytical questions about the company’s employee records:

- Employee Roster: Retrieved each employee’s number, last name, first name, sex, and salary.
 - 1986 Hires: Listed the first name, last name, and hire date for employees hired in 1986.

- Department Managers: Found the manager of each department along with their department number, name, and employee details.

-Employee Departments: Listed each employee with their corresponding department info.

- Specific Name Filters: Pulled first name, last name, and sex of employees named Hercules whose last name begins with "B".

-Sales Team: Listed all employees in the Sales department.

-Sales & Development Teams: Listed all employees in both Sales and Development, along with department names.

- Popular Last Names: Displayed a count of how many employees share each last name, sorted by frequency.


This project was a great exercise in full-cycle data engineering—from understanding raw files to delivering meaningful insights with SQL. It reinforced my ability to work with relational databases and prepare data for any business needs.
