use saklia;

select * from actor where upper(first_name) = upper('Scarlett');

select * from actor where upper(last_name) = upper('Johansson');

select count(film_id) from film;

select count(rental_id) from rental;

select max(rental_duration) as max_rental_duration, min(rental_duration) as min_rental_duration from film;

select max(length) as max_duration, min(length) as min_duration from film;

select avg(length) as avg_duration from film;

select avg(length) as avg_duration from film;

select avg(length), concat(floor(avg(length)/60), ':', date_format(cast(avg(length)%60 as time), '%s')) as length_c from film;

select count(film_id) from film where length > 180;

select trim(lower(email)) from customer;

select max(length(title)) from film;