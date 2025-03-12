-- Create the Sales Staff table
-- 
CREATE TABLE [dbo].[salesstaff](
	[staffid] [int] NOT NULL PRIMARY KEY,
	[fName] [nvarchar](30) NULL,
	[lName] [nvarchar](30) NULL
	)


GO

-- Inserting data to the table

INSERT INTO [dbo].[salesstaff] (STAFFID,FNAME,LNAME) VALUES (200,'Abbas','Mehmood')

--This adds to another row, It does't replace like the Update command

INSERT INTO [dbo].[salesstaff] (STAFFID,FNAME,LNAME) VALUES (300,'Imran','Afzal'),(325,'John','Vick'),(314,'James','Dino')

--Create a new table

CREATE TABLE [dbo].[salesstaffNew](
	ID [int] not null IDENTITY PRIMARY KEY,
	[staffid] [int] NOT NULL,
	[fName] [nvarchar](30),
	[lName] [nvarchar](30)
	)


GO

--View the table

SELECT * FROM salesstaffNew

-- Insert into the new table

INSERT INTO [dbo].[salesstaffNew] (STAFFID,FNAME,LNAME) VALUES (200,'Abbas','Mehmood')

--------------------------------------

INSERT INTO [dbo].[salesstaffNew] (STAFFID,FNAME,LNAME) VALUES (300,'Imran','Afzal'),(325,'John','Vick'),(314,'James','Dino')

-----------------------------------



CREATE TABLE [dbo].[nameOnlyTable](
	
	[fName] [nvarchar](30),
	[lName] [nvarchar](30)
	)


GO

--copying data into the new table

select * from [nameOnlyTable]

insert into nameOnlyTable (fname,lname)
select fname,lname from salesstaffNew where id >= 3

--------------------------------

select * into salesstaffNew_bkp from salesstaffNew


