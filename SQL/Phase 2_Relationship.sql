

--- Check Relationship

	--- Sales -> Products
SELECT *
FROM Candy_Sales;

SELECT *
FROM Candy_Products;

SELECT DISTINCT
    s.Product_ID
FROM dbo.Candy_Sales AS s
LEFT JOIN dbo.Candy_Products AS p
    ON s.Product_ID = p.Product_ID
WHERE p.Product_ID IS NULL;

--- Sales -> Targets

SELECT *
FROM Candy_Sales;

SELECT *
FROM Candy_Targets;

SELECT DISTINCT
    s.Division
FROM dbo.Candy_Sales AS s
LEFT JOIN dbo.Candy_Targets AS t
    ON s.Division = t.Division
WHERE t.Division IS NULL;

--- Sales -> uszips

SELECT *
FROM Candy_Sales;

SELECT *
FROM uszips;

SELECT DISTINCT
    s.Postal_Code
FROM dbo.Candy_Sales AS s
LEFT JOIN dbo.uszips AS z
    ON RIGHT('00000' + CAST(s.Postal_Code AS varchar(5)), 5) = z.zip
WHERE z.zip IS NULL;

SELECT DISTINCT
    s.Postal_Code
FROM dbo.Candy_Sales AS s
LEFT JOIN dbo.uszips AS z
    ON RIGHT('00000' + CAST(s.Postal_Code AS varchar(5)), 5) = z.zip
WHERE s.Country_Region = 'United States'
  AND z.zip IS NULL

  --- Products → Factories

  SELECT *
  FROM Candy_Products;

  SELECT *
  FROM Candy_Factories;

  SELECT DISTINCT
    p.Factory
FROM dbo.Candy_Products AS p
LEFT JOIN dbo.Candy_Factories AS f
    ON p.Factory = f.Factory
WHERE f.Factory IS NULL;


  SELECT *
  FROM Candy_Sales;

  
  SELECT *
  FROM Candy_Factories;