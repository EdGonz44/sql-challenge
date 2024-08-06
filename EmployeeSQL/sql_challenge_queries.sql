--Creating tables for import
CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR (30) NOT NULL,
	PRIMARY KEY (title_id) 
);


CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR (5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
	)
SELECT * from employees;


CREATE TABLE departments (
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR (20) NOT NULL,
	PRIMARY KEY (dept_no)
)
	
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

	
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

--List the employee number, last name, first name, sex, and salary of each employee 
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
JOIN salaries as s
  ON e.emp_no = s.emp_no;

--List the first name, last name, 
--and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR from hire_date) = 1986;

--List the manager of each department
--along with their department number, department name,
--employee number, last name, and first name
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM departments as d
JOIN dept_manager as m
  ON d.dept_no = m.dept_no
JOIN employees as e
  ON m.emp_no = e.emp_no;

--List the department number
--for each employee along with that
--employee’s employee number, last name,
--first name, and department name
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
JOIN employees as e
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON de.dept_no = d.dept_no;

--List first name, last name,
--and sex of each employee 
--whose first name is Hercules 
--and whose last name begins with the letter B 
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List each employee in the Sales department,
--including their employee number,
--last name, and first name


--List each employee in the 
--Sales and Developmentdepartments,
--including their employee number, 
--last name, first name, and department name


--List the frequency counts, in descending order,
--of all the employee last names (that is, how many employees share each last name)



