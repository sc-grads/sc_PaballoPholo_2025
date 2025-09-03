--Filtering usig the WHERE clause

SELECT name, area FROM cities WHERE area > 4000;

SELECT name, area FROM cities WHERE area BETWEEN 4000 AND 5000;

SELECT name, area FROM cities WHERE area IN (4000, 5000, 6000);

SELECT name, area FROM cities WHERE area IS NOT NULL;

SELECT name, area 
FROM cities 
WHERE area NOT IN (3043, 8223) OR name = 'Delhi' ;

--Calculation in WHERE clause

SELECT name, area FROM cities WHERE area/1000 > 4;

SELECT name, area FROM cities WHERE area/1000 BETWEEN 4 AND 6;