-- employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no = s.emp_no;

-- first name, last name, and hire date for employees who were hired in 1986.
-- SELECT e.first_name, e.last_name, e.hire_date
-- FROM employees AS e
-- WHERE hire_date = year('1986');

-- the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_manager AS dm 
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no;

-- department of each employee with the following information:
-- employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no;

-- first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- all employees in the Sales department, including their
-- employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_no = 'd007';

-- all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_no = 'd007'
UNION
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_no = 'd005';

--  frequency count of employee last names

SELECT last_name, COUNT(last_name) AS "Last Name Occurrence"
FROM employees AS e
GROUP BY e.last_name
ORDER BY "Last Name Occurrence" DESC;

-- searching my own employee number
SELECT first_name, last_name, birth_date, hire_date, sex
FROM employees
WHERE emp_no = 499942;
