USE sakila;

DROP TABLE IF EXISTS films_2020;

CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` int(6),
  `rental_rate` decimal(4,2),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

SELECT *
  FROM films_2020;

-- after wizard import - clean up data and types
UPDATE films_2020
   SET rental_duration = NULL,
       rental_rate = NULL,
       replacement_cost = NULL;
   
 ALTER TABLE films_2020
MODIFY rental_duration INT(6),
MODIFY rental_rate DECIMAL(4,2),
MODIFY replacement_cost DECIMAL(5,2);

-- Update information on rental_duration, rental_rate, and replacement_cost
UPDATE films_2020
   SET rental_duration = 3,
       rental_rate = 2.99,
       replacement_cost = 8.99;
