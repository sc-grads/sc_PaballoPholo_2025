USE AutoTest;
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'user' AND type = 'U')
BEGIN
    CREATE TABLE [user] (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Name NVARCHAR(100) NOT NULL,
        Surname NVARCHAR(100) NOT NULL,
        Email NVARCHAR(255) NOT NULL UNIQUE
    );
    PRINT 'Table user created successfully.';
END
ELSE
BEGIN
    PRINT 'Table user already exists.';
END
GO