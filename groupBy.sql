SELECT * FROM students;

SELECT country, count(*) FROM students
GROUP BY country;

--filter group using having to show only with average age above  20.60

SELECT country, avg(age) FROM students
GROUP BY country
HAVING avg(age) > 20.60;


--count Students Born in Each Year
SELECT extract(year FROM dob) as birth_year, count(*)
FROM students
GROUP BY birth_year
