Use AdventureWorks2022
GO

-- Demonstrating the usage of 'WHERE'
--
SELECT * FROM Person. Address WHERE PostalCode = '98011'

-- where postal code is not equals to '98011'

SELECT * FROM Person. Address WHERE PostalCode != '98011'

SELECT * FROM Person. Address WHERE PostalCode <> '98011'

-- Getting the number of people with postal code not '98011'

SELECT count(*) FROM Person. Address WHERE PostalCode <> '98011'

-- Selecting rows where modified date is on or after '2013-11-08 00:00:00.000'

SELECT * FROM Person. Address WHERE ModifiedDate >= '2013-11-08 00:00:00.000'

-- Finding all people whose names start with MAT, '%' means we don't care what letters comes after as long as they start with MAT

SELECT * FROM [Person].[Person] WHERE FirstName LIKE 'MAT%'

select * from Person.Person where FirstName like '%ew'

select * from Person.Person where FirstName like '%EW'

select * from [HumanResources].[EmployeePayHistory]

select max(rate) from [HumanResources].[EmployeePayHistory] -- using functions to select the maximum rate

select max(rate) AS MaxPayrate from [HumanResources].[EmployeePayHistory] -- Using Alias to rename our column

select min(rate) AS [Min Pay rate] from [HumanResources].[EmployeePayHistory]


select * from [Production].[ProductCostHistory] where startdate = '2013-05-30 00:00:00'


select * from [Production].[ProductCostHistory] where startdate = '2013-05-30 00:00:00' and StandardCost >= 200

select * from [Production].[ProductCostHistory] where( startdate = '2013-05-30 00:00:00' and StandardCost >= 200) or ProductID >800

select * from [Production].[ProductCostHistory] where( startdate = '2013-05-30 00:00:00' and StandardCost >= 200) and ProductID >800

select * from [Production].[ProductCostHistory] where ProductID in (802,803,820,900)

select * from [Production].[ProductCostHistory] where EndDate is null

select * from [Production].[ProductCostHistory] where EndDate is not null


--DEMONSTRATING THE USAGE OF ORDER BY

select * from [HumanResources].[EmployeePayHistory] order by rate 

select * from [HumanResources].[EmployeePayHistory] order by rate asc

select * from [HumanResources].[EmployeePayHistory] order by rate desc


select * from [HumanResources].[EmployeePayHistory] where  ModifiedDate >= '2010-06-30 00:00:00' order by ModifiedDate desc

select * from [HumanResources].[EmployeePayHistory] where  year(ModifiedDate) >= '2014' order by ModifiedDate desc

select * from [HumanResources].[EmployeePayHistory] where  month(ModifiedDate) = '06' order by ModifiedDate desc



--DEMONSTRAITING THE USAGE OF GROUP BY Clause


select count(*),postalcode from Person.address group by PostalCode

select count(*) as NoOfAddresses,postalcode from Person.address group by PostalCode

select count(*) as NoOfAddresses,postalcode from Person.address group by PostalCode order by PostalCode

select count(*),City from Person.address group by City

select count(*),City,PostalCode from Person.address group by City,PostalCode


-- DEMONSTRATING THE USE OF HAVING BY clause

select * from Production.product


select count(*) countofproduct,Color from Production.product group by Color having Color = 'yellow'


select count(*) countofproduct,Color,Size from Production.product group by Color,size having Size >= '44'