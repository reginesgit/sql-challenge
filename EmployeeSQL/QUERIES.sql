-- 1. 
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;

--2. 
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986/01/01' AND '1986/12/31';

--3. 
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d
INNER JOIN dept_manager dm
ON d.dept_no = dm.dept_no
LEFT OUTER JOIN employees e
ON dm.emp_no = e.emp_no

--4. 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON de.dept_no = d.dept_no;

--5. 
SELECT first_name, last_name, sex
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--6. 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
RIGHT JOIN dept_emp de
ON e.emp_no = de.emp_no
RIGHT JOIN departments d
ON d.dept_no = de.dept_no
	WHERE d.dept_name LIKE 'Sales'

--7. 
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
RIGHT JOIN dept_emp de
ON e.emp_no = de.emp_no
RIGHT JOIN departments d
ON d.dept_no = de.dept_no
	WHERE d.dept_name LIKE 'Sales' or d.dept_name LIKE 'Development'
	
--8.
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;