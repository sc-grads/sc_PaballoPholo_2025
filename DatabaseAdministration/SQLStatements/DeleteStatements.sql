USE AdventureWorks2022
GO

-- Delete the already created table

drop table salesstaff

-- And create the new one

create table salesstaff
(
staffid int not null primary key,
firstname nvarchar(50) not null,
lastname nvarchar(50) not null,
countryregion nvarchar(50) not null
)

--Insert into the table

insert into salesstaff
select [BusinessEntityID],[FirstName],[LastName],[CountryRegionName] from [Sales].[vSalesPerson]

--Demostrating delete commands

-- This only delete the data in the table

delete salesstaff

-- Alternative way to only delete the data in the table


delete from salesstaff

--------------------------

delete from salesstaff where countryregion =  'united states'

--By using 'begin tran' we ensure that we can always rollback if we deleted the data we did'nt intend on deleting
begin tran
delete from salesstaff where countryregion =  'united states'

rollback tran

--And commit if it's indeed what we wanted

begin tran
delete from salesstaff where countryregion =  'united states'

commit

------------------------

delete from salesstaff where staffid in (select [BusinessEntityID] from [Sales].[vSalesPerson] where SalesLastYear = 0)

-------------------------------------

delete salesstaff 
from  [Sales].[vSalesPerson] sp
inner join salesstaff ss
on sp.[BusinessEntityID] = ss.staffid
where sp.saleslastyear = 0