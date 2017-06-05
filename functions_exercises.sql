SELECT 'All employees whose first name is either Irena, Vidya or Maya:' AS '';
SELECT COUNT(*), gender
FROM employees
WHERE(
  first_name = 'Irena'
  OR first_name = 'Maya'
  OR first_name = 'Vidya'
)
GROUP BY gender;


SELECT 'All employees whose last name starts AND ends with an E:' AS '';
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E';


SELECT 'All employees who were hired between 1990 and 1999 AND born on Christmas:' AS '';
SELECT DATEDIFF(curdate(), hire_date) AS 'Days worked for company', CONCAT(first_name, ' ', last_name) AS full_name
FROM employees.employees
WHERE hire_date LIKE '199%'
      AND birth_date LIKE '%-12-25';


SELECT 'All employees whose last name includes a q and not qu:' AS '';
SELECT COUNT(DISTINCT first_name), last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY last_name;
