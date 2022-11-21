USE sakila;
-- 1
SELECT title, length, 
       DENSE_RANK() OVER (ORDER BY length) AS ranking
  FROM film
 WHERE length > 0;

-- 2
SELECT title, length, rating,
       DENSE_RANK() OVER (PARTITION BY rating ORDER BY length) AS ranking
  FROM film
 WHERE length > 0
 ORDER BY length;

-- 3
SELECT c.*,
	   COUNT(*) AS films_per_category
  FROM category as c
  JOIN film_category AS f
    ON f.category_id = c.category_id
 GROUP BY f.category_id;

-- 4
SELECT a.*,
	   COUNT(*) AS films_per_actor
  FROM actor AS a
  JOIN film_actor AS fa
    ON fa.actor_id = a.actor_id
 GROUP BY fa.actor_id
 ORDER BY films_per_actor DESC
 LIMIT 1;

-- 5
SELECT c.*,
	   COUNT(*) AS rentals_per_customer
  FROM customer AS c
  JOIN rental AS r
    ON r.customer_id = c.customer_id
 GROUP BY r.customer_id
 ORDER BY rentals_per_customer DESC
 LIMIT 1;
