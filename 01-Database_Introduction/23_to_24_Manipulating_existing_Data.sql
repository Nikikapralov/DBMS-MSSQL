ALTER TABLE Payments
ALTER COLUMN TaxRate DECIMAL (10,2) 
UPDATE Payments
SET TaxRate *= 0.97
SELECT TaxRate FROM Payments
DELETE FROM Occupancies
SELECT * FROM Occupancies
