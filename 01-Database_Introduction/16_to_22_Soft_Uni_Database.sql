CREATE DATABASE SoftUni
USE SoftUni
CREATE TABLE Towns
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(30) NOT NULL
)
CREATE TABLE Addresses
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	AddressText VARCHAR(100),
	AdressId INT FOREIGN KEY REFERENCES Towns(Id)
)
CREATE TABLE Departments
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(30) NOT NULL
)
CREATE TABLE Employees
(
	Id INT PRIMARY KEY IDENTITY(1,1),
	FirstName VARCHAR(30) NOT NULL,
	MiddleName VARCHAR(30),
	LastName VARCHAR(30) NOT NULL,
	JobTitle VARCHAR(30) NOT NULL,
	DepartmentId INT FOREIGN KEY REFERENCES Departments(Id) NOT NULL,
	HireDate DATE NOT NULL,
	Salary DECIMAL(10,2) NOT NULL,
	AdressId INT FOREIGN KEY REFERENCES Addresses(Id)
)
INSERT INTO Towns VALUES
	('Sofia'),
	('Plovdiv'),
	('Varna')
INSERT INTO Departments VALUES
	('Engineering'),
	('Sales'),
	('Marketing'),
	('Software Development'),
	('Quality Assurance')


INSERT INTO Employees VALUES
	('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', 4, '2013-02-01', 3500.00, NULL),
	('Petar', 'Petrov', 'Petrov', 'Senior Engineer', 1,	'2004-03-02',	4000.00, NULL),
	('Maria', 'Petrova', 'Ivanova',	'Intern',	5,	'2016-08-28',	525.25, NULL),
	('Georgi', 'Teziev', 'Ivanov',	'CEO',	2,	'2007-12-09',	3000.00, NULL),
	('Peter', 'Pan', 'Pan',	'Intern',	3,	'2016-08-26',	599.88, NULL)

SELECT * FROM Towns
SELECT * FROM Departments
SELECT * FROM Employees

SELECT * FROM Towns ORDER BY [Name] ASC
SELECT * FROM Departments ORDER BY [Name] ASC
SELECT * FROM Employees ORDER BY Salary DESC

SELECT [Name] FROM Towns ORDER BY [Name] ASC
SELECT [Name] FROM Departments ORDER BY [Name] ASC
SELECT FirstName, LastName, JobTitle, Salary FROM Employees ORDER BY Salary DESC

UPDATE Employees
SET Salary *= 1.1
SELECT Salary FROM Employees
