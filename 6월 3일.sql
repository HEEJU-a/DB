SELECT iboard, title, iuser, regdt, writerNm
FROM t_board A
LEFT JOIN t_user B
ON A.iuser = B.iuser
ORDER BY iboard DESC;
