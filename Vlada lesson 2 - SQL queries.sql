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



