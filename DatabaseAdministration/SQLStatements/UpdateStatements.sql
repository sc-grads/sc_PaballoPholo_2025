
USE AdventureWorks2022
Go



 select * from sales.vSalesPerson


select firstname + ' ' + Lastname AS Fullname,
[TerritoryName],
[TerritoryGroup],
[SalesQuota],
[SalesYTD],[SalesLastYear]
 into salesstaff
 from sales.vSalesPerson

--View the table

select * from salesstaff

--Demonstrating update statements

update salesstaff set [SalesQuota] = 50000 

----------------------------------------------

update salesstaff set [SalesQuota] = SalesQuota + 1550000 

------------------------------

update salesstaff set [SalesQuota] = SalesQuota + 1550000 , SalesYTD =  SalesYTD - 500,SalesLastYear = SalesLastYear * 1.5

--------------------------

update salesstaff set [TerritoryName] = 'UK' where [TerritoryName] = 'United Kingdom'


--------------------------------------------------------

update salesstaff set [TerritoryName] = 'UK' where [TerritoryGroup] is null and fullname = 'syed Abbas'

--------------------------------------------------



update salesstaff set SalesQuota = sp.salesquota
from salesstaff ss
inner join sales.vSalesPerson sp
on ss.Fullname = (sp.firstname + ' ' + sp.lastname)
