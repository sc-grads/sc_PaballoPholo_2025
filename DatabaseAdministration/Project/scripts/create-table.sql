USE AutoTest;
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'user')
BEGIN
    CREATE TABLE [user] (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(50) NOT NULL,
        Surname NVARCHAR(50) NOT NULL,
        Email NVARCHAR(100) NOT NULL UNIQUE
    );
END
GO