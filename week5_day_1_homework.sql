-- week5_day1 homework

-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name) AS wahlberg_names
FROM actor
WHERE last_name LIKE 'Wahlberg';


-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount) AS pmts_3_99_and_5_99
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;


-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id) AS stock
FROM inventory
GROUP BY film_id
ORDER BY stock DESC;


-- 4. How many customers have the last name ‘William’?
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';

-- 5. What store employee (get the id) sold the most rentals?
SELECT SUM(amount) AS total_sales, staff_id
FROM payment
GROUP BY staff_id
ORDER BY total_sales DESC;


-- 6. How many different district names are there?
SELECT DISTINCT(district)
FROM address


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(actor_id) AS actor_count, film_id
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC;


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, COUNT(last_name) AS es_last_names
FROM customer
WHERE store_id = 1 and last_name LIKE '%es'
GROUP BY store_id;


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--    with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(customer_id), amount
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(amount)> 250;


-- 10. Within the film table, how many rating categories are there? And what rating has the most
--     movies total?
SELECT DISTINCT(rating)
FROM film


SELECT COUNT(film_id), rating 
FROM film
GROUP BY rating


