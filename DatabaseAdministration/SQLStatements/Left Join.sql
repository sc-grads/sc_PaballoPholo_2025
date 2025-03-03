-- Demonstrate LEFT JOIN (All customers, even if they didn't order)
USE SalesDB;
GO

SELECT c.CustomerID, c.Name, o.OrderID, o.Amount
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;
GO