CREATE TABLE indexTBL (
	first_name VARCHAR(14), 
	last_name VARCHAR(16),
	hire_date date
);

INSERT INTO indextbl 
(first_name, last_name, hire_date)
SELECT first_name, last_name, hire_date
FROM employees.employees
LIMIT 1000;

explain SELECT * FROM indextbl 
WHERE first_name = 'Mary';

CREATE INDEX idx_indexTBL_firstname
ON indextbl(first_name);