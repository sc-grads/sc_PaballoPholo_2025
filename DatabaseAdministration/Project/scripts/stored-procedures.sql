USE AutoTest;
GO

-- Create stored procedure for inserting users
CREATE OR ALTER PROCEDURE InsertUser
    @Name NVARCHAR(50),
    @Surname NVARCHAR(50),
    @Email NVARCHAR(100)
AS
BEGIN
    INSERT INTO [user] (Name, Surname, Email)
    VALUES (@Name, @Surname, @Email);
END
GO

-- Create stored procedure for getting all users
CREATE OR ALTER PROCEDURE GetAllUsers
AS
BEGIN
    SELECT * FROM [user];
END
GO