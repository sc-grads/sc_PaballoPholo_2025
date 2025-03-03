-- Demonstrate INNER JOIN (Customers who placed orders)

USE SalesDB;
GO

SELECT c.CustomerID, c.Name, o.OrderID, o.Amount
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;
GO