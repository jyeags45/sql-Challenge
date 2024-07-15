--DROP TABLE departments;
--
--create table departments(
--	dept_no varchar(50) not null primary key not null,
--	dept_name varchar(50) not null
--);
--
--
--DROP TABLE dept_emp;
--
--create table dept_emp(
--	emp_no int4 not null,
--	dept_no varchar(50) not null,
--	foreign key (emp_no) references employees (emp_no),
--foreign key (dept_no) references departments (dept_no)
--);
--
--
--DROP TABLE dept_manager;
--
--CREATE TABLE dept_manager (
--	dept_no varchar(50) not NULL,
--	emp_no int4 not null,
--	foreign key (emp_no) references employees (emp_no),
--    foreign key (dept_no) references departments (dept_no)
--	
--);
--
--
--DROP TABLE employees;
--
--create table employees (
--	emp_no int4 primary key not null,
--	emp_title_id varchar(50) not null,
--	birth_date varchar(50) not null,
--	first_name varchar(50) not null,
--	last_name varchar(50) not null,
--	sex varchar(50) not null,
--	hire_date varchar(50) not null
--);
--
--DROP TABLE salaries;
--
--create table salaries(
--	emp_no int4 not null,
--	salary int4 not null,
--	foreign key (emp_no) references employees (emp_no)
--);
--
--DROP TABLE titles;
--
--create table titles(
--	title_id VARCHAR(50) not null,
--	title varchar(50) not null,
--	foreign key (emp_no) references employees (emp_no)
--);


DROP TABLE public.departments;

CREATE TABLE public.departments (
	dept_no varchar(50) not null primary key NOT NULL,
	dept_name varchar(50) not null
);

DROP TABLE public.dept_emp;

CREATE TABLE public.dept_emp (
	emp_no int4 not NULL,
	dept_no varchar(50) not null,
	foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);


DROP TABLE public.dept_manager;

CREATE TABLE public.dept_manager (
	dept_no varchar(50) not NULL,
	emp_no int4 not null,
	foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
	
);



DROP TABLE public.employees;

CREATE TABLE public.employees (
	emp_no int4 primary key not NULL,
	emp_title_id varchar(50) not NULL,
	birth_date varchar(50) not NULL,
	first_name varchar(50) not NULL,
	last_name varchar(50) not NULL,
	sex varchar(50) not NULL,
	hire_date varchar(50) not NULL
);



DROP TABLE public.salaries;

CREATE TABLE public.salaries (
	emp_no int4 not NULL,
	salary int4 not null,
	foreign key (emp_no) references employees (emp_no)
);



DROP TABLE public.titles;

CREATE TABLE public.titles (
	title_id varchar(50) not NULL,
	title varchar(50) not null,
	foreign key (emp_no) references employees (emp_no)
);
