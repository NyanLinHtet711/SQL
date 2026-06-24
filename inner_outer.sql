USE SQLTutorial;

SELECT *
FROM EmployeeDemographics;

SELECT *
FROM EmployeeSalary;


SELECT *
FROM EmployeeDemographics
Inner Join EmployeeSalary
	On EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
;

SELECT *
FROM EmployeeDemographics
Left Outer Join EmployeeSalary -- LEFT Table ko aty htr pe left mhr lo yin htat phyae
	On EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID;

SELECT EmployeeDemographics.EmployeeID,FirstName,LastName,JobTitle,Salary
FROM EmployeeDemographics
Inner Join EmployeeSalary
	On EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID; 
    
SELECT EmployeeDemographics.EmployeeID,FirstName,LastName,Salary
FROM EmployeeDemographics
Inner Join EmployeeSalary
	On EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
WHERE FirstName<> "Michael"
ORDER BY Salary DESC;
	
