SELECT emp.emp_no, first_name, last_name, salary, dept_name
FROM employees emp,salaries sal,dept_emp dpn, departments dep
WHERE
emp.emp_no = sal.emp_no
and dpn.emp_no = emp.emp_no
and dep.dept_no = dpn.dept_no
--group by first_name
order by last_name
;