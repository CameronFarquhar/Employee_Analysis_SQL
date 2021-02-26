-- employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no = s.emp_no;

-- first name, last name, and hire date for employees who were hired in 1986.

-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE hire_date LIKE '1986%';

-- the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_manager AS dm 
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no;

