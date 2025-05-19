--PRACTICE ACTIVITY NUMBER 3

DECLARE @myVar AS SMALLINT = 20000

SELECT @myvar 


-- Create version 2: Change your code so that it tries to assign the value of 200,000. If it doesn't run properly, then you got it right.

DECLARE @myVar2 AS SMALLINT = 200000

SELECT @myvar2 

-- Create version 3: Correct the problem by changing your variable to a data type that allows the value of 200,000, and see if the code now works.

DECLARE @myVar3 AS INT = 200000

SELECT @myvar3 

-- Then change it back to 20,000, but change the variable to a data type that doesn't allow numbers that high. Then see if you get that error message again.

DECLARE @myVar4 AS TINYINT = 20000

SELECT @myvar4
