CREATE TABLE t_exam(
i_exam INT PRIMARY KEY,
title VARCHAR(100),
jumin CHAR(13),
age INT(3) NOT null
);

INSERT INTO t_exam
( I_EXAM, TiTLe, JUMIN, AGE)
VALUES
(2, '안녕하세요', '9002121876543', 25),
(3, '안녕하세요', '9002121876543', 25);

CREATE DATABASE java;

SELECT * FROM t_exam;
-- 주석은 이렇게
#주석주석
/*
주석주석 
*/

SELECT*FROM t_exam;

UPDATE t_exam
SET age = 35
WHERE i_exam = 2;

DELETE FROM t_exam
WHERE i_exam = 3;