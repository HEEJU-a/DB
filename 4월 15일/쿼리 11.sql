-- 스칼라 값

SELECT * FROM employees
WHERE gender = (SELECT gender FROM employees
WHERE emp_no = 10066);