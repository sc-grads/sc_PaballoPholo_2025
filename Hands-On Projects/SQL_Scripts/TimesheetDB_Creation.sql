-- Create the database
IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'TimesheetDB')
BEGIN
    CREATE DATABASE TimesheetDB;
END
GO

USE TimesheetDB;
GO

-- Create Consultant table
CREATE TABLE Consultant (
    ConsultantID INT IDENTITY(1,1) PRIMARY KEY,
    ConsultantName VARCHAR(100) NOT NULL
);
GO

-- Create LeaveType table
CREATE TABLE LeaveType (
    LeaveTypeID INT IDENTITY(1,1) PRIMARY KEY,
    LeaveTypeName VARCHAR(50) NOT NULL
);
GO

-- Create Leave table
CREATE TABLE Leave (
    LeaveID INT IDENTITY(1,1) PRIMARY KEY,
    ConsultantID INT FOREIGN KEY REFERENCES Consultant(ConsultantID),
    LeaveTypeID INT FOREIGN KEY REFERENCES LeaveType(LeaveTypeID),
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    NumberOfDays DECIMAL(5,2) NOT NULL,
    ApprovalObtained BIT NOT NULL DEFAULT 0,
    SickNote BIT NOT NULL DEFAULT 0
);
GO

-- Create Client table
CREATE TABLE Client (
    ClientID INT IDENTITY(1,1) PRIMARY KEY,
    ClientName VARCHAR(100) NOT NULL
);
GO

-- Create Project table
CREATE TABLE Project (
    ProjectID INT IDENTITY(1,1) PRIMARY KEY,
    ClientID INT FOREIGN KEY REFERENCES Client(ClientID),
    ProjectName VARCHAR(100) NOT NULL
);
GO

-- Create Timesheet table with TIME datatypes and NULL allowances for testing
CREATE TABLE Timesheet (
    TimesheetID INT IDENTITY(1,1) PRIMARY KEY,
    ConsultantID INT FOREIGN KEY REFERENCES Consultant(ConsultantID),
    ProjectID INT FOREIGN KEY REFERENCES Project(ProjectID),
    EntryDate DATE NOT NULL,
    DayOfWeek VARCHAR(10),
    Description VARCHAR(255),
    Billable BIT,
    Comments VARCHAR(255),
    TotalHours TIME NOT NULL,
    StartTime TIME NOT NULL,
    EndTime TIME NOT NULL,
    CONSTRAINT CHK_Time CHECK (StartTime < EndTime)
);
GO

-- Create Expense table
CREATE TABLE Expense (
    ExpenseID INT IDENTITY(1,1) PRIMARY KEY,
    ConsultantID INT FOREIGN KEY REFERENCES Consultant(ConsultantID),
    ExpenseDate DATE NOT NULL,
    ExpenseDescription VARCHAR(100) NOT NULL,
    ExpenseType VARCHAR(50) NOT NULL,
    Cost DECIMAL(10,2) NOT NULL,
    CONSTRAINT CHK_Cost CHECK (Cost >= 0)
);
GO