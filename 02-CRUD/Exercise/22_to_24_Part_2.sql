USE Geography

SELECT PeakName FROM Peaks
ORDER BY PeakName ASC

SELECT TOP(30) CountryName, [Population] FROM Countries
WHERE ContinentCode = 'EU'
ORDER BY [Population] DESC, CountryName ASC

SELECT CountryName, CountryCode,
CASE CurrencyCode
	WHEN 'EUR' THEN 'Euro'
	ELSE 'Not Euro'
END
AS Currency FROM Countries
ORDER BY CountryName
