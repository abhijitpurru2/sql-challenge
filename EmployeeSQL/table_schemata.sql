CREATE TABLE employees (
    emp_no VARCHAR PRIMARY KEY,
	emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR
);

CREATE TABLE dept_emp (
    emp_no VARCHAR,
    dept_no VARCHAR
);

CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no VARCHAR
);

CREATE TABLE salaries (
    emp_no VARCHAR,
    salary VARCHAR
);

CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR UNIQUE
);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY (emp_no) REFERENCES employees (emp_no);
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY (dept_no) REFERENCES departments (dept_no);
ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no) REFERENCES employees (emp_no);
ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no) REFERENCES departments (dept_no);
ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no) REFERENCES employees (emp_no);
ALTER TABLE titles ADD CONSTRAINT fk_titles_title_id FOREIGN KEY (title_id) REFERENCES employees (emp_title_id);