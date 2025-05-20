DECLARE @chrASCII as varchar(10) = 'hellothere'

DECLARE @chrUNICODE as nvarchar(10) = N'helloϞ'

select left(@chrASCII,2) as myASCII, right(@chrUNICODE,2) as myUNICODE
select substring(@chrASCII,3,2) as middleletters -- Takes 2 characters from character number 3 starting to count with 1 not 0 as we normally do
select ltrim(rtrim(@chrASCII)) as myTRIM -- Trims the spaces at the end od the characters 
select replace(@chrASCII,'l','L') as myReplace
select upper(@chrASCII) as myUPPER
select lower(@chrASCII) as myLOWER
