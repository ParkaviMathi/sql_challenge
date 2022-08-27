CREATE TABLE Departments_db(
		Dept_No VARCHAR(10) PRIMARY KEY,
		Dept_Name VARCHAR(30)
);


CREATE TABLE Dept_Emp_db(
	Emp_No INT ,
	Dept_No VARCHAR(10),
	PRIMARY KEY (Emp_No,Dept_No),	
	FOREIGN KEY (Dept_No) REFERENCES Departments_db(Dept_No)	
);
	

CREATE TABLE Titles_db(
	Title_ID VARCHAR(20) PRIMARY KEY,
	Title VARCHAR(30)
);
	

CREATE TABLE Employees_db(
		Emp_No INT PRIMARY KEY,
		Emp_Title_Id VARCHAR(10),
		FOREIGN KEY (Emp_Title_Id) REFERENCES Titles_db(Title_ID),
		Birth_Date VARCHAR(20),
		First_Name VARCHAR(30),
		Last_Name VARCHAR (30),
		Sex VARCHAR (10),
		Hire_Date VARCHAR (20)
);	

		
CREATE TABLE Salaries_db(
	Emp_No INT PRIMARY KEY,
	FOREIGN KEY (Emp_No) REFERENCES Employees_db(Emp_No),
	Salary INT 
);
	
		
CREATE TABLE Dept_Manager_db(
		Dept_No VARCHAR(10),
		FOREIGN KEY (Dept_No) REFERENCES Departments_db(Dept_No),
		Emp_No INT ,
		FOREIGN KEY (Emp_No) REFERENCES Employees_db(Emp_No),
		PRIMARY KEY (Dept_No,Emp_No)	
);

	
