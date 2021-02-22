SELECT c.CountryCode, m.MountainRange, p.PeakName, p.Elevation FROM Countries AS c
RIGHT JOIN MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
RIGHT JOIN Mountains AS m ON m.Id = mc.MountainId
RIGHT JOIN Peaks AS p ON m.Id = p.MountainId
WHERE p.Elevation > 2835 AND c.CountryCode = 'BG'
ORDER BY p.Elevation DESC
