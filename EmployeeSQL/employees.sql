CREATE TABLE Departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name CHAR
);

CREATE TABLE Titles (
    title_id VARCHAR PRIMARY KEY,
    title CHAR,
    FOREIGN KEY (title_id) REFERENCES Departments(dept_no)
);

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date VARCHAR,
    first_name CHAR,
    last_name VARCHAR,
    sex CHAR,
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
    dept_name VARCHAR,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);

CREATE TABLE Dept_Manager (
    dept_no VARCHAR,
    emp_no INT PRIMARY KEY,
    FOREIGN KEY (emp_no) REFERENCES Dept_Emp(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

-- For example, adding NOT NULL to emp_title_id column in Employees table
ALTER TABLE Departments
ALTER COLUMN dept_no SET NOT NULL;

ALTER TABLE Titles
ALTER COLUMN title_id SET NOT NULL;

ALTER TABLE Employees
ALTER COLUMN emp_no SET NOT NULL;

ALTER TABLE Salaries
ALTER COLUMN emp_no SET NOT NULL;

ALTER TABLE Dept_emp
ALTER COLUMN emp_no SET NOT NULL;

ALTER TABLE Dept_Manager
ALTER COLUMN dept_no SET NOT NULL;