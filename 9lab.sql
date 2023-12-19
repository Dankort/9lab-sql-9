use sakila;

-- 1 Create a table rentals_may to store the data from rental table with information for the month of May.

-- insert into rental_may(rental_date,inventory_id,customer_id,return_date, staff_id)

-- select rental_date,inventory_id,customer_id,return_date, staff_id from rental where MONTH(rental_date) = 05;


insert into rental_june(rental_date,inventory_id,customer_id,return_date, staff_id)

select rental_date,inventory_id,customer_id,return_date, staff_id from rental where MONTH(rental_date) = 06;

-- Check the number of rentals for each customer for May.
select  count(rm.rental_id) as rental_count, rm.customer_id, c.first_name, c.last_name
from rental_may as rm
left join customer as c on rm.customer_id = c.customer_id
group by  customer_id;

-- Check the number of rentals for each customer for June.

select  count(rj.rental_id) as rental_count, rj.customer_id, c.first_name, c.last_name
from rental_june as rj
left join customer as c on rj.customer_id = c.customer_id
group by  customer_id;
