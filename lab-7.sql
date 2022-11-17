USE sakila;

-- 1
SELECT last_name, COUNT(*) AS num_of_lastnames
  FROM actor
 GROUP BY last_name
HAVING num_of_lastnames = 1
 ORDER BY num_of_lastnames DESC;

-- 2
SELECT last_name, COUNT(*) AS num_of_lastnames
  FROM actor
 GROUP BY last_name
HAVING num_of_lastnames > 1
 ORDER BY num_of_lastnames DESC;

-- 3
SELECT staff_id, COUNT(*) AS num_processed_rentals
  FROM rental
 GROUP BY staff_id
 ORDER BY num_processed_rentals DESC;

-- 4
SELECT release_year, COUNT(*) AS films_per_year
  FROM film
 GROUP BY release_year;
 
-- 5
SELECT rating, COUNT(*) AS num_films_per_rating
  FROM film
 GROUP BY rating
 ORDER BY num_films_per_rating DESC;

-- 6
SELECT rating, ROUND(AVG(length), 2) AS avg_film_lenght_per_rating
  FROM film
 GROUP BY rating;

-- 7 
SELECT rating, ROUND(AVG(length), 2) AS avg_film_lenght_per_rating
  FROM film
 GROUP BY rating
HAVING avg_film_lenght_per_rating > 120;


