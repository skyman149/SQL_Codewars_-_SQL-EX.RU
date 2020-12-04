SELECT country_name AS 'Country',
	   population AS 'Population'
FROM country;
/* renames and shows column country_name as Country*/

SELECT * FROM country
ORDER BY country_name;
/* in abc order */

SELECT * FROM country
ORDER BY country_name DESC;
/* in reverse abc order, descent */

SELECT country_name, population
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

/*

SELECT * FROM user
WHERE state IS NULL;
/* IS used only with NULL*/
SELECT * FROM user
WHERE state != 'CA' OR state IS NULL;
/*state not CA or state not provided*/
SELECT * FROM user
WHERE IS NOT NULL;
/*only if state info provided*/

SELECT * FROM user
WHERE email LIKE '%.ru';
/*all user with email finishing on '.ru'*/

SELECT country_name AS 'Country Name',
		population AS Population
FROM country 
WHERE country_name = 'Belarus';
/*Country Name	  Population 
  Belarus	      9452411*/
  
  
/* FINISH*/ /* :) (: */
























