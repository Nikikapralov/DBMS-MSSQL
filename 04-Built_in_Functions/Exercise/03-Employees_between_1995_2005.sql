USE SoftUni
SELECT FirstName FROM Employees
WHERE DepartmentID = 3 OR DepartmentID = 10
AND DATEDIFF(YEAR, HireDate, GETDATE()) > 16 AND DATEDIFF(YEAR, HireDate, GETDATE()) < 26