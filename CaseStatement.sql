-- CASE STATEMENT
USE SQLTutorial;

SELECT FirstName,LastName,Age,
CASE
	WHEN Age > 30 THEN 'Old'
    WHEN Age BETWEEN 15 AND 30 THEN 'Young'
    ELSE 'Kid'
END
FROM EmployeeDemographics
WHERE Age is not Null
ORDER BY Age;

SELECT FirstName,LastName,JobTitle,Salary,
CASE 
	WHEN JobTitle='HR' THEN Salary + (Salary*0.10)
    WHEN JobTitle= 'Accountant' THEN Salary+(Salary *0.2)
    ELSE Salary + (Salary*0.30)
END AS SalaryAfteRaised	
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID;
    
SELECT JobTitle,AVG(Salary)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary)>45000
ORDER BY AVG(Salary);


	


