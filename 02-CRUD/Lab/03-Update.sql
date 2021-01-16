SELECT * FROM Projects
WHERE EndDate is NULL
UPDATE Projects
SET EndDate = GETDATE()
WHERE EndDate is NULL
SELECT * FROM Projects WHERE EndDate is NULL