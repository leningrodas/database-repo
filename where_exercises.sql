use employees;

SELECT first_name
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya');

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%';

SELECT hire_date
FROM employees
WHERE hire_date BETWEEN '1990-01-01' and '1990-12-31';

SELECT birth_date
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT first_name
FROM employees
WHERE first_name like 'Irene' OR first_name = 'Vidya' OR first_name = 'Maya';

SELECT first_name
FROM employees
WHERE first_name like 'Irene' OR first_name = 'Vidya' OR first_name = 'Maya' AND gender = 'Male'dd;

SELECT last_name
FROM employees
WHERE last_name RLIKE '^[%E]' and last_name like '%E';

SELECT hire_date, birth_date
FROM employees
WHERE birth_date LIKE '%12-25' AND ( hire_date BETWEEN '1990-01-01' and '1999-12-31');



SELECT last_name
from employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';