SELECT FirstName + ' ' + LastName AS Mechanic, AVG(DATEDIFF(DAY, j.IssueDate, j.FinishDate)) AS [Average Days] FROM Mechanics
JOIN Jobs AS j ON j.MechanicId = Mechanics.MechanicId
GROUP BY FirstName, LastName, Mechanics.MechanicId
ORDER BY Mechanics.MechanicId

