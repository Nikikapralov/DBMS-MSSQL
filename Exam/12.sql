CREATE PROC usp_AssignEmployeeToReport(@EmployeeId INT, @ReportId INT)
AS 
IF NOT EXISTS(SELECT * FROM Employees AS e
JOIN Departments AS d ON e.DepartmentId = d.Id
JOIN Categories AS c ON d.Id = c.DepartmentId
WHERE @EmployeeId = c.Id)
	THROW 50000, 'Employee doesn''t belong to the appropriate department!', 1

UPDATE Reports
SET EmployeeId = @EmployeeId
WHERE @ReportId = Id


EXEC usp_AssignEmployeeToReport 30, 1
EXEC usp_AssignEmployeeToReport 17, 2