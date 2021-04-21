SELECT * FROM employees
WHERE gender = (
	SELECT gender FROM employees
	WHERE emp_no = 10110
);

SELECT gender FROM employees
WHERE emp_no = 10110;

SELECT * FROM titles
WHERE title in(
	SELECT title FROM titles
	WHERE emp_no = 10007
);

SELECT * FROM titles
WHERE title IN ('semior staff', 'staff');


SELECT * FROM salaries
ORDER BY emp_no DESC, salary;

SELECT emp_no, title FROM titles; -- -> title의 갯수를 알고 싶을때

SELECT * FROM dept_emp
ORDER BY emp_no ASC 
LIMIT 1, 10;








