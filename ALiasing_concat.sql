-- ALiasing 

SELECT FirstName As Fname
FROM EmployeeDemographics;

SELECT *
FROM EmployeeSalary;

SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM EmployeeDemographics;

-- SELECT FirstName+ ' '+ LastName AS FullName   --> for Microsoft SQL Server

SELECT SA.JobTitle, AVG(SA.Salary) AS AverageSalary
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS SA
	ON Demo.EmployeeID = SA.EmployeeID
GROUP BY SA.JobTitle;

SELECT JobTitle,AVG(Salary) AS AverageSalary
FROM EmployeeSalary
GROUP BY JobTitle;
    


