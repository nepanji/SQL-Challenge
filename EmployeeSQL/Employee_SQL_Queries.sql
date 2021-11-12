-- List each employees.employee number, employees.last name, employees.first name, employees.sex, and salaries.salary

SELECT EMPLOYEES.EMP_NO,
	EMPLOYEES.LAST_NAME,
	EMPLOYEES.FIRST_NAME,
	EMPLOYEES.SEX,
	SALARIES.SALARY
FROM EMPLOYEES
JOIN SALARIES ON EMPLOYEES.EMP_NO = SALARIES.EMP_NO;

-- List employees.first name, employees.last name, and employees.hire date hired in 1986

SELECT EMPLOYEES.FIRST_NAME,
	EMPLOYEES.LAST_NAME,
	EMPLOYEES.HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE like '%1986'
ORDER BY HIRE_DATE ASC;

-- List manager of each department: dept_manager.department number, departments.department name, dept_manager.employee_number, employees.last name, employees.first name.

SELECT DEPT_MANAGER.DEPT_NO,
	DEPARTMENTS.DEPT_NAME,
	DEPT_MANAGER.EMP_NO,
	EMPLOYEES.LAST_NAME,
	EMPLOYEES.FIRST_NAME
FROM DEPT_MANAGER
JOIN DEPARTMENTS ON DEPT_MANAGER.DEPT_NO = DEPARTMENTS.DEPT_NO
JOIN EMPLOYEES ON DEPT_MANAGER.EMP_NO = EMPLOYEES.EMP_NO;

-- List department of each employee: employees.employee number, employees.last name, employees.first name, and departments.department name

SELECT EMPLOYEES.EMP_NO,
	EMPLOYEES.LAST_NAME,
	EMPLOYEES.FIRST_NAME,
	DEPARTMENTS.DEPT_NAME
FROM EMPLOYEES
JOIN DEPT_EMP ON EMPLOYEES.EMP_NO = DEPT_EMP.EMP_NO
JOIN DEPARTMENTS ON DEPT_EMP.DEPT_NO = DEPARTMENTS.DEPT_NO;

-- List employees.first name, employees.last name, and employees.sex for first name is "Hercules" and last names begin with "B"

SELECT FIRST_NAME,
	LAST_NAME,
	SEX
FROM EMPLOYEES
WHERE FIRST_NAME = 'Hercules'
	AND LAST_NAME LIKE 'B%';

-- List all employees in the Sales department, including their employees.employee number, employees.last name, employees.first name, and departments.department name = Sales,

SELECT EMPLOYEES.EMP_NO,
	EMPLOYEES.LAST_NAME,
	EMPLOYEES.FIRST_NAME,
	DEPARTMENTS.DEPT_NAME
FROM EMPLOYEES
JOIN DEPT_EMP ON EMPLOYEES.EMP_NO = DEPT_EMP.EMP_NO
JOIN DEPARTMENTS ON DEPT_EMP.DEPT_NO = DEPARTMENTS.DEPT_NO
WHERE DEPARTMENTS.DEPT_NAME = 'Sales';

-- List all employees in the Sales and Development departments, including their employees.employee number, employees.last name, employees.first name, and departments.department name

SELECT EMPLOYEES.EMP_NO,
	EMPLOYEES.LAST_NAME,
	EMPLOYEES.FIRST_NAME,
	DEPARTMENTS.DEPT_NAME
FROM EMPLOYEES
JOIN DEPT_EMP ON EMPLOYEES.EMP_NO = DEPT_EMP.EMP_NO
JOIN DEPARTMENTS ON DEPT_EMP.DEPT_NO = DEPARTMENTS.DEPT_NO
WHERE DEPARTMENTS.DEPT_NAME = 'Sales'
	OR DEPARTMENTS.DEPT_NAME = 'Development';

-- In descending order, list the frequency count of employees.last names, i.e., how many employees share each last name

SELECT LAST_NAME,
	COUNT(LAST_NAME)
FROM EMPLOYEES
GROUP BY LAST_NAME
ORDER BY COUNT(LAST_NAME);

--- Bonus: My salary
Select salary from salaries where emp_no = '499942'
