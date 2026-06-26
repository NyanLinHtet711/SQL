SELECT *
FROM EmployeeDemographics;

UPDATE EmployeeDemographics
SET EmployeeID= 1012
WHERE FirstName= 'Holly' AND LastName='FLax';

UPDATE EmployeeDemographics
SET Age=33 ,Gender = 'Female' -- AND tone loh ma ya . tone yin update ma pyit
WHERE FirstName = 'Holly' AND LastName='Flax';

DELETE
FROM EmployeeDemographics
WHERE EmployeeID=1013
