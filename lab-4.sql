USE sakila;

SELECT DISTINCT(rating)
  FROM film;
  
SELECT DISTINCT(release_year)
  FROM film;

SELECT *
  FROM film
 WHERE title LIKE '%ARMAGEDDON%';
 
SELECT * 
  FROM film
 WHERE title LIKE '%APOLLO%';
 
SELECT *
  FROM film
 WHERE title LIKE '%APOLLO';

SELECT *
  FROM film
 WHERE title REGEXP 'DATE';

SELECT *
  FROM film
 ORDER BY LENGTH(title) DESC
 LIMIT 10;

SELECT *
  FROM film
 ORDER BY length DESC
 LIMIT 10;
 
SELECT *
  FROM film
 WHERE special_features REGEXP 'Behind the Scenes';
 
 SELECT *
   FROM film
  ORDER BY release_year, title;
 
 