USE Gringotts
SELECT SUM(S.DepositAmount - F.DepositAmount) AS SumDifference FROM WizzardDeposits AS S
JOIN WizzardDeposits AS F ON F.Id = S.Id + 1
