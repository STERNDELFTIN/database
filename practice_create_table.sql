-- 'cities' 테이블 생성
CREATE TABLE cities(
	id INT PRIMARY KEY,
	city_name VARCHAR(100) NOT NULL,
	AREA DECIMAL(15, 2)
);

-- 테이블 자세히 보기
DESCRIBE cities;

-- 테이블 삭제
DROP TABLE cities;
DESCRIBE cities;

-- ----------------------------------- --

-- 'mountains' 테이블 생성
CREATE TABLE mountains(
	id INT PRIMARY KEY,
	city_name VARCHAR(100) NOT NULL,
	AREA DECIMAL(15, 2)
);

DESCRIBE mountains;

-- 'oceans' 테이블 생성
CREATE TABLE oceans(
	id INT PRIMARY KEY,
	ocean_name VARCHAR(100) NOT NULL,
	square DECIMAL(15, 2)
);

DESCRIBE oceans;

-- 테이블 삭제
DROP TABLE mountains, oceans;
DESCRIBE mountains;

-- ----------------------------------- --

SHOW TABLES;

-- ----------------------------------- --