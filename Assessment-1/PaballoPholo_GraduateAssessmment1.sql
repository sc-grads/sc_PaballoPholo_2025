-- Paballo Pholo
-- Graduate Assessment 1 - 03/12/2025

USE [AdventureWorks2022];

--  1. Write a query in SQL to retrieve all rows and columns from the employee table in the Adventureworks database. Sort the result set in ascending order on jobtitle

SELECT * 
FROM [HumanResources].[Employee]
ORDER BY [JobTitle] ASC;

-- 2. Write a query in SQL to retrieve all rows and columns from the employee table using table aliasing in the Adventureworks database. Sort the output in ascending order on lastname.

SELECT *
FROM [Person].[Person] AS PersonDetails
ORDER BY LastName ASC;

-- 3. Write a query in SQL to return all rows and a subset of the columns (FirstName, LastName, businessentityid) from the person table in the AdventureWorks database. The third column heading is renamed to Employee_id. Arranged the output in ascending order by lastname.

SELECT FirstName, LastName, Businessentityid AS Employee_id
FROM [Person].[Person]
ORDER BY LastName ASC;

-- 4. Write a query in SQL to return only the rows for product that have a sellstartdate that is not NULL and a productline of 'T'. Return productid, productnumber, and name. Arranged the output in ascending order on name.

SELECT ProductID, ProductNumber, Name
FROM [Production].[Product]
WHERE [SellStartDate] IS NOT NULL AND [ProductLine] = 'T'
ORDER BY Name ASC;

--  5. Write a query in SQL to return all rows from the salesorderheader table in Adventureworks database and calculate the percentage of tax on the subtotal have decided. Return salesorderid, customerid, orderdate, subtotal, percentage of tax column. Arranged the result set in ascending order on subtotal.

SELECT SalesOrderID, CustomerID, OrderDate, SubTotal, ((TaxAmt/SubTotal)*100.0) AS Tax_percent
FROM [Sales].[SalesOrderHeader]
ORDER BY SubTotal DESC;

-- 6. Write a query in SQL to create a list of unique jobtitles in the employee table in Adventureworks database. Return jobtitle column and arranged the resultset in ascending order.

SELECT DISTINCT [JobTitle]
FROM [HumanResources].[Employee]
ORDER BY [JobTitle] ASC;

--  7. Write a query in SQL to calculate the total freight paid by each customer. Return customerid and total freight. Sort the output in ascending order on customerid.

SELECT [CustomerID], SUM([Freight]) AS Total_freight
FROM [Sales].[SalesOrderHeader]
GROUP BY [CustomerID]
ORDER BY [CustomerID] ASC;

--  8. Write a query in SQL to find the average and the sum of the subtotal for every customer. Return customerid, average and sum of the subtotal. Grouped the result on customerid and salespersonid. Sort the result on customerid column in descending order

SELECT CustomerID, SalesPersonID, AVG(SubTotal) AS avg_subtotal, SUM(SubTotal) AS sum_subtotal
FROM [Sales].[SalesOrderHeader]
GROUP BY [CustomerID], [SalesPersonID]
ORDER BY CustomerID DESC;

-- 9. Write a query in SQL to retrieve total quantity of each productid which are in shelf of 'A' or 'C' or 'H'. Filter the results for sum quantity is more than 500. Return productid and sum of the quantity. Sort the results according to the productid in ascending order

SELECT [ProductID],SUM([Quantity]) AS total_quantity
FROM [Production].[ProductInventory]
WHERE [Shelf] LIKE '[ACH]'
GROUP BY [ProductID]
HAVING SUM([Quantity]) > 500
ORDER BY ProductID ASC;

--  10. Write a query in SQL to find the total quentity for a group of locationid multiplied by 10
-- Check out, the results are similar to the sample output if we don't *10

SELECT SUM([Quantity]) * 10  AS total_quantity
FROM [Production].[ProductInventory]
GROUP BY [LocationID];

--  11. Write a query in SQL to find the persons whose last name starts with letter 'L'. Return BusinessEntityID, FirstName, LastName, and PhoneNumber. Sort the result on lastname and firstname.

