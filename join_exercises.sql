use employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_manager, d.dept_name AS Department_Name
From employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no;

SELECT CONCAT (e.first_name, ' ', e.last_name, e.gender) AS Manager_Name, d.dept_name AS Department_Name
FROM employees AS e
JOIN dept_manager AS dm
    on e.emp_no = dm.emp_no
JOIN departments as d
ON d.dept_no =  dm.dept_no
WHERE e.gender = 'F';



SELECT t.title AS "Title", COUNT(*) AS "Count"
FROM departments AS d
JOIN dept_emp AS de
ON de.dept_no = d.dept_no
JOIN titles AS t
ON t.emp_no = de.emp_no
WHERE de.to_date > NOW()
  AND t.to_date > NOW()
  AND d.dept_name = 'Customer Service'
GROUP BY t.title;


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Manager', s.salary
FROM salaries AS s
JOIN dept_manager AS m
 ON m.emp_no = s.emp_no
JOIN employees AS e
ON e.emp_no = m.emp_no
JOIN departments AS d
ON d.dept_no = m.dept_no
WHERE m.to_date > NOW()
  AND s.to_date > NOW()
ORDER BY d.dept_name;




