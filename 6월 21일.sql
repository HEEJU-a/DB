DROP TABLE t_user;
CREATE TABLE t_user(
	iuser INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(50) UNIQUE NOT NULL,
	pw VARCHAR(100) NOT NULL,
	nm VARCHAR(5) NOT NULL,
	tel CHAR(13) COMMENT '연락처',
	authCd CHAR(5) COMMENT '회원가입 인증코드',
	regdt DATETIME DEFAULT NOW(),
	INDEX idx_auth_cd (`authCd`)
);

SELECT * FROM t_user;

