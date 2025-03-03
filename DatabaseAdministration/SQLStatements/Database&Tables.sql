--  Create a new database
CREATE DATABASE SalesDB;
GO

-- Use the created database
USE SalesDB;
GO

--  Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    City NVARCHAR(50)
);
GO

--  Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
GO

--  Insert sample data into Customers
INSERT INTO Customers (Name, City)
VALUES 
    ('Alice Johnson', 'New York'),
    ('Bob Smith', 'Los Angeles'),
    ('Charlie Brown', 'Chicago'),
    ('David White', 'Houston'),
    ('Eva Green', 'Miami');
GO

--  Insert sample data into Orders
INSERT INTO Orders (CustomerID, OrderDate, Amount)
VALUES 
    (1, '2025-03-01', 150.00),
    (1, '2025-03-02', 250.00),
    (2, '2025-03-01', 400.00),
    (3, '2025-03-03', 50.00),
    (4, '2025-03-04', 600.00),
    (5, '2025-03-05', 200.00),
    (5, '2025-03-06', 800.00);
GO