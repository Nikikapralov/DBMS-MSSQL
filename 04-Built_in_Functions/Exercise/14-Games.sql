USE Diablo
SELECT TOP(50) [Name], FORMAT([Start], 'yyyy-MM-dd') as [Start] FROM Games
WHERE DATEPART(YEAR, [Start]) = 2011 OR DATEPART(YEAR, [Start]) = 2012
ORDER BY [Start], [Name]