USE Gringotts
SELECT DepositGroup, SUM(DepositAmount) as TotalSum FROM WizzardDeposits
GROUP BY DepositGroup, MagicWandCreator
HAVING MagicWandCreator LIKE 'Ollivander family'