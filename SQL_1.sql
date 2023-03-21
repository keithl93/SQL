select column_name, data_type
from information_schema.columns
where table_name = 'film';

select * from film
limit 100;

SELECT title FROM film
limit 10;

SELECT title, description, rental_rate, rental_rate*1.02
FROM film;

SELECT title, description, rental_rate, rental_rate*1.02 AS rental_rate_increase
FROM film;
--you can also omit the "AS" operator like "title film_title" instead "title AS film_title"

SELECT title, description, rental_rate,
ROUND(rental_rate*1.02, 2) AS rental_rate_increase
FROM film;

--create bespoke fields using string expressions
SELECT title || '. Rated: ' || rating AS title_rating, release_year
FROM film;

--CONCAT function 
SELECT CONCAT(title, '. Rated: ', rating) AS title_rating, release_year
FROM film;

--Capitalize first letter
SELECT CONCAT(INITCAP(title), ' .Rated: ', rating) AS title_rating, release_year
FROM film;

