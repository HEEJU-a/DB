CREATE TABLE testTBL2(
	id INT AUTO_INCREMENT, 
	userName CHAR(3),
	age INT,
	PRIMARY KEY(id)

);

INSERT INTO testTBL2
(userName, age)
VALUES
('지민', 25),
('유나', 22),
('유경', 21);

SELECT * FROM testTBL2; 

INSERT INTO testTBL2
(userName, age);
SELECT userName, age
FROM testtbl2
LIMIT 2;

