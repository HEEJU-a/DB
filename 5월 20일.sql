CREATE TABLE t_board_fav(
	iboard INT UNSIGNED,
	iuser INT UNSIGNED,
	regdt DATETIME DEFAULT NOW(),
	PRIMARY KEY(iboard, iuser),
	FOREIGN KEY (iboard) REFERENCES t_board(iboard),
	FOREIGN KEY (iuser) REFERENCES t_user(iuser)
);
SELECT * FROM t_board_fav;

SELECT B.unm, A.iboard, A.title, A.ctnt, A.iuser, A.regdt
, if(C.iboard IS NULL, 0, 1) AS isFav
FROM t_board A
LEFT JOIN t_user B
ON A.iuser = B.iuser
LEFT JOIN t_board_fav C
ON A.iboard = C.iboard
AND C.iuser = 6
WHERE A.iboard = 4;