SELECT emp_no, 
MAX(salary), MIN(salary), SUM(salary), AVG(salary), COUNT(salary)
FROM salaries
GROUP BY emp_no
HAVING COUNT(salary) = 10
ORDER BY COUNT(salary) DESC, AVG(salary) DESC;


SELECT emp_no,AVG(salary)
FROM salaries
GROUP BY emp_no
HAVING AVG(salary) >= 90000
ORDER BY AVG(salary);


SELECT title
FROM titles
GROUP BY title
ORDER BY COUNT(title) DESC
LIMIT 1;

SELECT *
FROM employees
WHERE first_name LIKE 's%' AND  gender = 'F' AND hire_date >= '1990-01-01'; 



