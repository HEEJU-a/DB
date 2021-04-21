DELETE FROM 테이블명
WHERE 조건식;

DELETE FROM testtbl2;
TRUNCATE testtbl4;

CREATE TABLE testtbl3
AS
SELECT * FROM testtbl2;

CREATE TABLE testtbl4 (SELECT * FROM testtbl2);

DROP TABLE testtbl2;


SELECT * FROM testtbl4;

SELECT * FROM testtbl2;

