SELECT name, price
FROM products
WHERE price > (
    SELECT MAX(price) FROM products WHERE department = 'Toys' --Inner Query
);

--Subqueries on SELECT

SELECT name, price, (
SELECT price FROM products WHERE id = 3
) AS id_3_price --Rename the subquery column to avoid confusions especially when both inner and outer queries have same column names
FROM products
WHERE price > 867;

--Subqueries on FROM
SELECT AVG(price) AS avg_price
FROM (
    SELECT price
    FROM products
    WHERE department = 'Electronics'
) AS electronics_prices; --Rename the subquery table to avoid confusions especially when both inner and outer queries have same table names

SELECT AVG(order_count )
FROM (
    SELECT user_id, COUNT(*) AS order_count
    FROM orders
    GROUP BY user_id
) AS p