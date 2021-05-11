CREATE TABLE t_board(
 	iboard INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
 	title VARCHAR(100) NOT NULL,
 	ctnt VARCHAR(2000) NOT NULL,
 	iuser INT UNSIGNED,
 	regdt DATETIME DEFAULT NOW(),
 	FOREIGN KEY (iuser) REFERENCES t_user(iuser)
);

SELECT * FROM t_board;

SELECT A.iboard, A.title, A.regdt, B.unm
FROM t_board A
LEFT JOIN t_user B
ON A.iuser = B.iuser;