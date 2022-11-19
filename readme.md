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

<br><br>

# Lab | SQL Queries 3

<br><br>

### Instructions

1. How many distinct (different) actors' last names are there?
2. In how many different languages where the films originally produced? (Use the column `language_id` from the `film` table)
3. How many movies were released with `"PG-13"` rating?
4. Get 10 the longest movies from 2006.
5. How many days has been the company operating (check `DATEDIFF()` function)?
6. Show rental info with additional columns month and weekday. Get 20.
7. Add an additional column `day_type` with values 'weekend' and 'workday' depending on the rental day of the week.
8. How many rentals were in the last month of activity?

<br><br>

# Lab | SQL Queries 4

<br><br>

### Instructions

1. Get film ratings.
2. Get release years.
3. Get all films with ARMAGEDDON in the title.
4. Get all films with APOLLO in the title
5. Get all films which title ends with APOLLO.
6. Get all films with word DATE in the title.
7. Get 10 films with the longest title.
8. Get 10 the longest films.
9. How many films include **Behind the Scenes** content?
10. List films ordered by release year and title in alphabetical order.

<br><br>

# Lab | SQL basics (selection and aggregation)

<br><br>

## Introduction

In this lab, you will be using the `files_for_lab/mysql_dump.sql` database. Load it to Sequel Pro, and there you will find a `bank` database which we will use for the following exercise.

Here, we will practice selecting and projecting data. You can finish all questions with only those clauses:

- `SELECT`
- `SELECT DISTINCT`
- `FROM`
- `WHERE`
- `ORDER BY`
- `LIMIT`

You can save your solutions in a file `solutions.sql`.

## Instructions

Assume that any `_id` columns are incremental, meaning that higher ids always occur after lower ids. For example, a client with a higher `client_id` joined the bank after a client with a lower `client_id`.

### Query 1

Get the `id` values of the first 5 clients from `district_id` with a value equals to 1.

Expected result:

```shell
2
3
22
23
28
```

### Query 2

In the `client` table, get an `id` value of the last client where the `district_id` equals to 72.

Expected result:

```shell
13576
```

### Query 3

Get the 3 lowest amounts in the `loan` table.

Expected result:

```shell
4980
5148
7656
```

### Query 4

What are the possible values for `status`, ordered alphabetically in ascending order in the `loan` table?

Expected result:

```shell
A
B
C
D
```

### Query 5

What is the `loan_id` of the highest payment received in the `loan` table?

Expected result:

```shell
6312
```

### Query 6

What is the loan `amount` of the lowest 5 `account_id`s in the `loan` table? Show the `account_id` and the corresponding `amount`

Expected result:

```shell
#id     amount
2	    80952
19	    30276
25	    30276
37	    318480
38	    110736
```

### Query 7

What are the `account_id`s with the lowest loan `amount` that have a loan `duration` of 60 in the `loan` table?

Expected result:

```shell
10954
938
10711
1766
10799
```

### Query 8

What are the unique values of `k_symbol` in the `order` table?

Note: There shouldn't be a table name `order`, since `order` is reserved from the `ORDER BY` clause. You have to use backticks to escape the `order` table name.

Expected result:

```shell
LEASING
POJISTNE
SIPO
UVER
```

### Query 9

In the `order` table, what are the `order_id`s of the client with the `account_id` 34?

Expected result:

```shell
29445
29446
29447
```

### Query 10

In the `order` table, which `account_id`s were responsible for orders between `order_id` 29540 and `order_id` 29560 (inclusive)?

Expected result:

```shell
88
90
96
97
```

### Query 11

In the `order` table, what are the individual amounts that were sent to (`account_to`) id 30067122?

Expected result:

```shell
5123
```

### Query 12

In the `trans` table, show the `trans_id`, `date`, `type` and `amount` of the 10 first transactions from `account_id` 793 in chronological order, from newest to oldest.

Expected result:

```shell
3556468	981231	PRIJEM	78.6
233254	981216	VYDAJ	600
233104	981212	VYDAJ	1212
233248	981211	VYDAJ	851
233176	981207	VYDAJ	204
3556467	981130	PRIJEM	75.1
233395	981130	VYDAJ	14.6
233103	981112	VYDAJ	1212
233247	981111	VYDAJ	851
233175	981107	VYDAJ	204
```

### Query 13

In the `client` table, of all districts with a `district_id` lower than 10, how many clients are from each `district_id`? Show the results sorted by the `district_id` in ascending order.

Expected result:

```shell
1	663
2	46
3	63
4	50
5	71
6	53
7	45
8	69
9	60
```

### Query 14

In the `card` table, how many cards exist for each `type`? Rank the result starting with the most frequent `type`.

Expected result:

```shell
classic	659
junior	145
gold	88
```

### Query 15

Using the `loan` table, print the top 10 `account_id`s based on the sum of all of their loan amounts.

Expected result:

```shell
7542	590820
8926	566640
2335	541200
817	    538500
2936	504000
7049	495180
10451	482940
6950	475680
7966	473280
339	    468060
```

### Query 16

In the `loan` table, retrieve the number of loans issued for each day, before (excl) 930907, ordered by date in descending order.

Expected result:

```
930906	1
930803	1
930728	1
930711	1
930705	1
```

### Query 17

In the `loan` table, for each day in December 1997, count the number of loans issued for each unique loan duration, ordered by date and duration, both in ascending order. You can ignore days without any loans in your output.

Expected result:

