SHOW TABLES;

DESCRIBE countries;

-- 테이블 확인
SELECT * FROM countries;

SELECT country_id, NAME, AREA FROM countries;

-- ----------------------------------- --

-- NAME 컬럼을 내림차순(DESC) 정렬
SELECT * FROM countries ORDER BY NAME DESC;

SELECT NAME, region_id FROM countries ORDER BY region_id, NAME;

-- NAME 컬럼을 오름차순(ASC) 정렬
SELECT * FROM countries ORDER BY NAME ASC;

SELECT NAME, region_id FROM countries ORDER BY region_id, NAME;

-- ----------------------------------- --

-- where 조건 절
SELECT NAME, AREA, region_id
	FROM countries
	WHERE region_id = 2
	order by NAME;
	
SELECT * FROM regions;

-- where 조건 절2
SELECT NAME, AREA
	FROM countries
	WHERE AREA > 2000000
	ORDER BY AREA;
	
-- AND
SELECT NAME, AREA, region_id
	FROM countries
	WHERE region_id=2 AND AREA > 2000000
	ORDER BY NAME;

-- OR
SELECT NAME, AREA, region_id
	FROM countries
	WHERE region_id=2 OR AREA > 2000000
	ORDER BY NAME;

-- BETWEEN
SELECT NAME, AREA
	FROM countries
	WHERE AREA BETWEEN 1001449 AND 1566500
	ORDER BY AREA;

-- IN
SELECT NAME, country_code2
	FROM countries
	WHERE country_code2 IN ('US', 'FR', 'JP')
	ORDER BY NAME;
	
-- LIKE
SELECT NAME
	FROM countries
	WHERE NAME LIKE 'J%'
	ORDER BY NAME;

-- DISTINCT, 특정 연도 선택
SELECT DISTINCT YEAR
	FROM country_stats
	ORDER BY YEAR DESC;

-- null열에 값이 있더라도 distinct 옵션은 값을 하나만 유지
SELECT DISTINCT national_day
	FROM countries;

-- ----------------------------------- --