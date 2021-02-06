USE Demo
ALTER TABLE Products
ALTER COLUMN PalletCapacity FLOAT
SELECT Id, [Name], Quantity, BoxCapacity, PalletCapacity, (Quantity/BoxCapacity) AS [Boxes], CEILING(CEILING((CAST(Quantity AS FLOAT)/BoxCapacity)) / PalletCapacity) AS [Number of pallets] FROM Products