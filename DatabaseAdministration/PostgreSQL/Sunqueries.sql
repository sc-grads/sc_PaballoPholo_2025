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