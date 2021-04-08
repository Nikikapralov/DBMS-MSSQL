SELECT CategoryId, DENSE_RANK() OVER (ORDER BY COUNT(CategoryId)) as [Rank], COUNT(CategoryId) FROM Reports
GROUP BY CategoryId
ORDER BY [Rank] DESC

SELECT Name, ReportsNumber FROM (SELECT TOP(5) CategoryId, DENSE_RANK() OVER (ORDER BY COUNT(CategoryId)) as [Rank], COUNT(CategoryId) AS ReportsNumber, c.Name FROM Reports AS r
JOIN Categories AS c ON r.CategoryId = c.Id
GROUP BY CategoryId, Name
ORDER BY [Rank] DESC, Name ASC) AS result
