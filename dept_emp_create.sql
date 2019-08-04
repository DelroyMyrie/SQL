CREATE TABLE "dept_emp"(
	emp_no integer NOT NULL,
	depo_no character varying(4),
	from_date date NOT NULL,
	to_date date NOT NULL,
	PRIMARY KEY(emp_no)
);
Alter table dept_emp add constraint fk_depo_no Foreign Key (depo_no) references departments(depo_no);

CREATE TABLE test (
test_id serial primary key,
test_value TEXT
);