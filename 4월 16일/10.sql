SELECT 
case 11
	when 1 then '일'
	when 5 then '오'
	when 10 then '십'
	ELSE '뭐지'
END AS c_case; 


SELECT productName, cost, company,
case company
	when '대우' then '탱크대우'
	when 'LG' then '사랑해요LG'
	when '삼성' then '또하나의 가족'
	ELSE '바보'
	END AS c_case
FROM producttbl;

SELECT*,
case 
	when salary >= 80000 then '최고급인력' 
   when salary >= 70000 then '고급인력'
	ELSE '저급인력'
	END AS title
FROM salaries;