SELECT person.[BusinessEntityID],[FirstName],[LastName],phone.[PhoneNumber] AS Person_Phone
FROM [Person].[Person] as person
JOIN [Person].[PersonPhone] AS phone
ON person.BusinessEntityID = phone.BusinessEntityID
WHERE [LastName] LIKE 'L%'
ORDER BY [LastName], [FirstName] ASC;

-- 12. Write a query in SQL to find the sum of subtotal column. Group the sum on distinct salespersonid and customerid. Rolls up the results into subtotal and running total. Return salespersonid, customerid and sum of subtotal column i.e. sum_subtotal.

SELECT DISTINCT SalesPersonID, [CustomerID], SUM(SubTotal) AS sum_subtotal
FROM [Sales].[SalesOrderHeader]
WHERE [SalesPersonID] IS NOT NULL
GROUP BY [SalesPersonID], [CustomerID]
ORDER BY [SalesPersonID], [CustomerID] ASC;

-- 13. Write a query in SQL to find the sum of the quantity of all combination of group of distinct locationid and shelf column. Return locationid, shelf and sum of quantity as TotalQuantity.

SELECT DISTINCT [LocationID], [Shelf], SUM([Quantity]) AS TotalQuantity
FROM [Production].[ProductInventory]
GROUP BY [LocationID], [Shelf];

-- 14. Write a query in SQL to find the sum of the quantity with subtotal for each locationid. Group the results for all combination of distinct locationid and shelf column. Rolls up the results into subtotal and running total. Return locationid, shelf and sum of quantity as TotalQuantity.

SELECT DISTINCT [LocationID], [Shelf], SUM([Quantity]) AS TotalQuantity
FROM [Production].[ProductInventory]
GROUP BY ROLLUP([LocationID], [Shelf]);

-- 15. Write a query in SQL to find the total quantity for each locationid and calculate the grand total for all locations. Return locationid and total quantity. Group the results on locationid.

SELECT  [LocationID], SUM([Quantity]) AS TotalQuantity
FROM [Production].[ProductInventory]
GROUP BY ROLLUP([LocationID])
ORDER BY [LocationID] ASC;

-- 16. Write a query in SQL to retrieve the number of employees for each City. Return city and number of employees. Sort the result in ascending order on city


SELECT a.[City], COUNT(b.[BusinessEntityID]) AS NoOfEmployees 
FROM [Person].[BusinessEntityAddress] AS b   
JOIN [Person].[Address] AS a  
ON b.[AddressID] = a.[AddressID]  
GROUP BY a.[City]  
ORDER BY a.[City] ASC;

-- 17. Write a query in SQL to retrieve the total sales for each year. Return the year part of order date and total due amount. Sort the result in ascending order on year part of order date.

SELECT YEAR([OrderDate]) AS Year, SUM([TotalDue]) AS OrderAmount
FROM [Sales].[SalesOrderHeader]
GROUP BY YEAR([OrderDate])
ORDER BY YEAR([OrderDate]) ASC;

-- 18. Write a query in SQL to retrieve the total sales for each year. Filter the result set for those orders where order year is on or before 2016. Return the year part of orderdate and total due amount. Sort the result in ascending order on year part of order date.

SELECT YEAR([OrderDate]) AS Year, SUM([TotalDue]) AS OrderAmount
FROM [Sales].[SalesOrderHeader]
WHERE YEAR([OrderDate]) <= '2026'
GROUP BY YEAR([OrderDate])
ORDER BY YEAR([OrderDate]) ASC;

-- 19. Write a query in SQL to find the contacts who are designated as a manager in various departments. Returns ContactTypeID, name. Sort the result set in descending order.

SELECT [ContactTypeID],[Name]
FROM [Person].[ContactType]
WHERE [Name] LIKE '%Manager'
ORDER BY [ContactTypeID] DESC;

-- 20. From the following tables write a query in SQL to make a list of contacts who are designated as 'Purchasing Manager'. Return BusinessEntityID, LastName, and FirstName columns. Sort the result set in ascending order of LastName, and FirstName.

SELECT [BusinessEntityID],[LastName],[FirstName]
FROM [Person].[Person] AS p
JOIN [Person].[ContactType] AS c
ON p.[BusinessEntityID] = c.[ContactTypeID]
WHERE c.[Name] = 'Purchasing Manager';
--WRONG 

