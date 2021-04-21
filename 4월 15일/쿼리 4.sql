-- select문은 
-- SELECT 컬럼명 FROM 테이블명 으로 구성

SELECT amount,cost,company 
FROM producttbl;

SELECT * 
FROM producttbl
WHERE company = 'LG';

-- memberName이 '지운이'인 레코드만 나타나도록!
SELECT * FROM membertbl
WHERE memberName = '지운이';


SELECT * FROM producttbl
WHERE cost <= 10 OR company = 'LG';