SELECT TOP(50) e.FirstName, e.LastName, t.Name, a.AddressText FROM Employees AS e
JOIN Addresses AS a ON e.AddressID = a.AddressID
JOIN Towns AS t on a.TownID = t.TownID
ORDER BY e.FirstName ASC, e.LastName