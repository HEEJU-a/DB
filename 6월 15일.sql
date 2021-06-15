CREATE TABLE location_code(
	cd INT UNSIGNED PRIMARY KEY,
	local_nm nvarchar(5) NOT NULL,
	external_cd CHAR(5) NOT NULL 
);
SELECT cd, local_nm, external_cd FROM location_code;

INSERT INTO location_code
(cd, local_nm, external_cd)
VALUES 
(1, '중구', '27110'),
(2, '동구', '27140'),
(3, '서구', '27170'),
(4, '남구', '27200'),
(5, '북구', '27230'),
(6, '수성구', '27260'),
(7, '달서구', '27290'),
(8, '달성군', '27710');

CREATE TABLE apartment_info(
i_ai INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
deal_amount INT UNSIGNED NOT NULL,
build_year CHAR(4) NOT NULL,
deal_year CHAR(4) NOT NULL,
deal_month CHAR(2) NOT NULL,
deal_day CHAR(6) NOT NULL,
dong nvarchar(40) NOT NULL,
apartment_name nvarchar(40) NOT NULL,
area_for_exclusive_use FLOAT NOT NULL,
jibun nvarchar(10) NOT NULL,
flr INT UNSIGNED NOT NULL COMMENT '층',
location_cd INT UNSIGNED NOT NULL,
FOREIGN KEY (location_cd) REFERENCES location_code(cd)
);
DROP TABLE apartment_info;
SELECT * FROM apartment_info;

