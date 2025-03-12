--Creating

CREATE PROCEDURE [dbo].[SelectAllPersonAddress]
AS
SELECT * FROM  Person.Address
go;


--Call or execute the stored procedure

--exec [dbo].[SelectAllPersonAddress]



CREATE PROCEDURE SelectAllPersonAddressWithParams (@City NVARCHAR(30))
AS
--BEGIN
SET NOCOUNT ON
SELECT * FROM Person. Address where City = @city;
-- END
exec SelectAllPersonAddressWithParams @city = 'Miami'
