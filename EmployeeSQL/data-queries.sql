-- Employee number, last name, first name, gender, and salary for each employee
select emp_no, last_name, first_name, gender, salary
from employees
join salaries
using(emp_no);

-- First name, last name, hire date for employees hired in 1986


-- Manager of each dept with dept number, dept name, employee number, last name, first name


-- Employee number, last name, first name, and dept name


-- First name, last name, and gender for employees with first name "Hercules" and last name starting with "B"


-- All employees in sales dept (employee number, last name, first name, dept name)


-- All employees in Sales and Development depts (eployeed number, last name, first name, dept name)


-- Frequency of employee last names in descending order

