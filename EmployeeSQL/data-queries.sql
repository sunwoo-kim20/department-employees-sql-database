-- Employee number, last name, first name, gender, and salary for each employee
select emp_no, last_name, first_name, gender, salary
from employees
join salaries
using(emp_no);

-- First name, last name, hire date for employees hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date like '1986%';

-- Manager of each dept with dept number, dept name, employee number, last name, first name
select dept_no, dept_name, emp_no, last_name, first_name
from dept_manager
join departments
using(dept_no)
join employees
using(emp_no);

-- Employee number, last name, first name, and dept name
select emp_no, last_name, first_name, dept_name
from employees
join dept_emp
using(emp_no)
join departments
using(dept_no);


-- First name, last name, and gender for employees with first name "Hercules" and last name starting with "B"
select first_name, last_name, gender
from employees
where first_name = 'Hercules' 
and last_name like 'B%';

-- All employees in sales dept (employee number, last name, first name, dept name)
select emp_no, last_name, first_name, dept_name
from employees
join dept_emp
using(emp_no)
join departments
using(dept_no)
where dept_name = 'Sales';

-- All employees in Sales and Development depts (eployeed number, last name, first name, dept name)
select emp_no, last_name, first_name, dept_name
from employees
join dept_emp
using(emp_no)
join departments
using(dept_no)
where dept_name = 'Sales'
or dept_name = 'Development';

-- Frequency of employee last names in descending order
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc;


