-- Store Procedures

SELECT *
FROM employee_salary
WHERE salary >= 50000;


CREATE PROCEDURE large_salary()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salary();


DELIMITER $$
CREATE PROCEDURE large_salary3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$

DELIMITER ;

CALL large_salary3();

