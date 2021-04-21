CREATE INDEX 인덱스 이름 ON 테이블명(컬럼명);
ALTER TABLE 테이블명 DROP INDEX 인덱스명;

CREATE INDEX idx_abcd ON membertbl(memberName);
DROP INDEX idx_abcd ON membertbl;
ALTER TABLE membertbl DROP INDEX idx_abcd;

SHOW INDEX FROM membertbl;



CREATE VIEW view_abcd AS 
SELECT * FROM membertbl 
WHERE memberName LIKE '%이%';

SELECT * FROM view_abcd
WHERE memberID = 'Dang';

CREATE INDEX idx_customer_nm ON t_customer(nm);
SELECT * FROM idx_customer_nm;
SHOW INDEX FROM t_customer;
DROP INDEX idx_customer_nm ON t_customer;