```shell
971206	24	1
971206	36	1
971208	12	3
971209	12	1
971209	24	1
971210	12	1
971211	24	1
971211	48	1
971213	24	1
971220	36	1
971221	36	1
971224	60	1
971225	24	1
971225	60	1
```

### Query 18

In the `trans` table, for `account_id` 396, sum the amount of transactions for each type (`VYDAJ` = Outgoing, `PRIJEM` = Incoming). Your output should have the `account_id`, the `type` and the sum of amount, named as `total_amount`. Sort alphabetically by type.

Expected result:

```shell
396	PRIJEM	1028138.6999740601
396	VYDAJ	1485814.400024414
```

### Query 19

From the previous output, translate the values for `type` to English, rename the column to `transaction_type`, round `total_amount` down to an integer

Expected result:

```shell
396	INCOMING	1028138
396	OUTGOING	1485814
```

### Query 20

From the previous result, modify your query so that it returns only one row, with a column for incoming amount, outgoing amount and the difference.

Expected result:

```shell
396	1028138	1485814	-457676
```

### Query 21

Continuing with the previous example, rank the top 10 `account_id`s based on their difference.

Expected result:

```shell
9707	869527
3424	816372
3260	803055
2486	735219
1801	725382
4470	707243
3674	703531
9656	702786
2227	696564
6473	692580
```

<br><br>

# Lab | SQL Queries 5

<br><br>

### Instructions

1. Drop column `picture` from `staff`.
2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the `rental_date` column in the `rental` table.
   **Hint**: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need `customer_id` information as well. To get that you can use the following query:

    ```sql
    select customer_id from sakila.customer
    where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
    ```
    
    Use similar method to get `inventory_id`, `film_id`, and `staff_id`.

4. Delete non-active users, but first, create a _backup table_ `deleted_users` to store `customer_id`, `email`, and the `date` for the users that would be deleted. Follow these steps:

   - Check if there are any non-active users
   - Create a table _backup table_ as suggested
   - Insert the non active users in the table _backup table_
   - Delete the non active users from the table _customer_

<br><br>

 # Lab | SQL Queries 6
 
<br><br>

In this activity we are going to do some database maintenance. In the current database we only have information on movies for the year 2006. Now we have received the film catalog for 2020 as well. For this new data we will create another table and bulk insert all the data there. Code to create a new table has been provided below.

```sql
drop table if exists films_2020;
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
```

<br>

We have just one item for each film, and all will be placed in the new table. For 2020, the rental duration will be 3 days, with an offer price of `2.99€` and a replacement cost of `8.99€` (these are all fixed values for all movies for this year). The catalog is in a CSV file named **films_2020.csv** that can be found at `files_for_lab` folder.

### Instructions

- Add the new films to the database.
- Update information on `rental_duration`, `rental_rate`, and `replacement_cost`.

### Hint

- You might have to use the following commands to set bulk import option to `ON`:

```sql
show variables like 'local_infile';
set global local_infile = 1;
```

- If bulk import gives an unexpected error, you can also use the `data_import_wizard` to insert data into the new table.

<br><br>

# Lab | SQL Queries 7

<br><br>

### Instructions

1. In the table actor, which are the actors whose last names are not repeated? For example if you would sort the data in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd. These three actors have the same last name. So we do not want to include this last name in our output. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list. 
2. Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
3. Using the rental table, find out how many rentals were processed by each employee.
4. Using the film table, find out how many films were released each year.
5. Using the film table, find out for each rating how many films were there.
6. What is the mean length of the film for each rating type. Round off the average lengths to two decimal places 
7. Which kind of movies (rating) have a mean duration of more than two hours?

<br><br>

# Lab | SQL Queries 8

<br><br>

### Instructions

1. Rank films by length (filter out the rows with nulls or zeros in length column). Select only columns title, length and rank in your output.
2. Rank films by length within the `rating` category (filter out the rows with nulls or zeros in length column). In your output, only select the columns title, length, rating and rank.  
3. How many films are there for each of the categories in the category table? **Hint**: Use appropriate join between the tables "category" and "film_category".
4. Which actor has appeared in the most films? **Hint**: You can create a join between the tables "actor" and "film actor" and count the number of times an actor appears.
5. Which is the most active customer (the customer that has rented the most number of films)? **Hint**: Use appropriate join between the tables "customer" and "rental" and count the `rental_id` for each customer.

**Bonus**: Which is the most rented film? (The answer is Bucket Brotherhood).

This query might require using more than one join statement. Give it a try. We will talk about queries with multiple join statements later in the lessons.

**Hint**: You can use join between three tables - "Film", "Inventory", and "Rental" and count the *rental ids* for each film.

<br><br>

# Lab | SQL Queries 9

<br><br>

### Instructions

In this lab we will find the customers who were active in consecutive months of May and June. Follow the steps to complete the analysis.

- Create a table `rentals_may` to store the data from rental table with information for the month of May.
- Insert values in the table `rentals_may` using the table rental, filtering values only for the month of May.
- Create a table `rentals_june` to store the data from rental table with information for the month of June.
- Insert values in the table `rentals_june` using the table rental, filtering values only for the month of June.
- Check the number of rentals for each customer for May.
- Check the number of rentals for each customer for June.
- Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:

  - Check the number of rentals for each customer for May
  - Check the number of rentals for each customer for June

    **Hint**: You can store the results from the two queries in two separate dataframes.

- Write a function that checks if customer borrowed more or less films in the month of June as compared to May.

  **Hint**: For this part, you can create a join between the two dataframes created before, using the merge function available for pandas dataframes. Here is a link to the documentation for the [merge function](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.merge.html).