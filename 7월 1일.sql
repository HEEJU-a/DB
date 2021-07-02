CREATE TABLE t_feed_fav(
ifeed INT UNSIGNED,
iuser INT UNSIGNED,
regdt DATETIME DEFAULT NOW(),
PRIMARY KEY(ifeed, iuser),
FOREIGN KEY(ifeed) REFERENCES t_feed(ifeed),
FOREIGN KEY(iuser) REFERENCES t_user(iuser)
);
SELECT * FROM t_feed_fav;



SELECT
      A.ifeed, A.location, A.ctnt, A.iuser, A.regdt
             ,C.nm AS writer, C.mainProfile
             , CASE WHEN D.ifeed IS NULL THEN 0 ELSE 1 END isFav
             , IFNULL (E.cnt, 0) AS favCnt
        FROM t_feed A
        INNER JOIN t_user C
        ON A.iuser = C.iuser
        LEFT JOIN t_feed_fav D
        ON D.iuser = 9
        AND A.ifeed = D.ifeed;
        
        SELECT ifeed, COUNT(ifeed) AS cnt
        FROM t_feed_fav
        GROUP BY ifeed;
        
        
        
        
        
