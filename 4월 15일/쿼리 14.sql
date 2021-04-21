SELECT COUNT(emp_no) FROM salaries;

SELECT MAX(salary) FROM salaries;
SELECT MIN(salary) FROM salaries;
SELECT sum(salary) FROM salaries;

SELECT (SUM(salary) / COUNT(salary)) AS avg_salary 
FROM salaries;

SELECT AVG(salary) AS avg_salary FROM salaries ;
