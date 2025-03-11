Use AdventureWorks2022
GO

-- selecting everything from the Address table

SELECT * FROM Person. Address

-- specifying what columns to select from the Adress table

SELECT addressid, city, modifieddate from [Person]. [Address]
SELECT city, addressid, modifieddate from [Person]. [Address]

-- only selecting the top 10 rows from all columns in the Address table

SELECT TOP 10 FROM [Person]. [Address]