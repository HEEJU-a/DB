CREATE TABLE t_user_profile(
	iprofile INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	iuser INT UNSIGNED, 
	img VARCHAR(50),
	regdt DATETIME DEFAULT NOW(),
	FOREIGN KEY(iuser) REFERENCES t_user(iuser)
);

SELECT * FROM t_user_profile;