USE sakila;

SELECT *
  FROM rental
 WHERE SUBSTRING(rental_date, 1, 7) = '2005-05';

CREATE TABLE `rentals_may` (
  `rental_id` int unsigned NOT NULL,
  `rental_date` datetime NOT NULL,
  `inventory_id` mediumint unsigned,
  `customer_id` smallint unsigned,
  `return_date` datetime,
  `staff_id` tinyint unsigned,
  `last_update` timestamp,
  PRIMARY KEY (`rental_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO rentals_may
SELECT *
  FROM rental
 WHERE SUBSTRING(rental_date, 1, 7) = '2005-05';

SELECT * 
  FROM rentals_may;

CREATE TABLE `rentals_june` (
  `rental_id` int unsigned NOT NULL,
  `rental_date` datetime NOT NULL,
  `inventory_id` mediumint unsigned,
  `customer_id` smallint unsigned,
  `return_date` datetime,
  `staff_id` tinyint unsigned,
  `last_update` timestamp,
  PRIMARY KEY (`rental_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO rentals_june
SELECT *
  FROM rental
 WHERE SUBSTRING(rental_date, 1, 7) = '2005-06';

SELECT * 
  FROM rentals_june;

-- number of rentals for each customer for May
SELECT customer_id, COUNT(*) As total_rentals
  FROM rentals_may
 GROUP BY customer_id
 ORDER BY total_rentals DESC;

-- number of rentals for each customer for June
SELECT customer_id, COUNT(*) As total_rentals
  FROM rentals_june
 GROUP BY customer_id
 ORDER BY total_rentals DESC;
 
-- for python logic see: lab-9.ipynb
