-- sql/setup_autodb.sql second attempt
USE master;
GO

-- Create the database if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'AutoTest_PJ_03April')
BEGIN
    CREATE DATABASE AutoTest_PJ_03April;
END
GO

-- Switch to the AutoDBFirstName database
AutoTest_PJ_03April;
GO

-- Create the stored procedure
CREATE OR ALTER PROCEDURE dbo.SetupDatabase
AS
BEGIN
    -- Create the user table if it doesn’t exist
    IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'user')
    BEGIN
        CREATE TABLE dbo.[user] (
            Name VARCHAR(50),
            Surname VARCHAR(50),
            Email VARCHAR(100)
        );
    END

    -- Insert initial data
    INSERT INTO dbo.[user] (Name, Surname, Email)
    VALUES 
        ('Alice', 'Johnson', 'alice.johnson@example.com'),
        ('Bob', 'Williams', 'bob.williams@example.com');
END;
GO

-- Execute the stored procedure
EXEC dbo.SetupDatabase;
GO
