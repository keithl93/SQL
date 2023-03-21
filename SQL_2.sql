SELECT * FROM planes;

SELECT * FROM planes
WHERE year = 2000;

SELECT * FROM planes
WHERE manufacturer ILIKE 'boeing';

SELECT * FROM planes
WHERE year BETWEEN 1980 AND 1990;

SELECT * FROM planes
WHERE year IS NULL;

SELECT * FROM planes
WHERE speed IS NULL;

SELECT * FROM planes
WHERE seats NOT BETWEEN 50 AND 200;

SELECT * FROM planes
WHERE engine like 'Turbo%';

SELECT * FROM planes
WHERE model like '___-___';

SELECT * FROM planes
WHERE year < 1980 AND seats > 100;