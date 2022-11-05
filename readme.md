![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | SQL Intro

In this lab, you will be using the [Sakila](https://dev.mysql.com/doc/sakila/en/) database of movie rentals. You can follow the steps listed here to get the data locally: [Sakila sample database - installation](https://dev.mysql.com/doc/sakila/en/sakila-installation.html). You can work with two sql query files - `sakila-schema.sql` (creates the schema) + `sakila-data.sql` which inserts the data.

The ERD is pictured below - not all tables are shown, but many of the key fields you will be using are visible:

<br>

![DB schema](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

<br><br>

### Instructions

1. Use sakila database.
2. Get all the data from tables `actor`, `film` and `customer`.
3. Get film titles.
4. Get unique list of film languages under the alias `language`. Note that we are not asking you to obtain the language per each film, but this is a good time to think about how you might get that information in the future.
5.
  - 5.1 Find out how many stores does the company have?
  - 5.2 Find out how many employees staff does the company have? 
  - 5.3 Return a list of employee first names only?

<br><br>

# Lab | SQL Queries 2

<br><br>

### Instructions

1. Select all the actors with the first name ‘Scarlett’.
2. Select all the actors with the last name ‘Johansson’.
3. How many films (movies) are available for rent?
4. How many films have been rented?
5. What is the shortest and longest rental period?
6. What are the shortest and longest movie duration? Name the values `max_duration` and `min_duration`.
7. What's the average movie duration?
8. What's the average movie duration expressed in format (hours, minutes)?
9. How many movies longer than 3 hours?
10. Get the name and email formatted. Example: Mary SMITH - *mary.smith@sakilacustomer.org*.
11. What's the length of the longest film title?