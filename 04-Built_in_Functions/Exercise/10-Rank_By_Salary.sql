SELECT EmployeeID, FirstName, LastName, Salary, DENSE_RANK() OVER (PARTITION BY Salary ORDER BY EmployeeID) AS [Rank] FROM Employees
WHERE 10000 <= Salary AND Salary <= 50000
ORDER BY Salary DESC