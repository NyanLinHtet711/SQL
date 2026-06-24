SELECT *
FROM EmployeeDemographics
Inner Join WareHouseEmployeeDemographics
	On EmployeeDemographics.EmployeeID=WareHouseEmployeeDemographics.EmployeeID

;

SELECT * 
FROM EmployeeDemographics
UNION -- union pl so Bone thu tr ko htr kae
SELECT *
FROM WareHouseEmployeeDemographics;

SELECT * 
FROM EmployeeDemographics
UNION All -- Union All so yin thu tr 2 khu shi ll akone pya 
SELECT *
FROM WareHouseEmployeeDemographics;

SELECT EmployeeID,FirstName,Age 
FROM EmployeeDemographics
UNION All 
SELECT EmployeeID,Salary -- SELECT mhr data type ma thu loh error
FROM EmployeeSalary;

