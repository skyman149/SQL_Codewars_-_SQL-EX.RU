-- https://www.db-fiddle.com/f/u55yPYz7QbEGdpJPyE5BHs/0

SELECT city.city_name, country.country_name_eng
FROM city
LEFT JOIN country ON city.country_id = country.id
WHERE country.country_name_eng = 'Germany';

