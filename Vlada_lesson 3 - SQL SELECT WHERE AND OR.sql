-- SELECT  id,
-- 		   first_name,
--         last_name,
--         rank
-- FROM user;
--                                            OR SAME THING
-- SELECT  user.id,
-- 		   user.first_name,
--         user.last_name,
--         user.rank
-- FROM user;


-- if you want specific column to be first (for comfort) -- user.* -> just because, where user is table name
-- SELECT  rank, 
--         user.*
-- FROM user;

--  Z-A
-- SELECT *
-- FROM country
-- ORDER BY country_name DESC;


--  specific info (in this case Moscow) -- != or <> - not equal
-- SELECT *
-- FROM user
-- WHERE city = 'Moscow';

-- SELECT *
-- FROM user
-- WHERE rank > 100;

-- SELECT rank, city
-- FROM user
-- WHERE rank >= 100 OR
--       city = 'Las Vegas';

-- SELECT *
-- FROM country
-- WHERE population_2019 > 1000000 OR 
--       id < 20
-- ORDER BY population_2019;


-- HOMEWORK

-- #Using schema provided (tables ‘user’ and ‘country’), write the following queries:

-- /****************Query #1****************/
-- #Select all columns in `country` and rename them so that their first letters are capitalized. Display only countries where latest population is more than 1 mln and less than 10 mln, inclusive.
-- #Sort results by the latest population, starting from the largest.
 
-- #Your query goes here:

-- # SELECT country_name AS Country_name,
-- # 	   population_2018 AS Population_2018,
-- #        population_2019 AS Population_2019
-- # FROM country
-- # WHERE population_2019 >= 1000000 AND
-- # 	  population_2019 <= 10000000
-- # ORDER BY population_2019 DESC;

-- /****************Query #2****************/
-- #Rewrite previous query: add a column that displays population increase or decrease. Name new column accordingly. Sort results by the new column, starting from the largest.

-- # SELECT country_name AS Country_name,
-- # 	   population_2018 AS Population_2018,
-- #        population_2019 AS Population_2019,
-- #        population_2019 - population_2018 AS Population_Change
-- # FROM country
-- # WHERE population_2019 >= 1000000 AND
-- # 	  population_2019 <= 10000000
-- # ORDER BY Population_Change DESC;

-- /****************Query #3****************/
-- #Write a query that displays only unique country names, for countries starting with the letter 'K'. 
-- #Sort by country name aplhabetically.

-- # SELECT DISTINCT country_name
-- # FROM country
-- # WHERE country_name LIKE 'K%';
-- # -- will be sorted alphabeticaly by default --

-- /****************Query #4****************/
-- #Display 10 countries with the largest population in 2019.

-- # SELECT * FROM country
-- # ORDER BY population_2019 DESC
-- # LIMIT 10;

-- /****************Query #5***************/
-- #Select all users who don't live in Califronia, with emails that have 'gmail' in them.

-- # SELECT * FROM user
-- # WHERE state != 'CA' AND email LIKE '%gmail%';

-- /****************Query #6****************/
-- #Select all users with last names that have 'a' as a second letter.

-- # SELECT * FROM user
-- # WHERE last_name LIKE '_a%';

-- /****************Query #7****************/
-- #Select all users with Russian male last names (use only last names from the table) who don't live in Sacramento and San Jose. Use logical operators.

-- # SELECT * FROM user
-- # WHERE last_name NOT LIKE '%a' AND
-- # 	  last_name NOT LIKE '%o' AND
-- # 	  city != 'Sacramento' AND
-- #       city != 'San Jose';

-- /****************Query #8****************/
-- #Select all countries which don't have a value in either one of the population columns.

-- # SELECT * FROM country
-- # WHERE country_name IS null OR
-- #       population_2018 IS null OR
-- #       population_2019 IS null;

-- /****************Query #9****************/
-- #Select all user records where state is not empty (null is considered an emply value).

-- # SELECT * FROM user
-- # WHERE state IS NOT null;

-- /****************Query #10****************/
-- #Select all users from California and Nevada only, with rank over 50. Sort results by rank starting from the largest. Display rank as the first column.

-- # SELECT rank, user.*
-- # FROM user
-- # WHERE rank > 50 AND 
-- # 	  (state = 'CA' OR state = 'NV');

-- /****************Query #11****************/
-- #Display rank, first name, last name and email of a user with the highest rating. Rename rank to 'Rating'. Rename first and last names to be displayed as 2 words, capitalized.

-- # SELECT rank AS Rating,
-- # 	   first_name AS 'First Name',
-- #        last_name AS 'Last Name',
-- #        email
-- # FROM user
-- # ORDER BY rank DESC
-- # LIMIT 1;

-- /****************Query #12****************/
-- #Find users who live on the Avenue ('Ave'), whose street address starts with any 2 symbols, and has '7' as a third symbol.

-- # SELECT * FROM user
-- # WHERE street_address LIKE '%Ave%' AND
-- #       street_address LIKE '__7%';
-- #  -- OR street_address LIKE '__7'; depends what you mean exactly


