-- Partition BY
SELECT *
FROM EmployeeDemographics;

SELECT *
FROM EmployeeSalary;

SELECT FirstName,LastName,Gender,Salary,COUNT(Gender) Over (PARTITION BY Gender) as TotalGender
FROM EmployeeDemographics Dem
JOIN EmployeeSalary Sal
	On Dem.EmployeeID=Sal.EmployeeID
