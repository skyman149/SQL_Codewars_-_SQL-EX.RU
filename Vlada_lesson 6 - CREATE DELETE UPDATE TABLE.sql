
	-- AUTO_INCREMENT -> auto zapolnenie
	-- PRIMARY KEY is always NOT NULL
	
	
	--				CREATE TABLE

-- CREATE TABLE `user` (
-- 	id int(5) NOT NULL AUTO_INCREMENT,
--   	first_name varchar(50),
--   	last_name varchar(50),
--   	email varchar(50),
  
--   	PRIMARY KEY (id)
-- );

-- INSERT INTO `user` (first_name, last_name, email)
-- VALUES ('Ivan', 'Ivanov', 'i.i@i.com');

-- INSERT INTO `user` (first_name, last_name, email)
-- VALUES ('Vasya', 'Petrov', 'vas.pet@huy.com');

-- SELECT * FROM `user`;


-- 				UPDATE TABLE

-- UPDATE `user`
-- SET last_name = 'Sidorov'
-- WHERE id = 2;

-- SELECT * FROM `user`;


--				DELETE FROM table (deletes one by one, slow)

-- DELETE FROM user
-- WHERE id = 3;

-- --DELETE 3 last rows

-- DELETE FROM user
-- ORDER BY id DESC
-- LIMIT 3;


-- 				TRUNCATE TABLE (deletes table and re-creates new empty one table) (deltes forewer "no Cntr+Z") (delets all in a moment - fast)

-- TRUNCATE TABLE user;


-- 				DROP table (delets all permanently unles you have back up; can delete column or table -> VERY DANGARES)

-- DROP user;



--				ALTER TABLE (updates table, renames table or column)

-- ALTER TABLE `user`
-- ADD city varchar(100) NOT NULL
-- AFTER last_name; -- adds "city" in specific place

-- ALTER TABLE `user`
-- ADD city varchar(100)
-- FIRST; -- adds "city" in specific placeas first column

-- ALTER TABLE `user`
-- ADD city varchar(100) -- adds "city" as the last column

-- ALTER TABLE `user`
-- DROP COLUMN email;

-- ALTER TABLE `user`
-- RENAME TO user1;  -- renames table


-- SELECT * FROM `user`;
-- ALTER TABLE `user`
-- CHANGE COLUMN email city17 varchar(100)  -- renames column
-- AFTER last_name;  -- placed after last_name column
-- SELECT * FROM `user`;


--				RENAME table

-- RENAME TABLE `user` TO user1;

-- exercises
SELECT * FROM country;
UPDATE country
SET country_name = "USA"
WHERE id = 1;
SELECT * FROM country;

-- SELECT * FROM country;
-- UPDATE country
-- SET country_name = "USA"
-- WHERE id = 1;
-- DELETE FROM country
-- ORDER BY id DESC
-- LIMIT 1;
-- SELECT * FROM country;






