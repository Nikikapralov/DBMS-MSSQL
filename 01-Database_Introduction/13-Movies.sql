CREATE DATABASE Movies
USE Movies
CREATE TABLE Directors
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	DirectorName NVARCHAR(30) NOT NULL,
	Notes NVARCHAR(MAX)
)
CREATE TABLE Genres
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	GenreName NVARCHAR(30) NOT NULL,
	Notes NVARCHAR(MAX)
)
CREATE TABLE Categories
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	CategoryName NVARCHAR(30) NOT NULL,
	Notes NVARCHAR(MAX)
)
CREATE TABLE Movies
(
	Id INT PRIMARY KEY IDENTITY(1, 1),
	Title NVARCHAR(30) NOT NULL,
	DirectorId INT FOREIGN KEY REFERENCES Directors(Id) NOT NULL,
	CopyrightYear INT NOT NULL,
	[Length] TIME NOT NULL,
	GenreId INT FOREIGN KEY REFERENCES Genres(Id) NOT NULL,
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id) NOT NULL,
	Rating INT 
	CONSTRAINT Rating_constraint CHECK (0 < Rating and Rating <= 5),
	Notes VARCHAR(MAX)
)

INSERT INTO Directors(DirectorName, Notes) VALUES
	('Patrick1', 'Notes'),
	('Patrick5', 'Notes'),
	('Patrick4', 'Notes'),
	('Patrick3', 'Notes'),
	('Patrick2', NULL)
INSERT INTO Genres(GenreName, Notes) VALUES
	('Genre1', 'Good'),
	('Genre5', 'Good'),
	('Genre4', 'Good'),
	('Genre3', 'Good'),
	('Genre2', NULL)
INSERT INTO Categories(CategoryName, Notes) VALUES
	('Category1', 'Bad'),
	('Category4', 'Bad'),
	('Category5', 'Bad'),
	('Category3', 'Bad'),
	('Category2', NULL)
INSERT INTO Movies(Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId, Rating, Notes) VALUES
	('Title1', 1, 1998, '02:30:00', 1, 4, 3, NULL),
	('Title9', 5, 1998, '02:30:00', 1, 1, 3, NULL),
	('Title8', 3, 1998, '02:30:00', 3, 1, 3, NULL),
	('Title6', 2, 1998, '02:30:00', 2, 5, 3, NULL),
	('Title3', 1, 1998, '02:30:00', 1, 1, 3, NULL)
