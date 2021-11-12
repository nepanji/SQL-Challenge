-- Titles schemata: PK title_id
-- New hire onboarding process begins with job reqs based on job titles
CREATE TABLE TITLES(
	TITLE_ID VARCHAR(10),
	TITLE VARCHAR(45) NOT NULL,
	PRIMARY KEY (TITLE_ID));

SELECT * FROM TITLES

-- Employees schemata: PK emp_no, FK emp_title_id ref titles.title_id
CREATE TABLE EMPLOYEES(
	EMP_NO INT NOT NULL,
	EMP_TITLE_ID varchar, 
	BIRTH_DATE date, 
	FIRST_NAME varchar, 
	LAST_NAME varchar, 
	SEX varchar, 
	HIRE_DATE varchar,
	PRIMARY KEY (EMP_NO),
	FOREIGN KEY (EMP_TITLE_ID) REFERENCES TITLES.TITLE_ID);

SELECT * FROM EMPLOYEES

-- Salaries schemata: PK emp_no, FK emp_no ref employees.emp_no
CREATE TABLE SALARIES(
	EMP_NO INT, 
	SALARY MONEY,
	PRIMARY KEY (EMP_NO),
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES.EMP_NO);

SELECT * FROM SALARIES

-- Departments schemata: PK dept_no, FK dept_no ref dept_emp.dept_no
CREATE TABLE DEPARTMENTS(
	DEPT_NO varchar, 
	DEPT_NAME varchar, 
	PRIMARY KEY (DEPT_NO),
	FOREIGN KEY (DEPT_NO) REFERENCES DEPT_EMP.DEPT_NO);

SELECT * FROM DEPARTMENTS

--Department Employees schemata: PK emp_no & dept_no, FK dept_emp.emp_no ref employees.emp_no & FK dept_emp.dept_no ref departments.dept_no (many to many) 
CREATE TABLE DEPT_EMP(
	EMP_NO INT, 
	DEPT_NO varchar, 
	PRIMARY KEY (EMP_NO, DEPT_NO),
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES.EMP_NO,
	FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENTS.DEPT_NO);

SELECT * FROM DEPT_EMP

-- Department Manager schemata: PK dept_no & emp_no, FK dept_manager.dept_no ref departments.dept_no & FK dept_manager.emp_no ref employees.emp_no (many to many)
CREATE TABLE DEPT_MANAGER(
	DEPT_NO varchar, 
	EMP_NO INT, 
	PRIMARY KEY (DEPT_NO, EMP_NO),
	FOREIGN KEY (DEPT_NO) REFERENCES DEPARTMENTS.DEPT_NO,
	FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES.EMP_NO);


SELECT * FROM DEPT_MANAGER