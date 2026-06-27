-- Partition BY

/*
Use GROUP BY (Query 3) when you only care about the big-picture macro statistics 
(e.g., "What is our total headcount per department?").

Use PARTITION BY (Query 1) when you want to compare an individual's record against their group's summary 
(e.g., "Show me Michael's salary next to the average salary of his specific department").
*/
SELECT *
FROM EmployeeDemographics;

SELECT *
FROM EmployeeSalary;

-- Patition by eg; you're a Male, and there are 6 Males total in this building. --> individual yw total ye pya tl.
SELECT FirstName,LastName,Gender,Salary,COUNT(Gender)  Over (PARTITION BY Gender) as TotalGender
FROM EmployeeDemographics Dem
JOIN EmployeeSalary Sal
	On Dem.EmployeeID=Sal.EmployeeID
;

SELECT FirstName,LastName,Gender,Salary,COUNT(Gender)
FROM EmployeeDemographics Dem
JOIN EmployeeSalary Sal
	On Dem.EmployeeID=Sal.EmployeeID
GROUP BY FirstName,LastName,Gender,Salary
;

SELECT Gender,COUNT(Gender)
FROM EmployeeDemographics Dem
JOIN EmployeeSalary Sal
	On Dem.EmployeeID=Sal.EmployeeID
GROUP BY Gender
;