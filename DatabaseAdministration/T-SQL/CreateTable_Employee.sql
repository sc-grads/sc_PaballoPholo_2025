USE [70-461]
GO

CREATE TABLE tblEmployee
(
EmployeeNumber INT NOT NULL, --Ensuring that 
EmployeeFirstName VARCHAR(50) NOT NULL,
EmployeeMiddleName VARCHAR(50) NULL,
EmployeeLastName VARCHAR(50) NOT NULL,
EmployeeGovernmentID CHAR(10) NULL,
DateOfBirth DATE NOT NULL
)
