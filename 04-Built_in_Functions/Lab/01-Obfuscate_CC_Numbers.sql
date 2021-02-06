USE Demo
SELECT CustomerID, FirstName, LastName, CONCAT(LEFT(PaymentNumber, 6), '**********') FROM Customers