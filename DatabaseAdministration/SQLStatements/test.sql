
-- Create a test database
CREATE DATABASE TestDB;
GO

-- Switch to the test database
USE TestDB;
GO

-- Create a simple table
CREATE TABLE TestTable (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


-- Insert some test data
INSERT INTO TestTable (name) VALUES ('Alice'), ('Bob');
GO

-- Retrieve the test data
SELECT * FROM TestTable;
GO
