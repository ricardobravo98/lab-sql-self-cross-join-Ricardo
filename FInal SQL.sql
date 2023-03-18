USE sakila;

-- 1 
Select a.actor_id, b.actor_id, c.first_name, c.last_name,  a. film_id from film_actor as a
join film_actor as b
on a.actor_id <> b.actor_id
and a.film_id = b.film_id
Join actor as c on a.actor_id = c.actor_id;

-- 2
select d.customer_id,a.customer_id, count(b.film_id) from rental a
join inventory b on a.inventory_id = b.inventory_id
join film c on b.film_id = c.film_id
join rental d on a.customer_id < d.customer_id
where b.film_id > 3
group by d.customer_id, b.film_id;

-- 3
select a.film_id, a.actor_id,b.actor_id,b.film_id from film_actor a
join film_actor b on a.actor_id < b.actor_id
and a.film_id < b.film_id
order by a.film_id, a.actor_id;


