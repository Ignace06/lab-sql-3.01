use sakila;


-- Drop column picture from staff.
select * from staff;
ALTER table staff 
drop column picture;

select * from staff;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
select * from customer
where first_name = "TAMMY";

select * from staff;
insert into staff(staff_id, first_name, last_name, address_id, email, store_id, active, username) 
values
(3, 'TAMMY', 'SANDERS', 79, 'TAMMY.SANDERS@sakilacutomer.org', 2, 1, 'TAMMY');

select * from staff;


-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1
select film_id, title from film
where title ="Academy Dinosaur";
-- inventory_id = 130

select * from customer
where first_name ='CHARLOTTE';
-- customer_id = 130

select * from rental;

insert into rental(rental_id, inventory_id, customer_id, staff_id)
values
(16050, 1, 130, 1);

select * from rental
where inventory_id ="1" and customer_id = 130;


