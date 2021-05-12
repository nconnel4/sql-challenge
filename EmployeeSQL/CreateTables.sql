create table title
(
    title_id char(5) primary key,
    title    varchar(25)
);

create table department
(
    dept_no   char(4) primary key,
    dept_name varchar(25)
);

create table employee
(
    emp_no       int primary key,
    emp_title_id char(5),
    birth_date   date,
    first_name   varchar(25),
    last_name    varchar(25),
    sex          char(1),
    hire_date    date,
    constraint fk_title
        foreign key (emp_title_id)
            references title (title_id)
);

create table salary
(
    emp_no int,
    salary numeric(10, 2),
    constraint fk_employee
        foreign key (emp_no)
            references employee (emp_no)
);

create table dept_manager
(
    dept_no char(4),
    emp_no  int,
    constraint fk_department
        foreign key (dept_no)
            references department (dept_no),
    constraint fk_employee
        foreign key (emp_no)
            references employee (emp_no)
);

create table dept_emp
(
    emp_no  int,
    dept_no char(4),
    constraint fk_department
        foreign key (dept_no)
            references department (dept_no),
    constraint fk_employee
        foreign key (emp_no)
            references employee (emp_no)
);


