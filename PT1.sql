USE Parks_and_Recreation;
SELECT *
FROM employee_salary
WHERE salary > 50000 ;
-- LIKE AND OR % __ --
SELECT * 
FROM employee_demographics
WHERE age > 30
OR first_name LIKE 'je%';

SELECT *
FROM employee_demographics

 