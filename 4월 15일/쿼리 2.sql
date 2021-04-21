CREATE TABLE memberTBL (
	memberID CHAR(8) PRIMARY KEY, 
	memberName CHAR(5) NOT NULL,
	memberAddress CHAR(20)
);

-- varcchar 와 char는 용량을  사용하는것만 다르다

CREATE TABLE productTBL(
	productName CHAR(4) PRIMARY KEY,
	cost INT NOT NULL,
	makedate DATE, -- ->날짜만 저장됨!
	company CHAR(5),
	amount INT NOT NULL
);