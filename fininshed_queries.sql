-- 1. 
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salaries
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

--2.
SELECT hire_date, emp_no
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

--3.
SELECT departments.dept_name, dept_manager.depo_no, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
JOIN departments ON departments.depo_no=dept_manager.depo_no
JOIN employees ON employees.emp_no=dept_manager.emp_no;

--4.
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees, departments;

--5. 
SELECT first_name, last_name
FROM employees
WHERE first_name='Hercules' and last_name LIKE 'B%';

--6. 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments
WHERE dept_name='Sales';

--7. 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees, departments
WHERE dept_name in ('Sales', 'Development');

--8. 
SELECT last_name, COUNT(last_name)AS Frequency
FROM employees
GROUP BY last_name
ORDER BY Count(last_name) DESC;