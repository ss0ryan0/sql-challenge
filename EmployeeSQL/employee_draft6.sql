ALTER TABLE titles
FOREIGN KEY (title_id)
REFERENCES employees (emp_title_id);

ALTER TABLE dept_emp
FOREIGN KEY (emp_no)
REFERENCES salaries (emp_no);

ALTER TABLE dept_manager
FOREIGN KEY (dept_no)
REFERENCES departments (dept_no)
FOREIGN KEY (emp_no)
REFERENCES dept_emp (emp_no);

