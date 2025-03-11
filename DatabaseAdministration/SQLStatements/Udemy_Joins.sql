--CREATING THE 1st TABLE

CREATE TABLE [dbo].[Employee](
	[EmpID] [int] NOT NULL,
	[EmpName] [nvarchar](50) NULL,
	[EmpTitle] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
--CREATING THE 2nd TABLE

CREATE TABLE [dbo].[Sales](
	[EmpID] [int] NULL,
	[EmpName] [nvarchar](50) NULL,
	[SalesNumber] [int] NOT NULL,
	[ItemSold] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SalesNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
-- VIWING BOTH TABLES

SELECT * FROM [dbo].[Employee]
SELECT * FROM [dbo].[Sales]


--Join statement
SELECT * FROM [dbo].[Employee] e
join [dbo].[Sales] s 
on e.EmpName = s.EmpName

--The alternative way of join

SELECT * FROM [dbo].[Employee] e
join [dbo].[Sales] s 
on e.EmpID = s.[EmpID]

--Specifying what columns to select and using order by clause

SELECT e.EmpID,e.EmpName,s.SalesNumber,s.ItemSold FROM [dbo].[Employee] e
join [dbo].[Sales] s 
on e.EmpID = s.[EmpID]
order by e.EmpID

-- Selecting the number of sales for every employee and using the groupby clause

SELECT count(s.SalesNumber),e.EmpID,e.EmpName FROM [dbo].[Employee] e
join [dbo].[Sales] s 
on e.EmpID = s.[EmpID]
group by e.EmpID,e.EmpName