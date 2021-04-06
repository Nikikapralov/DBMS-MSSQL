USE Gringotts
SELECT SUBSTRING(FirstName, 1, 1) AS FirstLetter FROM WizzardDeposits
WHERE DepositGroup LIKE 'Troll Chest'

SELECT Result.FirstLetter FROM (SELECT SUBSTRING(FirstName, 1, 1) AS FirstLetter FROM WizzardDeposits
WHERE DepositGroup LIKE 'Troll Chest') AS Result
GROUP BY Result.FirstLetter