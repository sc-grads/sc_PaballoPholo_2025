CREATE TABLE [AdventureWorks2022].[Sales].[storenew] (
store_id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
sales INT
)

CREATE TABLE [AdventureWorks2022].[Sales].[visits] (
visit_id INT PRIMARY KEY IDENTITY (1,1),
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
visited_at DATETIME,
phone VARCHAR(20),
store_id INT NOT NULL,
FOREIGN KEY (store_id) REFERENCES AdventureWorks2022.sales.storenew (store_id)
)
-- See the table created

SELECT * FROM [AdventureWorks2022].[sales].[visits]


--CREATING A TEMPORARY TABLE AND INSERTING A SUBSET OF DATA INTO IT

select BusinessEntityID, firstname, lastname, Title
into #TempPersonTable
FROM [AdventureWorks2022].[Person].[Person]
where title = 'mr.'

-- View results

SELECT * FROM #TempPersonTable

--Alternative way: Creating a new temporary table 

DROP TABLE #TempPersonTable
Create table #TempPersonTable (
BusinessEntityID int,
Firstname nvarchar(50),
lastname nvarchar(50),
TITLE nvarchar(50)
)

INSERT INTO #TempPersonTable
select BusinessEntityID, firstname, lastname, Title
FROM [AdventureWorks2022].[Person].[Person]
where title = 'mr.'

-- View results

SELECT * FROM #TempPersonTable