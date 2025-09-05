--Greatest

SELECT GREATEST(20, 10, 30);
--OUTPUT: 30

SELECT name, weight, GREATEST(30, 2 * weight)
FROM products;

--Least
SELECT LEAST(20, 10, 30);
--OUTPUT: 10

SELECT name, price, LEAST(price * 0.5, 400)
FROM products;