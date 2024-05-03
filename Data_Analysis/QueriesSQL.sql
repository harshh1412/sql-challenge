-- DATA ANALYSIS


-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no AS "employee number",
       last_name AS "last name",
	   first_name AS "first name",
	   sex,
	   salary
FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no;


-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name AS "first name",
       last_name AS "last name",
	   hire_date AS "hire date"
FROM employees
WHERE hire_date LIKE '%1986';


-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no AS "department number",
       dept_name AS "department name",
	   e.emp_no AS "employee number",
	   last_name AS "last name",
	   first_name AS "first name"
FROM departments AS dp
LEFT JOIN dept_manager AS dm
ON dp.dept_no = dm.dept_no
LEFT JOIN employees AS e
ON dm.emp_no = e.emp_no;


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.


-- List each employee in the Sales department, including their employee number, last name, and first name.


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).