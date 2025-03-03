-- Demonstrate GROUP BY & HAVING

USE SalesDB;
GO

SELECT CustomerID, SUM(Amount) AS TotalSpent
FROM Orders
GROUP BY CustomerID
HAVING SUM(Amount) > 300; -- Only show customers who spent more than 300
GO