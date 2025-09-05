-- Note that when the 'DISTINCT' keyword is applied it affect every identifier on it’s right

SELECT DISTINCT department
FROM products;

SELECT COUNT(DISTINCT department) -- Count of unique departments
FROM products;