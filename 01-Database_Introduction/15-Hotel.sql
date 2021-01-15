
USE master
CREATE DATABASE Hotel
USE Hotel
CREATE TABLE Employees
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	FirstName NVARCHAR(30) NOT NULL,
	LastName NVARCHAR(30) NOT NULL,
	Title NVARCHAR(200) NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE Customers
(
	AccountNumber INT PRIMARY KEY IDENTITY(1,1),
	FirstName NVARCHAR(30) NOT NULL,
	LastName NVARCHAR(30) NOT NULL,
	PhoneNumber INT NOT NULL,
	EmergencyName NVARCHAR(30),
	EmergencyNumber INT,
	Notes NVARCHAR(MAX)
)

CREATE TABLE RoomStatus
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	RoomStatus BIT NOT NULL,
	Notes NVARCHAR(MAX)
)
CREATE TABLE RoomTypes
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	RoomType NVARCHAR(100) NOT NULL,
	Notes NVARCHAR(MAX)
)
CREATE TABLE BedTypes
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	BedTypes NVARCHAR(30) NOT NULL,
	Notes NVARCHAR(MAX)
)

CREATE TABLE Rooms
(
	RoomNumber INT PRIMARY KEY IDENTITY(1,1),
	RoomType INT FOREIGN KEY REFERENCES RoomTypes(Id),
	BedType INT FOREIGN KEY REFERENCES BedTypes(Id),
	Rate INT NOT NULL,
	RoomStatus INT FOREIGN KEY REFERENCES RoomStatus(Id),
	Notes NVARCHAR(MAX)
)

CREATE TABLE Payments
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
	PaymentDate DATE NOT NULL,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
	FirstDateOccupied DATE NOT NULL,
	LastDateOccupied DATE NOT NULL,
	TotalDays INT NOT NULL,
	AmountCharged INT NOT NULL,
	TaxRate INT NOT NULL,
	TaxAmount INT NOT NULL,
	PaymentTotal INT NOT NULL,
	Notes NVARCHAR(MAX)
)
CREATE TABLE Occupancies
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
	DateOccupied DATE NOT NULL,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
	RoomNumber INT FOREIGN KEY REFERENCES Rooms(RoomNumber) NOT NULL,
	RateApplied INT NOT NULL,
	PhoneCharge INT,
	Notes NVARCHAR(MAX)
)
INSERT INTO Employees(FirstName, LastName, Title, Notes) VALUES
	('K', 'L', 'Cleaner', NULL),
	('K', 'L', 'Cleaner', NULL),
	('K', 'L', 'Cleaner', NULL)
INSERT INTO Customers(FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes) VALUES
	('M', 'N', 0891231, NULL, NULL, NULL),
	('M', 'N', 0891231, NULL, NULL, NULL),
	('M', 'N', 0891231, NULL, NULL, NULL)
INSERT INTO RoomStatus(RoomStatus, Notes) VALUES
	(1, NULL),
	(1, NULL),
	(1, NULL)
INSERT INTO RoomTypes(RoomType, Notes) VALUES
	('Big', NULL),
	('Big', NULL),
	('Big', NULL)
INSERT INTO BedTypes(BedTypes, Notes) VALUES
	('Big', NULL),
	('Big', NULL),
	('Big', NULL)
INSERT INTO Rooms(RoomType, BedType, Rate, RoomStatus, Notes) VALUES
	 (2, 2, 10, 2, NULL),
	 (2, 2, 10, 2, NULL),
	 (2, 2, 10, 2, NULL)
INSERT INTO Payments(EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes) VALUES
	(2, '1998-01-10', 2, '1998-01-10', '1998-02-10', 10, 2000, 10, 10, 2200, NULL),
	(2, '1998-01-10', 2, '1998-01-10', '1998-02-10', 10, 2000, 10, 10, 2200, NULL),
	(2, '1998-01-10', 2, '1998-01-10', '1998-02-10', 10, 2000, 10, 10, 2200, NULL)
INSERT INTO Occupancies(EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes) VALUES
	(2, '1987-11-12', 2, 2, 10, NULL, NULL),
	(2, '1987-11-12', 2, 2, 10, NULL, NULL),
	(2, '1987-11-12', 2, 2, 10, NULL, NULL)
