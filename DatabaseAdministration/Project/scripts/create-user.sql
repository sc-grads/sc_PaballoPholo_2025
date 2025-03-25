USE master;
GO
-- Create login if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = 'Auto_user')
BEGIN
    CREATE LOGIN Auto_user WITH PASSWORD = '#PJ27020202jsn';
END
GO

-- Grant server-wide permissions
GRANT CONTROL SERVER TO Auto_user;
GO
