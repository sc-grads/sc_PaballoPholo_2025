USE AdventureWorks2022
GO

select * from salesstaff

-------------------------

truncate  table salesstaff

--Creating new table

create table employeenew (
id int identity (1,1) not null,
employeename nvarchar(50) not null
)

--Inserting into the created table

insert into employeenew
(employeename)
values ('Abbas'),('Imran'),('dino'),('james')

--------------------

SELECT * FROM employeenew

delete from employeenew

--Truncate is used to delete all data from an existing table
--Unlike DELETE, TRUNCATE does not support the WHERE clause—it always removes all rows
--Once executed, TRUNCATE is difficult to roll back, as it does not log row-level deletions

truncate table  employeenew