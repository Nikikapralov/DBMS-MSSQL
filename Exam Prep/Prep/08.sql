SELECT FirstName + ' ' + LastName AS [Available] FROM Mechanics
JOIN Jobs AS j ON j.MechanicId = Mechanics.MechanicId
WHERE j.Status is NULL OR (SELECT COUNT(JobId) FROM Jobs WHERE Status <> 'Finished' AND MechanicId = j.MechanicId GROUP BY MechanicId, Status) IS NULL
GROUP BY FirstName, LastName, Mechanics.MechanicId
ORDER BY Mechanics.MechanicId