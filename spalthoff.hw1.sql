# Q1
select count(emp_no) from employees;
# Q2
select * from departments;
# Q3
select count(emp_no) from dept_emp where dept_no="d002";
# Q4
select count(employees.emp_no) from dept_emp, employees 
	where dept_emp.emp_no = employees.emp_no and dept_no="d005" and gender="f";
# Q5
select salary from salaries order by salary DESC limit 1;
# Q6
select avg(salaries.salary) from salaries, dept_emp
	where salaries.emp_no = dept_emp.emp_no and dept_no="d001";
# Q7
select salaries.salary, employees.first_name, employees.last_name, titles.title, dept_emp.dept_no
	from employees
    join titles
    on employees.emp_no = titles.emp_no
    join salaries
    on employees.emp_no = salaries.emp_no
    join dept_emp
    on employees.emp_no = dept_emp.emp_no
    order by salary ASC limit 1;
# Q8
select employees.birth_date, employees.first_name, employees.last_name, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), birth_date)), '%Y') + 0 AS age from employees order by birth_date ASC limit 1;