USE AutoTest;
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='user' AND xtype='U')
BEGIN
    CREATE TABLE [user] (
        ID INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(100),
        Surname NVARCHAR(100),
        Email NVARCHAR(100) UNIQUE
    );
END;
GO
