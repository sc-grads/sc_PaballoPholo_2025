USE AdventureWorks2022
GO

CREATE TABLE SQLBackupRestoreTest (
	ID INT NOT NULL PRIMARY KEY,
	loginname VARCHAR(100) NOT NULL,
	logindate DATETIME NOT NULL DEFAULT getdate()
)
GO


select* from SQLBackupRestoreTest

insert into SQLBackupRestoreTest (ID, loginname) values (1, 'test1')
insert into SQLBackupRestoreTest (ID, loginname) values (2, 'test2')
insert into SQLBackupRestoreTest (ID, loginname) values (3, 'test3')
insert into SQLBackupRestoreTest (ID, loginname) values (4, 'test4')
insert into SQLBackupRestoreTest (ID, loginname) values (5, 'test5')

--Doing a full backup (5 rows in a table), script created

BACKUP DATABASE [AdventureWorks2022] TO  DISK = N'C:\SQL_Backups\AdventureWorks2022_full' WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorks2022-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

--Insert 5 more rows

insert into SQLBackupRestoreTest (ID, loginname) values (6, 'test6')
insert into SQLBackupRestoreTest (ID, loginname) values (7, 'test7')
insert into SQLBackupRestoreTest (ID, loginname) values (8, 'test8')
insert into SQLBackupRestoreTest (ID, loginname) values (9, 'test9')
insert into SQLBackupRestoreTest (ID, loginname) values (10, 'test10')

--Now create a differential backup (There's 10 rows at this point), script generated

BACKUP DATABASE [AdventureWorks2022] TO  DISK = N'C:\SQL_Backups\AdventureWork2022_diff1.diff' WITH  DIFFERENTIAL , NOFORMAT, NOINIT,  NAME = N'AdventureWorks2022-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
--Insert 3 more rows

insert into SQLBackupRestoreTest (ID, loginname) values (11, 'test11')
insert into SQLBackupRestoreTest (ID, loginname) values (12, 'test12')
insert into SQLBackupRestoreTest (ID, loginname) values (13, 'test13')

--Create a transactional log backup now (There's 13 rows)

BACKUP LOG [AdventureWorks2022] TO  DISK = N'C:\SQL_Backups\AdventureWorks2022_trans_1.trn' WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorks2022-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

--Insert 3 more rows

insert into SQLBackupRestoreTest (ID, loginname) values (14, 'test14')
insert into SQLBackupRestoreTest (ID, loginname) values (15, 'test15')
insert into SQLBackupRestoreTest (ID, loginname) values (16, 'test16')

--Create another transactional log backup (There's 16 rows)

BACKUP LOG [AdventureWorks2022] TO  DISK = N'C:\SQL_Backups\AdventureWorks2022_trans_2.trn' WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorks2022-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO

--Insert 14 more rows

insert into SQLBackupRestoreTest (ID, loginname) values (114, 'test14')
--Mar 17 2025  2:37PM
insert into SQLBackupRestoreTest (ID, loginname) values (115, 'test15')
--Mar 17 2025  2:38PM
insert into SQLBackupRestoreTest (ID, loginname) values (116, 'test16')
--Mar 17 2025  2:42PM
insert into SQLBackupRestoreTest (ID, loginname) values (117, 'test17')
--Mar 17 2025  2:43PM

print getdate()

--Create another trascational back up

BACKUP LOG [AdventureWorks2022] TO  DISK = N'C:\SQL_Backups\AdventureWorks2022_trans_3.trn' WITH NOFORMAT, NOINIT,  NAME = N'AdventureWorks2022-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
