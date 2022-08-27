--Query Tables
SELECT * FROM Departments_db

SELECT * FROM Dept_Emp_db

SELECT * FROM Titles_db

SELECT * FROM Employees_db

SELECT * FROM Salaries_db

SELECT * FROM Dept_Manager_db


--Creating a View Table to List the employee number, last name, first name, sex, and salary of each employee.	
CREATE VIEW Emp_Details AS
	SELECT E.Emp_No, E.Last_Name, E.First_Name,E.Sex, S.Salary
	FROM Employees_db AS E
	JOIN Salaries_db AS S
	ON (E.Emp_No = S.Emp_No);

--Creating a View Table to List first name, last name, and hire date for employees who were hired in 1986.
CREATE VIEW Hire_1986 AS
	SELECT First_Name, Last_Name, Hire_Date
	FROM Employees_db
	where Hire_Date Like '%1986';

--Creating a View Table to List the manager of each department with department number, department name, the manager's employee number, last name, first name. 
CREATE VIEW Manager_Dept AS
	SELECT D.Dept_No,
		D.Dept_Name,
		DM.Emp_No,
		E.Last_Name,
		E.First_Name
	FROM Departments_db AS D
	JOIN Dept_Manager_db AS DM
	ON (D.Dept_No = DM.Dept_No)
		JOIN Employees_db AS E
		ON (DM.Emp_No = E.Emp_No);

--Creating a View Table to List the department of each employee with employee number, last name, first name, and department name.
CREATE VIEW Empl_Dept AS
	SELECT 
	    E.Emp_No,
		E.Last_Name,
		E.First_Name,
		D.Dept_Name
	FROM Departments_db AS D
	JOIN Dept_Emp_db AS DE
	ON (D.Dept_No = DE.Dept_No)
		JOIN Employees_db AS E
		ON (DE.Emp_No = E.Emp_No);

--Creating a View Table to List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
CREATE VIEW Hercules_B AS
	SELECT First_Name,
		Last_Name,
		sex
	FROM Employees_db
	WHERE First_Name = 'Hercules' AND
	Last_Name LIKE 'B%';

--Creating a View Table to List all employees in the Sales department, including their employee number, last name, first name, and department name.
CREATE VIEW Empl_Sales AS
	SELECT 	E.Emp_No,
		E.Last_Name,
		E.First_Name,
		D.Dept_Name
	FROM Departments_db AS D
	JOIN Dept_Emp_db AS DE
	ON (D.Dept_No = DE.Dept_No)
		JOIN Employees_db AS E
		ON (DE.Emp_No = E.Emp_No)
	WHERE D.Dept_Name = 'Sales';
	
--Creating a View Table to List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
CREATE VIEW Empl_Sales_Dev AS
	SELECT 	E.Emp_No,
		E.Last_Name,
		E.First_Name,
		D.Dept_Name
	FROM Departments_db AS D
	JOIN Dept_Emp_db AS DE
	ON (D.Dept_No = DE.Dept_No)
		JOIN Employees_db AS E
		ON (DE.Emp_No = E.Emp_No)
	WHERE D.Dept_Name = 'Sales' or D.Dept_Name = 'Development';
SELECT * FROM Empl_Sales_Dev
drop view Empl_Sales_Dev	

--Creating a View Table to List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
CREATE VIEW Empl_Last_Count AS
	SELECT 	Last_Name, count(Emp_No) as Frequency
	FROM employees_db
	GROUP BY Last_Name 
	order by Frequency DESC;


--Querying the View Tables
SELECT * FROM Emp_Details 

SELECT * FROM Hire_1986

SELECT * FROM Manager_Dept

SELECT * FROM Empl_Dept

SELECT * FROM Hercules_B

SELECT * FROM Empl_Sales

SELECT * FROM Empl_Sales_Dev

SELECT * FROM Empl_Last_Count


--Droping all the View Tables
DROP VIEW emp_details

DROP VIEW manager_dept

DROP VIEW Manager_Dept

DROP VIEW Empl_Dept

DROP VIEW Hercules_B

DROP VIEW Empl_Sales

DROP VIEW Empl_Sales_Dev

DROP VIEW Empl_Last_Count
