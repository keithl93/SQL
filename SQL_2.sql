--Analyzing 'planes' table from 'nycflights13' database

SELECT * FROM planes;

SELECT * FROM planes
WHERE year = 2000;
--2025 records

SELECT * FROM planes
WHERE manufacturer ILIKE 'boeing';
--1630 records

SELECT * FROM planes
WHERE year BETWEEN 1980 AND 1990;
--315 records

SELECT * FROM planes
WHERE manufacturer IN('CESSNA', 'BOEING', 'AIRBUS');
--1975 recrods

SELECT * FROM planes
WHERE year IS NULL;
--70 records

SELECT * FROM planes
WHERE speed IS NULL;
--3299 records

SELECT * FROM planes
WHERE seats NOT BETWEEN 50 AND 200;
--417 records

SELECT * FROM planes
WHERE engine like 'Turbo%';
--3292 recrods

SELECT * FROM planes
WHERE model like '___-___';
--1496 records

SELECT * FROM planes
WHERE year < 1980 AND seats > 100;
--9 records

SELECT * FROM planes
WHERE year > 2000 OR engine = 'Reciprocating';
--1806 recrods

SELECT * FROM planes
WHERE year BETWEEN 1980 AND 1990
	AND engines != 2
	AND speed IS NOT NULL 
	AND manufacturer IN('BOEING', 'CESSNA');
--1 record

SELECT * FROM planes
WHERE year BETWEEN 1980 AND 1990
	AND engines != 2
	AND speed IS NOT NULL
OR manufacturer IN('BOEING', 'CESSNA');
--1639 records

SELECT * FROM planes
WHERE year BETWEEN 1980 AND 1990
	AND engines != 2
	AND (speed IS NOT NULL 
OR manufacturer IN('BOEING', 'CESSNA'));
--2 records

