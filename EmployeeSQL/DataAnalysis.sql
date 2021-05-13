-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employee e
    JOIN salary s ON s.emp_no = e.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employee
WHERE DATE_PART('year', hire_date) = 1986;


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager m
    JOIN employee e on m.emp_no = e.emp_no
    JOIN department d on d.dept_no = m.dept_no;