CREATE TABLE Departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name CHAR(20)
);

CREATE TABLE Titles (
    title_id VARCHAR PRIMARY KEY(10),
    title CHAR(20),
    FOREIGN KEY (title_id) REFERENCES Departments(dept_no)
);

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(20),
    birth_date DATE,
    first_name CHAR(20),
    last_name CHAR(20),
    sex CHAR(10),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Salaries (
    emp_no INT PRIMARY KEY,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_Emp (
    emp_no INT,
    dept_name CHAR(20),
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);

CREATE TABLE Dept_Manager (
    dept_no VARCHAR(10),
    emp_no INT,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (dept_no) REFERENCES Dept_Emp(dept_name)
);


ALTER TABLE departments
ALTER COLUMN dept_no TYPE VARCHAR(10),
ALTER COLUMN dept_name TYPE CHAR(20);

ALTER TABLE titles
ALTER COLUMN title_id TYPE VARCHAR(10),
ALTER COLUMN title TYPE CHAR(30);

ALTER TABLE employees
ALTER COLUMN emp_no TYPE INT(10),
ALTER COLUMN birth_date TYPE DATE USING birth_date::DATE;
ALTER COLUMN first_name TYPE CHAR(20),
ALTER COLUMN last_name TYPE CHAR(20),
ALTER COLUMN sex TYPE CHAR(1),
ALTER COLUMN hire_date TYPE DATE(8);

ALTER TABLE salaries
ALTER COLUMN emp_no TYPE INT,
ALTER COLUMN salary TYPE INT;

ALTER COLUMN dept_emp
ALTER COLUMN emp_no TYPE INT,
ALTER COLUMN dept_name TYPE CHAR(20);

ALTER COLUMN dept_manager
ALTER COLUMN dept_no TYPE VARCHAR(4),
ALTER COLUMN emp_no TYPE INT;
