SELECT emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
FROM employees emp, salaries sal
WHERE emp.emp_no = sal.emp_no
