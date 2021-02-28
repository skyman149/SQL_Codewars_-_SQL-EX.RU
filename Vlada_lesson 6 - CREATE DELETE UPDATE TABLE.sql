
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


--				DELETE FROM table

-- DELETE FROM user
-- WHERE id = 3;

-- --DELETE 3 last rows

-- DELETE FROM user
-- ORDER BY id DESC
-- LIMIT 3;


-- 				TRUNCATE TABLE (deletes table and re-creates new empty one table) (deltes forewer "no Cntr+Z")

-- TRUNCATE TABLE user;