SELECT emp_no, last_name, first_name, sex, salary
FROM Employees;

SELECT first_name, last_name, hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT dm.dept_no, dm.emp_no AS manager_emp_no, e.last_name AS manager_last_name, e.first_name AS manager_first_name
FROM Dept_Manager dm
JOIN Employees e ON dm.emp_no = e.emp_no;

SELECT de.emp_no, e.last_name, e.first_name, de.dept_no
FROM Dept_Emp de
JOIN Employees e ON de.emp_no = e.emp_no;

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.emp_no, e.last_name, e.first_name
FROM Employees e
JOIN Dept_Emp de ON e.emp_no = de.emp_no
JOIN Departments d ON d.dept_name = d.dept_name
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM Employees e
JOIN Dept_Emp de ON e.emp_no = de.emp_no
JOIN Departments d ON d.dept_name = d.dept_name
WHERE d.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) as name_frequency
FROM Employees
GROUP BY last_name
ORDER BY name_frequency DESC;


