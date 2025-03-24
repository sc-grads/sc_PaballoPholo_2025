USE AutoTest;
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='InsertUser' AND xtype='P')
BEGIN
    EXEC ('CREATE PROCEDURE InsertUser
        @Name NVARCHAR(100),
        @Surname NVARCHAR(100),
        @Email NVARCHAR(100)
    AS
    BEGIN
        INSERT INTO [user] (Name, Surname, Email) 
        VALUES (@Name, @Surname, @Email);
    END;');
END;
GO
