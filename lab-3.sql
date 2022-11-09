USE sakila;

SELECT COUNT(DISTINCT(last_name))
  FROM actor;

SELECT COUNT(DISTINCT(language_id)) 
  FROM film;

SELECT COUNT(film_id)
  FROM film
 WHERE rating = 'PG-13';
     
SELECT * 
  FROM film
 ORDER BY length DESC
LIMIT 10;
    
SELECT MIN(rental_date) AS start, MAX(rental_date) AS stop, DATEDIFF(MAX(rental_date), MIN(rental_date)) AS days_opened
  FROM rental;

SELECT *,
	   DATE_FORMAT(CONVERT(rental_date, DATE), '%M') AS rental_date_month,
       DATE_FORMAT(CONVERT(rental_date, DATE), '%d') AS rental_date_weekday
  FROM rental
 LIMIT 20;

SELECT *,
	   (CASE
		  WHEN DATE_FORMAT(CONVERT(rental_date, DATE), '%w') = 6 THEN 'weekend'
          WHEN DATE_FORMAT(CONVERT(rental_date, DATE), '%w') = 0 THEN 'weekend'
		  ELSE 'weekday'
	    END) AS date_type
  FROM rental;

SELECT MAX(rental_date) AS last_month_activity
  FROM rental;
-- 2006-02-14 15:16:03

SELECT COUNT(rental_id)
  FROM rental
 WHERE DATE_FORMAT(CONVERT(rental_date, DATE), '%Y-%m-%d') >= '2006-02-01';