USE SoftUni
SELECT [Name] FROM Towns
WHERE LEN([Name]) = 5 or LEN([Name]) = 6
ORDER BY [Name]