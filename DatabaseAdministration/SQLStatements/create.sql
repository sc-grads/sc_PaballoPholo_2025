-- Use the correct database
USE UserManagement;
GO

-- Update user email
UPDATE Users
SET email = 'john.doe@newmail.com'
WHERE id = 1;
GO
