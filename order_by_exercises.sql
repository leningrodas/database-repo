use employees;

SELECT first_name, COUNT(*)
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya')
ORDER BY gender ;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irene', 'Vidya', 'Maya')
ORDER BY first_name DESC, last_name;


SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;