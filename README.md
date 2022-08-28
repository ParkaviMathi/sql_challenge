# sql_challenge
Unit 9 Homework: Employee Database


It’s a beautiful spring day, and it’s been two weeks since I was hired as a new data engineer at Pewlett Hackard. My first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.
In this assignment, I'll be designing the tables to hold data in the CSVs, importing the CSVs into a SQL database, and answering questions about the data. In other words, I;ll will perform data modeling, data engineering, and data analysis.





This assignment is divided into three parts: data modeling, data engineering, and data analysis.

Data Modeling
The CSVs from the Resources folder were inspected  andan ERD of the tables was sketched out  using the tool  http://www.quickdatabasediagrams.com.
The ERD Image has been Uploaded in the Image File.

Data Engineering
Six Table Schemas were created using the provided information form the six CSV Files with specification of Data Types, Promary Keys, Foreign Keys and other constraints.
Composite Keys were created by taking to Pimary Keys to uniquely identify a row when the Primary Keys were not Unique.
CSV files were imported into the corresponding SQL tables.


Data Analysis
Eight View Tables were created to list the follwing details from the database.

Details of each employee: employee number, last name, first name, sex, and salary.

First name, last name, and hire date for employees who were hired in 1986.

The manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

The department of each employee with the following information: employee number, last name, first name, and department name.

First name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

All employees in the Sales department, including their employee number, last name, first name, and department name.

All employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

The frequency count of employee last names (i.e., how many employees share each last name) in descending order.

