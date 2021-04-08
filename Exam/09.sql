SELECT DISTINCT FirstName + ' ' + LastName AS FullName, COUNT(UserId) AS UsersCount FROM Employees AS e
LEFT JOIN Reports AS r ON e.Id = r.EmployeeId
GROUP BY e.FirstName, e.LastName
ORDER BY UsersCount DESC, FullName