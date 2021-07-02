DROP TABLE t_feed_cmt;
CREATE TABLE t_feed_cmt(
	iuser INT UNSIGNED NOT NULL,
	cmt VARCHAR(200) NOT NULL,
	icmt INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	regdt DATETIME DEFAULT NOW(),
	ifeed INT UNSIGNED NOT NULL,
	FOREIGN KEY (ifeed) REFERENCES t_feed(ifeed),
	FOREIGN KEY (iuser) REFERENCES t_user(iuser)
);
SELECT * FROM t_feed_cmt;



SELECT
A.icmt, A.cmt, A.regdt
,B.iuser, B.nm, B.mainProfile
FROM t_feed_cmt A
INNER JOIN t_user B
ON A.iuser = B.iuser
WHERE A.ifeed = 11
ORDER BY icmt ASC
LIMIT 1;


SELECT A.*, COUNT(A.icmt) - 1 AS ismore
FROM(
SELECT 
A.icmt, A.cmt, A.regdt, A.ifeed
,B.iuser, B.nm, B.mainProfile
FROM t_feed_cmt A
INNER JOIN t_user B
ON A.iuser = B.iuser
WHERE A.ifeed = 11
ORDER BY icmt ASC
LIMIT 2
)A
GROUP BY A.ifeed;

