SELECT *
FROM users
OFFSET 40; --Skips the first 40 rows

SELECT *
FROM users
OFFSET 40; --Skips the first 40 rows

--Together

SELECT *
FROM products
ORDER BY price DESC
LIMIT 5
OFFSET 1; --Using limit and offset together, limit should come first