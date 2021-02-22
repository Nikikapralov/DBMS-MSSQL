USE SoftUni

SELECT FirstName, LastName, HireDate, d.Name AS [DeptName] FROM Employees AS e
JOIN Departments AS d ON e.DepartmentID = d.DepartmentID
WHERE HireDate > 1/1/1999 AND (d.Name = 'Sales' OR d.Name = 'Finance')
ORDER BY HireDate ASC