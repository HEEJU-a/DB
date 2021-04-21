SELECT
emp_no, emp_no AS employeestitles'eno'
FROM titles;

SELECT * 
FROM titles
WHERE emp_no >= 10600 
AND title = 'staff';

SELECT *
FROM titles
WHERE emp_no >= 10500 AND emp_no <= 20000;

SELECT *
FROM titles
WHERE emp_no BETWEEN 10500 AND 20000;

SELECT *
FROM titles 
WHERE title = 'Engineer' 
OR title = 'Staff';

SELECT *
FROM titles 
WHERE title 
IN ('Engineer', 'Staff', 'Senior Staff');

SELECT * FROM employees
WHERE first_name LIKE 'G%';

SELECT * FROM employees
WHERE last_name LIKE '%M';

SELECT * FROM employees
WHERE last_name LIKE '%MA%';

SELECT * FROM employees
WHERE first_name LIKE '%__MA_%';









