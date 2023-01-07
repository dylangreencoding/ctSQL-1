--1. How many actors are there with the last name ‘Wahlberg’?
select count(last_name) 
as homework 
from actor 
where last_name = 'Wahlberg'; 
/*ANSWER: 2 actors*/


/*2. How many payments were made between $3.99 and $5.99?*/
select count(amount)
from payment 
where amount between 3.99 and 5.99;
/*ANSWER: 4802 payments*/


/*3. What film does the store have the most of? (search in inventory)*/
select * from inventory;

select count(film_id), film_id 
from inventory 
group by film_id 
order by count(film_id) desc;
/*ANSWER: they have maximum 8 copies of a bunch of different films*/


/*4. How many customers have the last name ‘William’?*/
select count(last_name) 
from customer 
where last_name = 'William';
/*ANSWER: 0 customers*/


/*5. What store employee (get the id) sold the most rentals?*/
select count(*)
from payment;

select staff_id, count(staff_id)
from payment
group by staff_id
order by count(staff_id) desc; 
/*employee with staff_id 2 sold the most rentals*/


/*6. How many different district names are there?*/
select * from address;

select district, count(distinct district)
from address
group by district order by count(distinct district);

select count(distinct district) from address;
/*ANSWER: 378 distinct district names*/


/*7. What film has the most actors in it? (use film_actor table and get film_id)*/
select film_id, count(film_id)
from film_actor 
group by film_id
order by count(film_id) desc;
/*ANSWER: film_id 508*/

/*8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)*/
select count(*)
from customer
where last_name like '%es';
/*ANSWER: 21 customers*/

/*9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)*/
select *
from payment;

select count(amount), amount
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;
--ANSWER: 3 payment amounts


/*10. Within the film table, how many rating categories are there? And what rating has the most
movies total?*/
select * from film;

select rating, count(rating) 
from film
group by rating order by count(rating);

/*ANSWER: 5 rating categories, most movies with PG-13 rating*/
