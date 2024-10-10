CREATE DATABASE crm;
SHOW DATABASES;

SHOW CREATE DATABASE crm;
SHOW CHARACTER SET;

ALTER DATABASE crm CHARACTER SET = 'latin1'
COLLATE = 'latin1_swedish_ci';

SHOW CREATE database crm;

SHOW DATABASES;

DROP DATABASE if EXISTS crm;

SHOW DATABASES;

DROP DATABASE if EXISTS test;

SHOW DATABASES;

SHOW DATABASES LIKE 'nation';

SHOW DATABASES;

SHOW DATABASES LIKE '%schema';

SHOW DATABASES WHERE `database` NOT IN (
'information_schema',
'mysql',
'performance_schema'
);

