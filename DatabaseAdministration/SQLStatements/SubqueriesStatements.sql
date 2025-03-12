/****** Script for SelectTopNRows command from SSMS  ******/




SELECT TOP (1000) [BusinessEntityID]
      ,[RateChangeDate]
      ,[Rate]
      ,[PayFrequency]
      ,[ModifiedDate]
  FROM [AdventureWorks2022].[HumanResources].[EmployeePayHistory]

 ------------------------------------------------------------------------------

USE AdventureWorks2022
GO


  select * from [Production].[Product]

-------------------------------------------------------------------------------------

  select * from [Production].[ProductInventory]

-- ALL TABLES GET CREATED IN DBO SCHEMA UNLESS WE CREATE A NEW SCHEMA


SELECT * FROM dbo.EMPLOYEE

-----------------------------------

-- Retrieve all employee pay history records where the employee has ever earned more than 60
SELECT * 
FROM [HumanResources].[EmployeePayHistory] 
WHERE [BusinessEntityID] IN 
    (SELECT BusinessEntityID FROM [HumanResources].[EmployeePayHistory] WHERE Rate > 60)

-- Retrieve all employee pay history records for employees who have had a rate of exactly 39.06
SELECT * 
FROM [HumanResources].[EmployeePayHistory] 
WHERE [BusinessEntityID] IN 
    (SELECT BusinessEntityID FROM [HumanResources].[EmployeePayHistory] WHERE Rate = 39.06)

-- Retrieve details of products that have more than 300 items in inventory
SELECT * 
FROM [Production].[Product] 
WHERE ProductID IN 
    (SELECT ProductID FROM [Production].[ProductInventory] WHERE Quantity > 300)
