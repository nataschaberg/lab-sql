USE sakila;

-- 1
ALTER TABLE staff
 DROP COLUMN picture;

-- 2
INSERT INTO staff 
VALUES (3,'Tammy','Sanders', 79, 'Tammy.Sanders@sakilacustomer.org', 2, 1, 'Tammy', NULL, CURRENT_TIMESTAMP);

-- 3
INSERT INTO rental
VALUES (16050, CURRENT_TIMESTAMP, 1, 130, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 6 DAY), 1, CURRENT_TIMESTAMP);

SELECT *
  FROM rental
 ORDER BY rental_id DESC;
 
-- 4
SELECT active, COUNT(*)
  FROM customer
 GROUP BY active;
 
SELECT customer_id, email
  FROM customer
 WHERE active = 0;
 
CREATE TABLE deleted_users (
	customer_id int UNIQUE NOT NULL,
    email varchar(50) DEFAULT NULL,
    date timestamp NOT NULL,
	CONSTRAINT PRIMARY KEY(customer_id)
);

INSERT INTO deleted_users
VALUES (16, 'SANDRA.MARTIN@sakilacustomer.org', CURRENT_TIMESTAMP),
(64, 'JUDITH.COX@sakilacustomer.org', CURRENT_TIMESTAMP),
(124, 'SHEILA.WELLS@sakilacustomer.org', CURRENT_TIMESTAMP),
(169, 'ERICA.MATTHEWS@sakilacustomer.org', CURRENT_TIMESTAMP),
(241, 'HEIDI.LARSON@sakilacustomer.org', CURRENT_TIMESTAMP),
(271, 'PENNY.NEAL@sakilacustomer.org', CURRENT_TIMESTAMP),
(315, 'KENNETH.GOODEN@sakilacustomer.org', CURRENT_TIMESTAMP),
(368, 'HARRY.ARCE@sakilacustomer.org', CURRENT_TIMESTAMP),
(406, 'NATHAN.RUNYON@sakilacustomer.org', CURRENT_TIMESTAMP),
(446, 'THEODORE.CULP@sakilacustomer.org', CURRENT_TIMESTAMP),
(482, 'MAURICE.CRAWLEY@sakilacustomer.org', CURRENT_TIMESTAMP),
(510, 'BEN.EASTER@sakilacustomer.org', CURRENT_TIMESTAMP),
(534, 'CHRISTIAN.JUNG@sakilacustomer.org', CURRENT_TIMESTAMP),
(558, 'JIMMIE.EGGLESTON@sakilacustomer.org', CURRENT_TIMESTAMP),
(592, 'TERRANCE.ROUSH@sakilacustomer.org', CURRENT_TIMESTAMP);

SELECT *
  FROM deleted_users;

SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM customer
 WHERE active = 0;

SET FOREIGN_KEY_CHEKS = 1;