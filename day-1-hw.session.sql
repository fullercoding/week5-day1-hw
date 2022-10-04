-- 1. How many actors are there with the last name ‘Wahlberg’?  
Select COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

--Answer: 2

--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99

--Answer: 5602

--3. What film does the store have the most of? (search in inventory)
SELECT COUNT(inventory_id), film_id
FROM inventory
GROUP BY inventory_id
ORDER BY inventory_id DESC;

--Answer film id: 100

--4. How many customers have the last name ‘William’?
SELECT count(last_name)
FROM customer
WHERE last_name = 'William'

--Answer: 0 but with 'Will%'= 3 and 


--5. What store employee (get the id) sold the most rentals?
SELECT COUNT(staff_id)
FROM payment
GROUP BY staff_id

--Answer: Staff_id 2 had 7304 transactions


--6. How many different district names are there?
Select COUNT(DISTINCT district)
FROM address

--Answer: 378 different districts

--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, max(actor_id) 
from film_actor
GROUP BY film_id
ORDER BY max(actor_id) DESC;

--Answer: film_id 544?? Uncertain on this one, little stuck on grouping here.

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name)
FROM customer
WHERE last_name like '%es'

--Answer: 21

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
SELECT customer_id, amount, rental_id
FROM payment
WHERE amount BETWEEN 4.99 and 5.99  
WHERE customer_id BETWEEN 380 and 430
ORDER BY rental_id > 250 

-- come back to 

--10. Within the film table, how many rating categories are there? 
--And what rating has the most
--movies total?
SELECT COUNT(DISTINCT rating)
from film

-- 1st answer: 5

SELECT film_id, COUNT(rating) AS totrating
FROM film
GROUP BY film_id

-- 