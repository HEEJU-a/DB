SELECT
B.nm, C.cls, A.score
FROM t_score A
INNER JOIN t_student B
ON A.s_id = B.s_id
INNER JOIN t_class C
ON A.c_id = C.c_id;

SELECT /*B.ph, B.nm, B.s_id, A.s_id, A.score, A.c_id
,C.c_id,C.cls,C.teacher */ -- -> 이거는 굳이 쓸 필요 없음!
B.ph, B.nm, A.score, C.cls, C.teacher -- -> 이게 원래 뽑고 싶었던 값!
FROM t_score A
INNER JOIN t_student B
ON A.s_id = B.s_id
INNER JOIN t_class C
ON A.c_id = C.c_id;