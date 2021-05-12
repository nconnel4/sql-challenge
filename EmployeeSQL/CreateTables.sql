create table title(
    title_id char(5) primary key,
    title varchar(25)
);

create table department(
    dept_no char(4) primary key,
    dept_name varchar(25)
);

create table employee(
    emp_no int primary key,
    emp_title_id char(5),
    birth_date date,
    first_name varchar(25),
    last_name varchar(25),
    sex char(1),
    hire_date date
);

create table salary(
    emp_no int,
    salary numeric(10, 2)
);

create table dept_manager(
    dept_no char(4),
    emp_no int
);

create table dept_emp(
    emp_no int,
    dept_no char(4)
);


