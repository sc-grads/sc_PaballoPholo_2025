USE Bikestores;

SELECT
      first_name AS [First Name]
      ,last_name AS [Last Name]
      ,phone Phone -- You can do the alias without 'AS' only if it's not a two word with spaces in between
      ,email Email
      ,street Street
      ,city City
      ,state State
  FROM sales.customers