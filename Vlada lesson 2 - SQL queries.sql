/* 3 */
SELECT 
	country_name AS "Country Name",
    population AS Population
FROM country
WHERE population >= 1000000 AND population <= 10000000;

/* 4. Select all users with last names that have 'a' as a second letter. */
SELECT * FROM user 
WHERE lats_name LIKE "_a%"; /* _ -> skip first letter, % -> any number of letters*/

/* 5. select all users from Kiev, Vancuver, Moscow*/
SELECT * FROM user
WHERE city NOT IN ('Moscow', 'Kiev');

/* select all counteis where country name starting with 'B' and pop > 9000000*/
SELECT country_name, population FROM country
WHERE (country_name > 'B' 
	AND country_name < 'C')
	AND population > 9000000
ORDER BY population DESC;

/*all countries where name finished on 's' and pop > 10000000 */
SELECT * FROM country
WHERE country_name LIKE '%s'
	AND population > 10000000
ORDER BY country_name;

/**/
SELECT * FROM user
WHERE state IN ('CA', 'NV') AND rank > 100;

/*3 colums will be shown, math operators +,-,*,/ can be used*/
SELECT  country_name,
        population_2018,
        population_2019,
        population_2019 - population_2018 AS Difference
FROM country;

SELECT * FROM country
WHERE population_2019 - population_2018 = 1;

SELECT first_name, email, rank
FROM user
WHERE state = 'CA' AND
	  rank > 200;
      
SELECT *, population_2019 - population_2018 AS Population growth per year
FROM country
WHERE country_name > 'B' 
AND population_2019 - population_2018 > 1000
ORDER BY country_name;



