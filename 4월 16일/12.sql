SELECT birth_date,
LEFT(birth_date, 4)AS YEAR,
SUBSTRING(birth_date, 6, 2) AS mon,
RIGHT(birth_date, 2)AS DAY,
MID(birth_date, 6, 2) AS mon2,
CAST(RIGHT(birth_date, 2) AS INT)
FROM employees;


SELECT
CEILING(10.3),
CEIL(10.1),
ROUND(10.4),
ROUND(10.5),
FLOOR(10.9)
;
