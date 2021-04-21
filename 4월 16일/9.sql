SELECT emp_no, gender, 
if(gender = 'M', '남성', '여성') AS gender2
, case when gender ='M'
		 then '남성'
		 ELSE '여성'
	END AS gender3
FROM employees;



SELECT *, IFNULL(salary, '널이당'), 
FROM salaries
WHERE salary IS NULL
OR emp_no = 17170;

