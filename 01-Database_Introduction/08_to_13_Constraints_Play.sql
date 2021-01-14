CREATE DATABASE User_Data
USE User_Data
CREATE TABLE Users
(
	Id BIGINT PRIMARY KEY IDENTITY(1,1),
	Username VARCHAR(30) NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARCHAR(100),
	LastLoginTime TIME,
	IsDeleted BIT
)
INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted) VALUES
	('Pesho1', '0123452', 'nekuv valid path2', '16:23:23', 0),
	('Pesho5', '0123451', 'nekuv valid pa2th', '16:23:21', 0),
	('Pesho4', '0123445', 'nekuv valid pat2h', '16:23:12', 0),
	('Pesho3', '01235145', 'nekuv valid pa1th', '09:23:59', 0),
	('Pesho2', '0123435', 'nekuv valid pat3h', '10:23:59', 0)
ALTER TABLE USERS DROP [PK__Users__3214EC07449C8BCA]
ALTER TABLE USERS
ADD CONSTRAINT PK_Name_Id PRIMARY KEY(Id, [Username])
ALTER TABLE USERS
ADD CONSTRAINT Check_length CHECK (Len([Password]) > 5)
ALTER TABLE USERS
ADD CONSTRAINT Get_curr_time DEFAULT GETDATE() FOR LastLoginTime
INSERT INTO Users(Username, [Password], ProfilePicture, IsDeleted) VALUES
	('Pesho', 'jwauuawufu', 'valid path', 0)
ALTER TABLE USERS DROP [PK_Name_Id]
ALTER TABLE USERS
ADD CONSTRAINT PK_Id PRIMARY KEY (Id)
ALTER TABLE USERS
ADD CONSTRAINT Check_usernames_len CHECK (Len(Username) > 3)