USE [70-461]
GO

DECLARE @myvar as int = 2 --Initialize the variable
SET @myvar = @myvar + 1 -- Increase that value by 1

SELECT @myvar AS myVariable -- Retrieve that value
