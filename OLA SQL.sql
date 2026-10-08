SHOW VARIABLES LIKE 'local_infile';

USE ola;

select database();
show tables;

LOAD DATA LOCAL INFILE 'C:/Users/DELL/Downloads/Bookings-100000-Rows.csv'
INTO TABLE ola_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*)
FROM information_schema.columns
WHERE table_schema = 'ola'
AND table_name = 'ola_data';

select count(*) from ola_data;

select * from ola_data limit 5;
