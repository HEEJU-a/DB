DROP TABLE t_board;
CREATE TABLE t_board(
	iboard INT UNSIGNED PRIMARY KEY auto_increment,
	title VARCHAR(100) NOT NULL,
	ctnt VARCHAR(500) NOT NULL,
	r_dt DATETIME DEFAULT NOW()
);

 DROP TABLE t_cmt;
CREATE TABLE t_cmt(
	icmt INT UNSIGNED PRIMARY KEY auto_increment,
	iboard INT UNSIGNED,
	ctnt VARCHAR(100) NOT NULL,
	r_dt DATETIME DEFAULT NOW() -- -> default 있으면 값 안넣으면 자동으로 지금 시간 나온다
);


INSERT INTO t_board
(title, ctnt)
VALUES
('안녕하세요', '철이 없었죠...'),
('Hello', 'Nice to meet you'),
('MariaDB 사용법', '잘 사용하세요...');

INSERT INTO t_cmt
(iboard, ctnt)
VALUES
(1, '저도 그랬습니다.');

SELECT * FROM t_cmt;
SELECT * FROM t_board;


SELECT A.*, B.*
FROM t_board A
INNER JOIN t_cmt B
ON A.iboard = B.iboard;

SELECT A.*, B.*,IFNULL(B.ctnt, '댓글없음')
FROM t_board A
LEFT JOIN t_cmt B
ON A.iboard = B.iboard;


SELECT A.*, B.*
FROM t_board A
LEFT JOIN t_cmt B
ON A.iboard = B.iboard
WHERE B.icmt IS NULL;
