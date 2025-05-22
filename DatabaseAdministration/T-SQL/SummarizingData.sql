select * from tblEmployee
where [EmployeeLastName] <> 'Word'

select * from tblEmployee
where [EmployeeLastName] like '_W%'

Select * from tblEmployee
where [EmployeeLastName] like '[r-t]%'

Select * from tblEmployee
where [EmployeeLastName] like '[^rst]%'

select * from tblEmployee
where EmployeeLastName like '[%]%'

select * from tblEmployee
where EmployeeLastName like '`%%' ESCAPE '`'
