-- Creating Table Schema

CREATE TABLE employees(
	emp_no int PRIMARY KEY,
	birth_date varchar(10) NOT NULL,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	gender varchar(1) NOT NULL,
	hire_date varchar(10) NOT NULL	
);

CREATE TABLE salaries(
	emp_no int PRIMARY KEY,
	salary int,
	from_date varchar(10) NOT NULL,
	to_date varchar(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
	emp_no int PRIMARY KEY,
	salary int,
	from_date varchar(10) NOT NULL,
	to_date varchar(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Importing CSV files