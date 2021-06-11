SELECT A.iboard, A.title, A.ctnt, A.iuser, A.regdt
   , B.unm AS writerNm, B.profileImg
   , case when C.iboard IS NULL 
			 then 0 
			 ELSE 1 
	  END AS isFav
FROM t_board A
INNER JOIN t_user B
ON A.iuser = B.iuser
LEFT JOIN t_board_fav C
ON A.iboard = C.iboard
AND C.iuser
ORDER BY A.iboard DESC;
LIMIT 0, 5;

SELECT ceil(COUNT(iboard)/5) FROM t_board; 
FROM t_board;

