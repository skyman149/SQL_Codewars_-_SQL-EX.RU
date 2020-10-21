--get a list of names and ages of users from the users table, who are 18 years old or older.
--users table schema: name, age

SELECT name, age FROM users
WHERE age >= 18;