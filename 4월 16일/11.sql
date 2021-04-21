SELECT * 
,CONCAT ( first_name, ' ' ,last_name, ' ', gender, '하하') AS NAME 
, CONCAT_WS(', ', first_name, last_name, gender)AS NAME2
FROM employees;

SELECT FORMAT(123456.123456, 4);
SELECT FORMAT(36500, 2);

-- insert 넣는 방법 
SELECT *, INSERT(dept_no, 2, 2, 'i')
FROM dept_emp;
  
SELECT *
, LOWER(LEFT(FIRST_name, 2))
, LCASE(first_name)
, UPPER(RIGHT(first_name, 3))
, UCASE(last_name)
FROM employees;


SELECT 
first_name 
,LPAD(first_name, 10, '#')
,RPAD(first_name,10, '#')
FROM employees;

SELECT TRIM('       안녕     ') AS hi
, TRIM('         하하     하    ')
, REPLACE('       하하     하 ', ' ', '');














