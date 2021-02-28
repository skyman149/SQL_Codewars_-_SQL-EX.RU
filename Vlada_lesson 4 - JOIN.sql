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

--   INNER JOIN / JOIN (all you need from both tables)

-- SELECT * 
-- FROM country
-- JOIN user ON country.id = user.country_id;

-- SELECT country_name, first_name, last_name
-- FROM country
-- JOIN user ON country.id = user.country_id;


-- "AS" is optional, you can rename like this:


-- SELECT c.id, c.country_name, u.first_name, u.last_name
-- FROM country AS c
-- JOIN user AS u ON c.id = u.country_id;


--     LEFT JOIN (all from left table and only what expected from right table)


-- SELECT c.id, c.country_name, 
-- 	   u.first_name, u.last_name
-- FROM country c
-- LEFT JOIN user u ON c.id = u.country_id;


--          FULL OUTER JOIN (everything from both tables)


-- SELECT c.id, c.country_name, 
-- 	   u.first_name, u.last_name
-- FROM country c
-- FULL OUTER JOIN user u ON c.id = u.country_id;

--EX
SELECT c.date, c.year, m.name, c.inbound, c.outbound, c.transferred
FROM calls c
JOIN month m ON c.month = m.id;

SELECT c.year Year, m.name Name,
	   SUM(c.outbound) Outbound, SUM(c.inbound) Inbound, SUM(c.transferred) Transferred
FROM calls c
JOIN month m ON c.month = m.id
GROUP BY c.year, c.month, m.name
ORDER BY c.year, c.month;