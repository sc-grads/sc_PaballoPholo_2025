-- Use the correct database
USE UserManagement;
GO

-- Retrieve all users
SELECT * FROM Users;
GO

-- Retrieve a user by ID
SELECT name, email FROM Users WHERE id = 1;
GO
