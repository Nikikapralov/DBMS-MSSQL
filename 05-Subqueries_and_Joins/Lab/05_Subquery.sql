USE SoftUni
SELECT MIN(a.AverageSalary) FROM (SELECT 
            AVG(Salary) AS AverageSalary
       FROM Employees
   GROUP BY DepartmentID) AS a