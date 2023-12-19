Departments
-
dept_no VARCHAR PK 
dept_name CHAR 

Titles
-
title_id VARCHAR PK FK -< Employees.emp_title_id
title CHAR

Employees 
-
emp_no INTEGER PK
emp_title_id CHAR(5) 
birth_date DATE
first_name CHAR(40)
last_name CHAR(40)
sex CHAR(1)
hire_date DATE

salaries
-
emp_no INTEGER PK FK >- Employees.emp_no
salary INTEGER(7)


Dept_Emp
-
emp_no INT PK FK >- salaries.emp_no
dept_name VARCHAR FK >- Departments.dept_name

Dept_Manager
-
dept_no VARCHAR FK >- Departments.dept_no
emp_no INT PK FK >- dept_emp.emp_no