-- Create tables for each csv file
CREATE TABLE departments (
	dept_no VARCHAR(5),
	dept_name VARCHAR(25)
);
	
CREATE TABLE dept_emp (
	dept_no VARCHAR(8),
	emp_no INT
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(8),
	emp_no INT
);

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR (8),
	birth_date VARCHAR (10),
	first_name VARCHAR (25),
	last_name VARCHAR (25),
	sex VARCHAR (8),
	hire_date VARCHAR (10)
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT
);

CREATE TABLE titles (
	title_id VARCHAR(8),
	Title VARCHAR (25)
);
