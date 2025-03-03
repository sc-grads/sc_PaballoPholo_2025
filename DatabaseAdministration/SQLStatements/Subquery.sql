-- Demonstrate Subquery (Find customers who spent more than average)

USE SalesDB;
GO

SELECT Name 
FROM Customers 
WHERE CustomerID IN (
    SELECT CustomerID FROM Orders 
    WHERE Amount > (SELECT AVG(Amount) FROM Orders)
);
GO