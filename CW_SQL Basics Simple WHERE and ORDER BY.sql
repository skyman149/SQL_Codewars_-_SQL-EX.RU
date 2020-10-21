--return all columns from the people table WHERE their age is over 50, order by the age descending
--people table schema: id, name, age

SELECT * FROM people
WHERE age > 50
ORDER BY age DESC