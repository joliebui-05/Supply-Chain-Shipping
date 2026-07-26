

-- Confirm all tables imported correctly


USE SupplyChainDB;
GO

SELECT *
FROM dbo.Candy_Sales;

SELECT *
FROM dbo.Candy_Factories;

SELECT *
FROM dbo.Candy_Products;

SELECT *
FROM dbo.Candy_Targets;

SELECT *
FROM dbo.uszips;



-- Verify the row count and missing coordinates from uszips table

SELECT COUNT(*) AS TotalZipRows
FROM dbo.uszips;

SELECT
    SUM(CASE WHEN lat IS NULL THEN 1 ELSE 0 END) AS MissingLatitude,
    SUM(CASE WHEN lng IS NULL THEN 1 ELSE 0 END) AS MissingLongitude
FROM dbo.uszips;

-- Matche the customer's postal code with uszips table

SELECT TOP 20
    s.Order_ID,
    s.Postal_Code,
    s.City,
    s.State_Province,
    z.lat,
    z.lng,
    z.county_name,
    z.population
FROM dbo.Candy_Sales AS s
LEFT JOIN dbo.uszips AS z
    ON RIGHT('00000' + CAST(s.Postal_Code AS varchar(5)), 5) = z.zip;