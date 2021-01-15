use employees;


SELECT title
FROM titles
GROUP BY title ASC;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E'
GROUP by last_name;


SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE '%E'
GROUP by last_name, first_name;

SELECT last_name
FROM employees
WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%Q%'
GROUP BY last_name;



SELECT first_name, COUNT(*)
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya')
GROUP BY gender;


