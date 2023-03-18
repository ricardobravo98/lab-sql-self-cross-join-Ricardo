USE sakila;

-- 1 
Select a.actor_id, b.actor_id, c.first_name, c.last_name,  a. film_id from film_actor as a
join film_actor as b
on a.actor_id <> b.actor_id
and a.film_id = b.film_id
Join actor as c on a.actor_id = c.actor_id;

-- 2
Select customer_id, rental_id from rental a
join film b on 


