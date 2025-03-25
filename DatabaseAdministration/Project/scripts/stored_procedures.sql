USE AutoTest;
GO

CREATE OR ALTER PROCEDURE InsertUserData
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM [user] WHERE Email = 'john.doe@example.com')
    BEGIN
        INSERT INTO [user] (Name, Surname, Email)
        VALUES ('John', 'Doe', 'john.doe@example.com');
    END
    
    IF NOT EXISTS (SELECT 1 FROM [user] WHERE Email = 'jane.smith@example.com')
    BEGIN
        INSERT INTO [user] (Name, Surname, Email)
        VALUES ('Jane', 'Smith', 'jane.smith@example.com');
    END
    
    PRINT 'Sample user data inserted successfully.';
END
GO