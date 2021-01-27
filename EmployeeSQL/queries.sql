-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees emp, salaries sal
WHERE emp.emp_no = sal.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT man.dept_no, dep.dept_name, man.emp_no, emp.first_name, emp.last_name
FROM dept_manager man, departments dep, employees emp
WHERE man.dept_no = dep.dept_no AND man.emp_no = emp.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees emp, departments dep, dept_emp  empl
WHERE emp.emp_no = empl.emp_no AND dep.dept_no = empl.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name ~ 'B';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees emp, departments dep, dept_emp empl
WHERE empl.dept_no = 'd007' AND emp.emp_no = empl.emp_no AND dep.dept_no = empl.dept_no;