-- 21. Write a query in SQL to retrieve the salesperson for each PostalCode who belongs to a territory and SalesYTD is not zero. Return row numbers of each group of PostalCode, last name, salesytd, postalcode column. Sort the salesytd of each postalcode group in descending order. Shorts the postalcode in ascending order.

SELECT 
    ROW_NUMBER() OVER(PARTITION BY a.[PostalCode] ORDER BY s.[SalesYTD] DESC) AS RowNumber,
    p.[LastName],
    s.[SalesYTD],
    a.[PostalCode]
FROM [Sales].[SalesPerson] AS s
JOIN[Person].[Person] AS p
ON s.[BusinessEntityID] = p.[BusinessEntityID]
JOIN [Person].[BusinessEntityAddress] AS b 
ON b.[AddressID] = p.[BusinessEntityID]
JOIN [Person].[Address] AS a
ON a.[AddressID] = b.[AddressID]
ORDER BY s.[SalesYTD] DESC, a.[PostalCode] ASC;

-- 22. Write a query in SQL to count the number of contacts for combination of each type and name. Filter the output for those who have 100 or more contacts. Return ContactTypeID and ContactTypeName and BusinessEntityContact. Sort the result set in descending order on number of contacts.

SELECT b.[ContactTypeID], c.[Name], COUNT(*) AS NoOfContacts
FROM [Person].[BusinessEntityContact] AS b
JOIN [Person].[ContactType] AS c
ON b.[ContactTypeID] = c.[ContactTypeID]
GROUP BY b.[ContactTypeID], c.[Name]
HAVING COUNT(*) >= 100
ORDER BY NoOfContacts DESC;

-- 23. Write a query in SQL to retrieve the RateChangeDate, full name (first name, middle name and last name) and weekly salary 40 hours in a week) of employees. In the output the RateChangeDate should appears in date format. Sort the output in ascending order on NameInFull.

SELECT CONVERT(DATE,[RateChangeDate]) AS FromDate, CONCAT(LastName,', ',FirstName, ' ', COALESCE(MiddleName,' ')) AS NameInFull, [Rate] * 40 AS SalaryInAWeek
FROM [Person].[Person] AS p
JOIN [HumanResources].[EmployeePayHistory] AS e
ON p.BusinessEntityID = e.BusinessEntityID
ORDER BY NameInFull ASC;

-- 24. Write a query in SQL to calculate and display the latest weekly salary of each employee. Return RateChangeDate, full name (first name, middle name and last name) and weekly salary 40 hours in a week) of employees Sort the output in ascending order on NameInFull.


SELECT CONVERT(DATE,[RateChangeDate]) AS FromDate, CONCAT(LastName,', ',FirstName, ' ', COALESCE(MiddleName,' ')) AS NameInFull, [Rate] * 40 AS SalaryInAWeek
FROM [Person].[Person] AS p
JOIN [HumanResources].[EmployeePayHistory] AS e
ON p.BusinessEntityID = e.BusinessEntityID
WHERE e.RateChangeDate = (
        SELECT MAX(RateChangeDate)
        FROM [HumanResources].[EmployeePayHistory]
        WHERE BusinessEntityID = e.BusinessEntityID
    )
ORDER BY NameInFull ASC;

-- 25. Write a query in SQL to find the sum, average, count, minimum, and maximum order quentity for those orders whose id are 43659 and 43664. Return SalesOrderID, ProductID, OrderQty, sum, average, count, max, and min order quantity.

SELECT 
	[SalesOrderID], [ProductID], [OrderQty],
    SUM([OrderQty]) OVER (PARTITION BY [SalesOrderID]) AS TotalQuantity,
    AVG(Convert(decimal(18,7),[OrderQty])) OVER (PARTITION BY [SalesOrderID]) AS AvgQuantity,
    COUNT([OrderQty]) OVER (PARTITION BY [SalesOrderID]) AS NoOfOrders,
    MIN([OrderQty]) OVER (PARTITION BY [SalesOrderID]) AS MinQuantity,
    MAX([OrderQty]) OVER (PARTITION BY [SalesOrderID]) AS MaxQuantity
FROM [Sales].[SalesOrderDetail]
WHERE [SalesOrderID] IN (43659, 43664);
