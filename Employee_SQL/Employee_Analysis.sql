SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM salaries AS s
INNER JOIN employees AS e ON
e.emp_no = s.emp_no;

