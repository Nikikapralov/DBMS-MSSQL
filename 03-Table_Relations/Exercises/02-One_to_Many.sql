CREATE TABLE Manufacturers
(
	ManufacturerID INT PRIMARY KEY IDENTITY,
	[Name] VARCHAR(30) NOT NULL,
	[EstablishedOn] DATE NOT NULL
)


CREATE TABLE Models
(
	ModelID INT PRIMARY KEY IDENTITY(101, 1),
	[Name] VARCHAR(30) NOT NULL,
	ManufacturerID INT FOREIGN KEY REFERENCES Manufacturers(ManufacturerID)

)

INSERT INTO Manufacturers VALUES
	('BMW', '1916/07/03'),
	('Tesla', '2003/01/01'),
	('Lada', '1966/05/01')

INSERT INTO Models VALUES
	('X1',	1),
	('i6',	1),
	('Model S',	2),
	('Model X',	2),
	('Model 3', 2),
	('Nova', 3)
