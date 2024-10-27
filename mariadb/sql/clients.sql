SHOW ENGINES;

SELECT * FROM information_schema.`ENGINES`;

--현재 저장 엔진
SELECT @@GLOBAL.storage_engine;

--고객 테이블 생성
CREATE TABLE customers(
	id INT AUTO_INCREMENT,
	NAME VARCHAR(255) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	is_active BOOL NOT NULL DEFAULT FALSE,
	PRIMARY KEY(id)
);
SELECT * FROM customers;

--고객테이블 컬럼 추가
ALTER TABLE customers ADD email VARCHAR(255) NOT NULL;

ALTER TABLE customers
	ADD phone VARCHAR(15),
	ADD address VARCHAR(255);

--고객테이블 컬럼 수정
ALTER TABLE customers MODIFY phone VARCHAR(20) NOT NULL;

ALTER TABLE customers
	modify email VARCHAR(255),
	modify address VARCHAR(255) AFTER name;
	
--고객테이블 컬럼명 변경
ALTER table customers change COLUMN address office_address VARCHAR(255) NOT NULL;
	
--고객테이블 컬럼 삭제
ALTER TABLE customers ADD wrong_column INT NOT null;
ALTER TABLE customers DROP COLUMN wrong_column;
ALTER TABLE customers DROP COLUMN office_address;

--고객테이블 상세 보기
DESCRIBE customers;

--고객테이블명 변경 -> clients
ALTER TABLE customers RENAME TO clients;

DESCRIBE clients;