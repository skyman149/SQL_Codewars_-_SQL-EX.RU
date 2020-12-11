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




