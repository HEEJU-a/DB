CREATE TABLE t_student(
	s_id INT UNSIGNED PRIMARY KEY,
	nm VARCHAR(3) NOT NULL,
	ph CHAR(13)
);
INSERT INTO t_student
(s_id, nm)
VALUES
(1111,'갑');

INSERT INTO t_student
(s_id, nm, ph)
VALUES
(1112,'을', modeldb'010-1111-1111'),
(1113,'병', '010-2222-2222');


SELECT * FROM t_student;

CREATE TABLE t_class(
	c_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	cls VARCHAR(5) NOT NULL,
	teacher VARCHAR(5) NOT NULL
);

INSERT INTO t_class
(cls, teacher)
VALUES
('수학', '김하나'),
('과학', '판테온'),
('국어', '오징어');

SELECT * FROM t_class;

CREATE TABLE t_score(
	s_id INT unsigned,
	c_id INT unsigned,
	score INT,
	PRIMARY KEY(s_id, c_id),
	FOREIGN KEY(s_id) references t_student(s_id),
	FOREIGN KEY(c_id) references t_class(c_id)
);

INSERT INTO t_score
(s_id, c_id, score)
VALUES 
(1111, 4, 80);

SELECT * FROM t_score;
DROP TABLE t_score;


