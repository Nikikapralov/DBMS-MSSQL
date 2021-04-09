SELECT FirstName + ' ' + LastName AS Mechanic, j.Status, j.IssueDate FROM Mechanics
JOIN Jobs AS j ON j.MechanicId = Mechanics.MechanicId
ORDER BY j.MechanicId, IssueDate, JobId