# SQL-Challenge
## Introduction
This assignment is designed to evaluate my abilities in Data Engineering and Data Analysis. My task is a research project on employees of a corporation from the 1980s and 1990s. 
All that remain of the database of employees from that period are six CSV files.
  * Departments
  * Department Employees
  * Department Managers
  * Employees
  * Salaries
  * Titles

### Data Modeling
Initially, I inspected the CSVs and sketched out an ERD of the tables. 

![image](https://user-images.githubusercontent.com/89491352/141539226-9c288d85-7763-4476-9b06-1c06e33ad2fc.png)

### Data Engineering
While sketching out the ERD of the tables, I determined the order of how to create each table schema.
I decided to use the common onboarding through offboarding path used in HR to process employee records. I created my tables in the following order:
  * Titles
  * Employees
  * Salaries
  * Departments
  * Department Employees
  * Department Managers

### Data Analysis
Once I completed the database, the following queries were run:
  * List the following details of each employee: employee number, last name, first name, sex, and salary.
  * List first name, last name, and hire date for employees who were hired in 1986.
  * List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
  * List the department of each employee with the following information: employee number, last name, first name, and department name.
  * List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
  * List all employees in the Sales department, including their employee number, last name, first name, and department name.
  * List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
  * In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

### Bonus
I created a visual of the most common salary ranges in the company. 
  * The most common salary range is from $40K to $50K

insert image

Also, I created a bar chart of average salary by title.
  * Senior Staff and Staff have the highest average salaries

Insert image

To my surprise, I learned that I earn the minimum salary of $40K.

