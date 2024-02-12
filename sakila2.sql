use sakila;

Select MAX(length) as max_duration, MIN(length) as min_duration, CONCAT(FLOOR(AVG(length) / 60), ' hours ', AVG(length) % 60, ' minutes') as avg_duration 
from film;

Select DATEDIFF(MAX(rental_date), MIN(rental_date)) as days_operating
from rental;

Select rental_id, rental_date, MONTHNAME(rental_date) as rental_month, DAYNAME(rental_date) as rental_weekday 
from rental limit 20;


Select title, IFNULL(length, 'Not Available') as rental_duration from film order by title asc;


Select  count(*) as total_films_released, rating, count(*) as num_films, ROUND(AVG(length), 2) as avg_duration 
from film
group by rating
order by num_films desc;
