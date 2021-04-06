USE SoftUni
SELECT DepartmentID, DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS Ranking, Salary FROM Employees

SELECT DISTINCT R.DepartmentID, R.Salary AS ThidHighestSalary FROM (SELECT DepartmentID, DENSE_RANK() OVER (PARTITION BY DepartmentID ORDER BY Salary DESC) AS Ranking, Salary FROM Employees) AS R
WHERE Ranking = 3