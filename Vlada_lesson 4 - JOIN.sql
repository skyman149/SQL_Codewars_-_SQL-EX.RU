-- see database calls in Vlada_lesson 1.0

-- https://www.db-fiddle.com/f/vTEGCb6tg182pUbcWrbeVY/1

-- group by year, month sum of all inbound calls
SELECT  year,
		month,
        SUM(inbound) AS Total_per_month
FROM calls
GROUP BY year,
         month;

-- group by year, month sum of all inbound calls ONLY WHERE 100+ inbound calls DESC
SELECT  year,
		month,
        SUM(inbound) AS Total_per_month
FROM calls
GROUP BY year,
         month
HAVING Total_per_month > 100
ORDER BY total_per_month DESC;

--   INNER JOIN / JOIN

-- SELECT * 
-- FROM country
-- JOIN user ON country.id = user.country_id;

-- SELECT country_name, first_name, last_name
-- FROM country
-- JOIN user ON country.id = user.country_id;

