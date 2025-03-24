IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'AutoTest')
BEGIN
    CREATE DATABASE AutoTest;
END;
GO
