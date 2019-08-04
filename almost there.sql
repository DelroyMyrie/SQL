CREATE TABLE departments(
	depo_no character varying(4),
	dept_name character varying (40),
	PRIMARY KEY (depo_no)
);

CREATE TABLE "dept_emp" (
	emp_no integer NOT NULL,
	depo_no character varying(4),
	from_date date NOT NULL,
	to_date date NOT NULL,
	PRIMARY KEY(emp_no)
);
Alter table dept_emp add constraint fk_depo_no Foreign Key (depo_no) references departments(depo_no);

CREATE TABLE dept_manager(
	depo_no character varying(4),
	emp_no integer NOT NULL,
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY(depo_no) REFERENCES departments(depo_no),
	FOREIGN KEY(emp_no) REFERENCES dept_emp(emp_no)
);

CREATE TABLE employees(
	emp_no integer NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(20),
	last_name varchar(20),	
	gender character varying(1),
	hire_date date NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES dept_emp(emp_no)
);

CREATE TABLE salaries(
	emp_no integer NOT NULL,
	salaries character varying(20),
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES dept_emp(emp_no)	
);

CREATE TABLE titles(
	emp_no integer NOT NULL,
	titles character varying(20),	
	from_date date NOT NULL,
	to_date date NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES dept_emp(emp_no)		
);

