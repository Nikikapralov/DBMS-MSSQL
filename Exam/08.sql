SELECT Username, c.Name AS [Category Name] FROM Users AS u
JOIN Reports AS r ON u.Id = r.UserId
JOIN Categories AS c ON c.Id = r.CategoryId
WHERE DATEPART(MONTH, r.OpenDate) = DATEPART(MONTH, u.Birthdate) AND DATEPART(DAY, r.OpenDate) = DATEPART(DAY, u.Birthdate)
ORDER BY Username ASC, c.Name ASC

SELECT OpenDate From Reports