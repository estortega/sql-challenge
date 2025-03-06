--# sql-challenge

-- Employee's Tables
CREATE TABLE departments (
dept_no CHAR(4) PRIMARY KEY,
dept_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE employees (
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(10) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
sex CHAR(1) CHECK (sex IN ('M', 'F')),
hire_date DATE NOT NULL
);

CREATE TABLE titles (
title_id VARCHAR(10) PRIMARY KEY,
title VARCHAR(100) NOT NULL
);

CREATE TABLE dept_emp (
emp_no INT,  
dept_no CHAR(4),  
PRIMARY KEY (emp_no, dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
dept_no CHAR(4),  
emp_no INT,  
PRIMARY KEY (dept_no, emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),  
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
emp_no INT,  
salary INT NOT NULL,
PRIMARY KEY (emp_no, salary),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);