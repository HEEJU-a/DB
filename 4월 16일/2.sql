SELECT * FROM employees
WHERE gender = 'F' 
AND first_name LIKE 's%'
AND hire_date >= '1990-01-01';


SELECT title FROM titles
GROUP BY title
HAVING COUNT(title) =( 

SELECT MAX(A.cnt) FROM 
(
	SELECT COUNT(title) AS cnt
	FROM titles
	GROUP BY title
) A -- ->이런식으로 alias줌

); 