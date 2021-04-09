SELECT FirstName + ' ' + LastName AS Client, DATEDIFF(DAY, j.IssueDate, '04/24/2017') AS [Days going], j.Status FROM Clients
JOIN Jobs AS j ON j.ClientId = Clients.ClientId
WHERE Status != 'Finished'