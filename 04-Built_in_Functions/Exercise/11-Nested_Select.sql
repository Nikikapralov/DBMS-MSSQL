SELECT E.EmployeeID, E.FirstName, E.LastName, E.Salary, E.[Rank] FROM (SELECT EmployeeID, FirstName, LastName, Salary, DENSE_RANK() OVER (PARTITION BY Salary ORDER BY EmployeeID) AS [Rank] FROM Employees) as E
WHERE 10000 <= Salary AND Salary <= 50000 
AND [Rank] = 2
ORDER BY Salary DESC