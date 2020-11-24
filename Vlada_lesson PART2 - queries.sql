Select country_name, population
FROM country
WHERE population > 100000000
ORDER BY Country_name;
/*countiries with 100000000 population*/

SELECT * FROM country
WHERE country_name LIKE 'L%';
/*Latvia, Litvania*/

SELECT * FROM country
WHERE population LIKE '_1%';
/*_second symbol is 1*/
SELECT * FROM country
WHERE population LIKE '__1%';
/*_third symbol is 1*/
SELECT * FROM country
WHERE population LIKE '%52%'
/*population number contains 52 inside of population number*/

SELECT * FROM country
WHERE country_name IN ('Latvia', 'Lithuania', 'Estonia');
/*Selects all info related to provided counties*/

SELECT * FROM country
WHERE population BETWEEN 1000000 AND 5000000;
/*inclusive both numbers*/
SELECT * FROM country
WHERE population > 1000000 AND 
	  population < 5000000;
/*not inclusive both numbers*/

SELECT * FROM user
WHERE state IS NULL;
/* IS used only with NULL*/
SELECT * FROM user
WHERE state != 'CA' OR state IS NULL;
/*state not CA or state not provided*/
SELECT * FROM user
WHERE IS NOT NULL;
/*only if state info provided*/
























