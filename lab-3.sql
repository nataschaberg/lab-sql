use sakila;

select count(distinct(last_name)) from actor;

select count(distinct(language_id)) from film;

select count(film_id) from film
	 where rating = 'PG-13';
     
select * from film
	order by length desc
    limit 10;
    
select min(rental_date) as start, max(rental_date) as stop, datediff(max(rental_date), min(rental_date)) as days_opened  from rental;

select *,
	date_format(convert(rental_date,date), '%M') as rental_date_month,
    date_format(convert(rental_date, date), '%d') as rental_date_weekday
    from rental
	limit 20;

select *,
	case
		when date_format(convert(rental_date,date), '%w') = 6 then 'weekend'
        when date_format(convert(rental_date,date), '%w') = 0 then 'weekend'
		else 'weekday'
	end as date_type
    from rental;

select max(rental_date) as last_month_activity from rental;
-- 2006-02-14 15:16:03

select * from rental
	where date_format(convert(rental_date, date), '%Y-%m-%d') >= '2006-02-01';