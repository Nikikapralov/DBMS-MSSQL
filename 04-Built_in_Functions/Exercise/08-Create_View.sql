CREATE VIEW V_EmployeesHiredAfter2000 AS
SELECT FirstName, LastName FROM Employees
WHERE DATEDIFF(YEAR, HireDate, GETDATE()) < 21