
CREATE DATABASE CarRental
USE CarRental
CREATE TABLE Categories
(
	Id INT PRIMARY KEY IDENTITY (1, 1),
	CategoryName NVARCHAR(30) NOT NULL,
	DailyRate INT,
	WeeklyRate INT,
	MonthlyRate INT,
	WeekendRate INT
)

CREATE TABLE Cars
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	PlateNumber INT NOT NULL,
	Manufaturer NVARCHAR(30) NOT NULL,
	Model NVARCHAR(30) NOT NULL,
	CarYear INT NOT NULL,
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id),
	Doors INT NOT NULL,
	Picture NVARCHAR(200),
	Condition NVARCHAR(30),
	Available BIT NOT NULL
)

CREATE TABLE Employees
(
	Id INT PRIMARY KEY IDENTITY (1,1),
	FirstName NVARCHAR(30) NOT NULL,
	LastName NVARCHAR(30) NOT NULL,
	Title NVARCHAR(50) NOT NULL,
	Notes NVARCHAR(MAX) NOT NULL
)

CREATE TABLE Customers
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	DriverLicenseNumber INT NOT NULL,
	FullName NVARCHAR(30) NOT NULL,
	Address NVARCHAR(200) NOT NULL,
	City NVARCHAR(50) NOT NULL,
	ZIPCode NVARCHAR(20) NOT NULL,
	Notes NVARCHAR(MAX)
)
/*

•	RentalOrders (Id, EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes)*/
CREATE TABLE RentalOrders
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
	CustomerId INT FOREIGN KEY REFERENCES Customers(Id) NOT NULL,
	CarId INT FOREIGN KEY REFERENCES Cars(Id) NOT NULL,
	TankLevel INT NOT NULL
	CONSTRAINT Tank_level CHECK (0 < TankLevel and TankLevel <= 100),
	KilometrageStart INT NOT NULL,
	KilometrageEnd INT NOT NULL,
	TotalKilometrage INT NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	TotalDays INT NOT NULL,
	RateApplied INT,
	TaxRate INT,
	OrderStatus BIT NOT NULL,
	Notes NVARCHAR(MAX)
)

INSERT INTO Categories(CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate) VALUES
	('Name', 1, 2, 3, 4),
	('Name2', 1, 2, 3, 4),
	('Name1', 1, 2, 3, 4)
INSERT INTO Cars(PlateNumber, Manufaturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available) VALUES
	(1234, 'Toyota', 'Model', 1998, 1, 4, NULL, 'Good', 1),
	(1234, 'Toyota', 'Model', 1998, 1, 4, NULL, 'Good', 1),
	(1234, 'Toyota', 'Model', 1998, 1, 4, NULL, 'Good', 1)
INSERT INTO Employees(FirstName, LastName, Title, Notes) VALUES
	('Mitko', 'Ivanov', 'CEO', '123123123'),
	('Mitko', 'Ivanov', 'CEO', 'asdsadas'),
	('Mitko', 'Ivanov', 'CEO', 'asdasdasd')
INSERT INTO Customers(DriverLicenseNumber, FullName, [Address], City, ZIPCode, Notes) VALUES
	(0182316, 'Mitko', 'Kalotina', 'Varna', '50120AB', NULL),
	(0182316, 'Mitko', 'Kalotina', 'Varna', '50120AB', NULL),
	(0182316, 'Mitko', 'Kalotina', 'Varna', '50120AB', NULL)
INSERT INTO RentalOrders(EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus, Notes) VALUES
	(2, 1, 1, 50, 1000, 1500, 1500, '1998-03-21', '1998-03-29', 8, 10, 2, 1, NULL),
	(2, 1, 1, 50, 1000, 1500, 1500, '1998-03-21', '1998-03-29', 8, 10, 2, 1, NULL),
	(2, 1, 1, 50, 1000, 1500, 1500, '1998-03-21', '1998-03-29', 8, 10, 2, 1, NULL)
