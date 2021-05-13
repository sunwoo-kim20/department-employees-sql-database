-- Creating Table Schemas

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
	emp_no int,
	title varchar(40) NOT NULL,
	from_date varchar(10) NOT NULL,
	to_date varchar(10) NOT NULL,
	-- creating composite key 
	PRIMARY KEY (emp_no, title, from_date),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


CREATE TABLE departments(
	dept_no varchar(4) PRIMARY KEY,
	dept_name varchar(30)
);

CREATE TABLE dept_emp(
	emp_no int,
	dept_no varchar(4) NOT NULL,
	from_date varchar(10) NOT NULL,
	to_date varchar(10) NOT NULL,
	-- creating composite key
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
	dept_no varchar(4) NOT NULL,
	emp_no int PRIMARY KEY,
	from_date varchar(10) NOT NULL,
	to_date varchar(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Importing CSV files in the order corresponding tables were created
	-- imports completed through PostgreSQL GUI

-- Check that tables imported correctly

select *
from employees;

select *
from salaries;

select *
from titles;

select *
from departments;

select *
from dept_emp;

select *
from dept_manager;