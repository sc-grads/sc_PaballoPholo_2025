USE AutoTest;
GO

-- Insert sample data using stored procedure
EXEC InsertUser 'John', 'Doe', 'john.doe@example.com';
EXEC InsertUser 'Jane', 'Smith', 'jane.smith@example.com';
EXEC InsertUser 'Bob', 'Johnson', 'bob.johnson@example.com';
GO