-- sql/setup.sql
USE master;
GO

-- Create the database if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoTest')
BEGIN
    CREATE DATABASE AutoTest;
END
GO

-- Switch to the AutoTest database
USE AutoTest;
GO

-- Create the stored procedure
CREATE OR ALTER PROCEDURE dbo.SetupDatabase
AS
BEGIN
    -- Create the user table if it doesn't exist
    IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'user')
    BEGIN
        CREATE TABLE dbo.[user] (
            Name VARCHAR(50),
            Surname VARCHAR(50),
            Email VARCHAR(100)
        );
    END

    -- Insert sample data
    INSERT INTO dbo.[user] (Name, Surname, Email)
    VALUES 
        ('John', 'Doe', 'john.doe@example.com'),
        ('Jane', 'Smith', 'jane.smith@example.com'),
        ('Paballo', 'Pholo', 'paballo.pholo@ecample.com');
END;
GO

-- Execute the stored procedure
EXEC dbo.SetupDatabase;
GO
