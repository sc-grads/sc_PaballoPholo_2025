--The following two give the exact same results
SELECT CURRENT_TIMESTAMP as RightNow
select getdate() as RightNow


select SYSDATETIME() AS RightNow --More accurate than DateTime
select dateadd(year,1,'2015-01-02 03:04:05') as myYear --Adds 1 year to your Year
select datepart(hour,'2015-01-02 03:04:05') as myHour  --Extracts the hour
select datename(weekday, getdate()) as myAnswer --Gets the day 
select datediff(second,'2015-01-02 03:04:05',getdate()) as SecondsElapsed 
