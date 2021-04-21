SELECT DATE_FORMAT(NOW(), '%y년%m월%d일%H:%i:%s');

SELECT CAST('2020-10-19 12:35:29' AS DATE) AS d_date;
SELECT CAST('2020-10-19 12:35:29' AS DATETIME);

SELECT CAST('10' AS INT), 'a10' + '10',
CONCAT('10', '10', '10'), 'aaa' + 'bbb';