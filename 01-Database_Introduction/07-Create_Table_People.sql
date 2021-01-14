CREATE DATABASE Human
USE Human
CREATE TABLE People
(
	Id INT PRIMARY KEY,
	[Name] NVARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX),
	Height DECIMAL(5,2),
	[Weight] DECIMAL(5,2),
	Gender BIT NOT NULL,
	Birthdate DATETIME NOT NULL,
	Biography NVARCHAR(MAX)
)
INSERT INTO People(Id, [Name], Picture, Height, [Weight], Gender, Birthdate, Biography) VALUES
	(1, 'Tony', NULL ,1.81, 65.43, 0, '1957-05-10', NULL),
	(2, 'Mark', NULL ,1.81, 65.43, 0, '1957-05-10', NULL),
	(3, 'Tanya', 5 ,1.81, 65.43, 1, '1957-05-10', NULL),
	(4, 'Марк', NULL ,1.81, 65.43, 0, '1957-05-10','Dura bura'),
	(5, 'Toncho', 2 ,1.81, 65.43, 0, '1957-05-10','Сто чадъра')