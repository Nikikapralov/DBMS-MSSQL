CREATE FUNCTION udf_HoursToComplete(@StartDate DATETIME, @EndDate DATETIME)
RETURNS INT
AS
BEGIN
DECLARE @Result INT
SET @Result = DATEDIFF(HOUR, @StartDate, @EndDate)
IF @Result IS NULL
	SET @Result = 0
RETURN @Result
END
GO
SELECT dbo.udf_HoursToComplete(OpenDate, CloseDate) AS TotalHours
   FROM Reports
