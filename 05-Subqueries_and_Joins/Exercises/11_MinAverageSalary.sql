SELECT TOP(1) AVG(e.Salary) AS [MinAverageSalary] FROM Employees AS e
GROUP BY DepartmentID
ORDER BY MinAverageSalary ASC