-- QUESTION #1

SELECT customer.*
FROM customer
JOIN address ON customer.address_id = address.address_id
WHERE address.district = 'Texas';


--  QUESTION #2

SELECT customer.first_name || ' ' || customer.last_name as full_name, payment.amount
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
WHERE payment.amount > 6.99;

-- QUESTION #3

SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    WHERE amount > 175
);

-- QUESTION #4

SELECT *
FROM city
WHERE city = 'Nepal';

-- QUESTION #5

SELECT *
FROM payment
GROUP BY payment_id
ORDER BY COUNT(payment_id) DESC;

-- QUESTION #6

SELECT *
FROM movies
GROUP BY movies.movieid;

-- QUESTION #7

SELECT first_name, last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id
    FROM payment
    WHERE amount > 6.99
    GROUP BY customer_id
    HAVING COUNT(*) = 1
);

-- QUESTION #8

SELECT COUNT(*) as rentals
FROM rental;