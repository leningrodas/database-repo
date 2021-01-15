use employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

# SELECT * FROM departments;
# SELECT dept_no FROM departments WHERE dept_name = 'Customer Service';

SELECT * FROM departments
WHERE dept_no IN (
    SELECT dept_no FROM departments WHERE dept_name = 'Customer Service'
);

SELECT emp_no
FROM dept_manager
WHERE dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
    )
AND to_date > NOW();

SELECT CONCAT (
    (
        SELECT MAX(salary)
        FROM salaries
        WHERE emp_no = 10001
        ),
    ' ',
    (
        SELECT MAX(salary)
        FROM salaries
        WHERE emp_no = 10002
        )
           );

# inner join version
SELECT e.first_name, e.last_name
FROM employees AS e
JOIN dept_manager AS dm ON e.emp_no = dm.emp_no;

# subquery version
SELECT first_name, last_name
FROM employees
WHERE emp_no IN
(
    SELECT emp_no FROM dept_manager
    );

SELECT first_name, last_name
FROM employees
WHERE hire_date IN
(
SELECT hire_date FROM employees
    WHERE emp_no = 101010
    );


SELECT title
from titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    where first_name = 'Aamod'


    );

SELECT first_name, last_name
FROM employees
WHEre emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
    )
AND gender = 'F';