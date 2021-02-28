-- https://www.db-fiddle.com/f/u55yPYz7QbEGdpJPyE5BHs/0

-- https://www.db-fiddle.com/f/fc5CcFC3GGxFqU5HDgW9uc/0

SELECT city.city_name, country.country_name_eng
FROM city
LEFT JOIN country ON city.country_id = country.id
WHERE country.country_name_eng = 'Germany';


SELECT customer.customer_name AS "Customer Name", 
	   city.city_name AS "Customer City"
FROM customer
LEFT JOIN city ON customer.city_id = city.id;

SELECT *
FROM call
LEFT JOIN call_outcome ON call.call_outcome_id = call_outcome.id; 


--      JOIN 3 TABLES

SELECT c.start_time, c.end_time, co.outcome_text, e.first_name, e.last_name
FROM call c
LEFT JOIN call_outcome co ON c.call_outcome_id = co.id
LEFT JOIN employee e ON c.employee_id = e.id;

SELECT country_name_eng, city_name, customer_name
FROM country co
LEFT JOIN city ci ON co.id = ci.country_id
LEFT JOIN customer cu ON co.id = cu.city_id;

SELECT country_name_eng, COUNT(customer_name)
FROM country co
LEFT JOIN city ci ON co.id = ci.country_id
LEFT JOIN customer cu ON co.id = cu.city_id
GROUP BY country_name_eng;