USE SoftUni
SELECT e.DepartmentID, SUM(e.Salary) FROM Employees as e
GROUP BY e.DepartmentID
ORDER BY e.DepartmentID ASC
