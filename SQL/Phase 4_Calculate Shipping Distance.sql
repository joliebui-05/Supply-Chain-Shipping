

-- Calculate Shipping Distance

USE SupplyChainDB;
GO

ALTER VIEW dbo.Candy_Sales_Logistics
AS

SELECT
    s.Order_ID,
    s.Product_ID,
    s.Product_Name,
    s.Postal_Code,

    p.Factory,

    f.Latitude  AS Factory_Latitude,
    f.Longitude AS Factory_Longitude,

    z.lat AS Customer_Latitude,
    z.lng AS Customer_Longitude,

        CASE
    WHEN s.Country_Region = 'United States' THEN
        ROUND(
            3959.0 * 2.0 * ASIN(
                SQRT(
                    POWER(SIN(RADIANS(z.lat - f.Latitude) / 2.0), 2)
                    +
                    COS(RADIANS(f.Latitude))
                    * COS(RADIANS(z.lat))
                    * POWER(SIN(RADIANS(z.lng - f.Longitude) / 2.0), 2)
                )
            ),
            2
        )
    ELSE NULL
END AS Shipping_Distance_Miles

FROM Candy_Sales AS s

LEFT JOIN Candy_Products AS p
    ON s.Product_ID = p.Product_ID

LEFT JOIN Candy_Factories AS f
    ON p.Factory = f.Factory

LEFT JOIN uszips AS z
    ON RIGHT('00000' + CAST(s.Postal_Code AS varchar(5)), 5) = z.zip;

 
 GO

SELECT TOP (20) *
FROM dbo.Candy_Sales_Logistics;