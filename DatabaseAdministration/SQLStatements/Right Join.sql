--  Demonstrate RIGHT JOIN (All orders, even if the customer info is missing)
USE SalesDB;
GO

SELECT c.CustomerID, c.Name, o.OrderID, o.Amount
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID;
GO