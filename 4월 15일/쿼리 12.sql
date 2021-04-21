SELECT * FROM salaries
ORDER BY salary DESC;

SELECT * FROM salaries
ORDER BY emp_no, salary DESC;

SELECT * FROM salaries
ORDER BY emp_no, salary;

SELECT * FROM dept_emp
ORDER BY dept_no DESC, emp_no;

SELECT distinct dept_no FROM dept_emp;

SELECT distinct emp_no, dept_no FROM dept_emp;