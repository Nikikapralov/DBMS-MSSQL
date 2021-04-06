USE SoftUni

SELECT DepartmentID, AVG(Salary) AS Average FROM Employees
GROUP BY DepartmentID

SELECT TOP(10) E.FirstName, E.LastName, R.DepartmentID FROM (SELECT DepartmentID, AVG(Salary) AS Average FROM Employees
GROUP BY DepartmentID) AS R
JOIN Employees AS E on E.DepartmentID = R.DepartmentID
WHERE R.Average < E.Salary
ORDER BY DepartmentID