-- GROUP BY ,  AVG ,ORDER BY

SELECT 
    gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM
    employee_demographics
GROUP BY gender
;

SELECT *
FROM employee_demographics
ORDER BY first_name ASC -- DESC = descending order
;

SELECT *
FROM employee_demographics
ORDER BY gender, age -- gender ayin order pe gender tamyo si mhr age ko ll order
;
SELECT *
FROM employee_demographics
ORDER BY 5, 4; -- 4=age , 5= gender tate ma tone bu column 1 khu delete yin ma mhan tok loh

SELECT occupation , AVG(salary) 
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary) > 50000
ORDER BY occupation; -- GROUP ayin lote pe having pe mha ORDER BY

-- Aliasing 

SELECT gender, AVG(age) as avg_age -- aliasing  or AVG(age) avg_age loh ll tan yay loh ya
FROM employee_demographics
GROUP BY gender 
HAVING avg_age > 40





;






