-- Demonstrate Aggregation (Total revenue and order count per city)

USE SalesDB;
GO

SELECT c.City, COUNT(o.OrderID) AS TotalOrders, SUM(o.Amount) AS TotalRevenue
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.City;
GO