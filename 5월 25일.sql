SELECT CEIL(COUNT(iboard) / 5)
FROM t_board;

SELECT COUNT(iboard) FROM t_board;

SELECT B.unm AS writerNm
, A.iboard, A.iuser, A.regdt, A.title
FROM t_board A
INNER JOIN t_user B
ON A.iuser = B.iuser
WHERE B.unm LIKE '%한%'
ORDER BY iboard DESC
LIMIT 0, 20;


