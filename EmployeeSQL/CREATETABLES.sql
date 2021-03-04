CREATE TABLE departments(
	dept_no VARCHAR(25) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE titles(
	title_id VARCHAR(25) NOT NULL PRIMARY KEY,
	title VARCHAR(255)
);

CREATE TABLE salaries(
	emp_no int NOT NULL PRIMARY KEY,
	salary int
);

CREATE TABLE employees(
	emp_no int NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(25),
	birth_date DATE,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp(
	emp_no INT, 
	dept_no VARCHAR(25),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(25),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);