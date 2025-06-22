-- Create the database
IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'TimesheetDB')
BEGIN
    CREATE DATABASE TimesheetDB;
END
GO

USE TimesheetDB;
GO

-- Create Consultant table
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Consultant]') AND type IN (N'U'))
BEGIN
    CREATE TABLE Consultant (
        ConsultantID INT IDENTITY(1,1) PRIMARY KEY,
        ConsultantName NVARCHAR(100) NOT NULL
    );
END
GO

-- Create LeaveType table
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LeaveType]') AND type IN (N'U'))
BEGIN
    DROP TABLE [dbo].[LeaveType];
END
GO
CREATE TABLE LeaveType (
    LeaveTypeID INT IDENTITY(1,1) PRIMARY KEY,
    LeaveTypeName NVARCHAR(50) NOT NULL
);
GO

-- Create Leave table
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Leave]') AND type IN (N'U'))
BEGIN
    CREATE TABLE Leave (
        LeaveID INT IDENTITY(1,1) PRIMARY KEY,
        ConsultantID INT FOREIGN KEY REFERENCES Consultant(ConsultantID),
        LeaveTypeID INT FOREIGN KEY REFERENCES LeaveType(LeaveTypeID),
        StartDate DATE NOT NULL,
        EndDate DATE NOT NULL,
        NumberOfDays DECIMAL(5,2) NOT NULL,
        ApprovalObtained NVARCHAR(50)
    );
END
GO

-- Create Client table
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client]') AND type IN (N'U'))
BEGIN
    DROP TABLE [dbo].[Client];
END
GO
CREATE TABLE Client (
    ClientID INT IDENTITY(1,1) PRIMARY KEY,
    ClientName NVARCHAR(50) NOT NULL
);
GO

-- Create Timesheet table
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Timesheet]') AND type IN (N'U'))
BEGIN
    DROP TABLE [dbo].[Timesheet];
END
GO
CREATE TABLE Timesheet (
    TimesheetID INT IDENTITY(1,1) PRIMARY KEY,
    ConsultantID INT FOREIGN KEY REFERENCES Consultant(ConsultantID),
    ClientID INT FOREIGN KEY REFERENCES Client(ClientID),
    EntryDate DATE,
    DayOfWeek NVARCHAR(MAX),
    ClientProjectName NVARCHAR(50),
    Description NVARCHAR(MAX),
    Billable NVARCHAR(50),
    Comments NVARCHAR(MAX),
    TotalHours TIME,
    StartTime TIME,
    EndTime TIME
    --CONSTRAINT CHK_Time CHECK (StartTime < EndTime)
);
GO

-- Create Expense table
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expense]') AND type IN (N'U'))
BEGIN
    CREATE TABLE Expense (
        ExpenseID INT IDENTITY(1,1) PRIMARY KEY,
        ConsultantID INT FOREIGN KEY REFERENCES Consultant(ConsultantID),
        ExpenseDate DATE,
        ExpenseDescription NVARCHAR(100) NULL,
        ExpenseType NVARCHAR(50) NULL,
        Cost DECIMAL(10,2) NULL
        --CONSTRAINT CHK_Cost CHECK (Cost >= 0)
    );
END
GO

-- Create AuditLog table
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuditLog]') AND type IN (N'U'))
BEGIN
    DROP TABLE [dbo].[AuditLog];
END
GO
CREATE TABLE [dbo].[AuditLog] (
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    Timestamp DATETIME,
    EmployeeName NVARCHAR(100),
    Type NVARCHAR(50) DEFAULT 'Log',
    Month VARCHAR(20), 
    Details NVARCHAR(255)
);
GO

-- Create ErrorLog table
IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ErrorLog]') AND type IN (N'U'))
BEGIN
    DROP TABLE [dbo].[ErrorLog];
END
GO
CREATE TABLE [dbo].[ErrorLog] (
    ErrorID INT IDENTITY(1,1) PRIMARY KEY,
    ErrorDate DATETIME DEFAULT GETDATE(),
    SourceColumn NVARCHAR(100),
    ErrorDescription NVARCHAR(255),
    ErrorCode INT
);
GO
