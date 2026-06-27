-- CTEs

SELECT Gender,AVG(Salary),MAX(Salary),MIN(Salary),COUNT(Salary) -- FOR Office_db 
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	On Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender
;

SELECT gender,AVG(salary),MAX(salary),MIN(salary),COUNT(salary) -- FOR Parks and REC create DB
FROM employee_demographics Demo
JOIN employee_salary Sal
	On Demo.employee_id = Sal.employee_id
GROUP BY gender
;

WITH CTE_Example AS -- Average ko AVG pyn shr tr for both male and fmale in this example
(
SELECT gender,AVG(salary) avg_sal,MAX(salary) max_sal,MIN(salary)min_sal,COUNT(salary) count_sal -- FOR Parks and REC create DB
FROM employee_demographics Demo
JOIN employee_salary Sal
	On Demo.employee_id = Sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_sal),AVG(max_sal)
FROM CTE_Example;

-- same example --> dr ka select mhr * tone pe apaw mhr column name twy yay tr 
WITH CTE_Example(Gender,AVG_sal,Max_sal,Min_sal,Count_sal) AS 
(
SELECT gender,AVG(salary) avg_sal,MAX(salary) max_sal,MIN(salary)min_sal,COUNT(salary) count_sal -- FOR Parks and REC create DB
FROM employee_demographics Demo
JOIN employee_salary Sal
	On Demo.employee_id = Sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example;


/*
The following is the same with above example. But Above one is clear version in professional area.
*/
SELECT AVG(avg_sal)
FROM
(
SELECT gender,AVG(salary) avg_sal,MAX(salary) max_sal,MIN(salary)min_sal,COUNT(salary) count_sal -- FOR Parks and REC create DB
FROM employee_demographics Demo
JOIN employee_salary Sal
	On Demo.employee_id = Sal.employee_id
GROUP BY gender
)subQuary_exp;