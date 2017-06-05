
SELECT DISTINCT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10;

SELECT emp_no, first_name, last_name
FROM employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;