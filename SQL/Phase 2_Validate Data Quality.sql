

-- Check Row Counts

USE SupplyChainDB;
GO


SELECT COUNT(*) AS SalesRows
FROM dbo.Candy_Sales;

SELECT COUNT(*) AS ProductRows
FROM dbo.Candy_Products;

SELECT COUNT(*) AS FactoryRows
FROM dbo.Candy_Factories;

SELECT COUNT(*) AS TargetRows
FROM dbo.Candy_Targets;

SELECT COUNT(*) AS ZipRows
FROM dbo.uszips;


-- Check for Duplicate Keys

	--- Sales

SELECT
    Row_ID,
    COUNT(*) AS DuplicateCount
FROM dbo.Candy_Sales
GROUP BY Row_ID
HAVING COUNT(*) > 1;

    --- Products

SELECT
    Product_ID,
    COUNT(*) AS DuplicateCount
FROM dbo.Candy_Products
GROUP BY Product_ID
HAVING COUNT(*) > 1;

    --- Factories

SELECT
    Factory,
    COUNT(*) AS DuplicateCount
FROM dbo.Candy_Factories
GROUP BY Factory
HAVING COUNT(*) > 1;

    --- Targets

SELECT
    Division,
    COUNT(*) AS DuplicateCount
FROM dbo.Candy_Targets
GROUP BY Division
HAVING COUNT(*) > 1;

-- Check Missing, Blank and Null Values

    --- Sales

SELECT *
FROM Candy_Sales;

SELECT
    SUM(CASE WHEN Row_ID IS NULL THEN 1 ELSE 0 END) AS MissingRowID,
    SUM(CASE WHEN Order_ID IS NULL THEN 1 ELSE 0 END) AS MissingOrderID,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS MissingOrderDate,
    SUM(CASE WHEN Ship_Date IS NULL THEN 1 ELSE 0 END) AS MissingShipDate,
    SUM(CASE WHEN Ship_Mode IS NULL THEN 1 ELSE 0 END) AS MissingShipMode,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS MissingCustomerID,
    SUM(CASE WHEN Country_Region IS NULL THEN 1 ELSE 0 END) AS MissingCountry,
    SUM(CASE WHEN City IS NULL THEN 1 ELSE 0 END) AS MissingCity,
    SUM(CASE WHEN State_Province IS NULL THEN 1 ELSE 0 END) AS MissingState,
    SUM(CASE WHEN Postal_Code IS NULL THEN 1 ELSE 0 END) AS MissingPostalCode,
    SUM(CASE WHEN Division IS NULL THEN 1 ELSE 0 END) AS MissingDivision,
    SUM(CASE WHEN Region IS NULL THEN 1 ELSE 0 END) AS MissingRegion,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS MissingProductID,
    SUM(CASE WHEN Product_Name IS NULL THEN 1 ELSE 0 END) AS MissingProductName,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS MissingSales,
    SUM(CASE WHEN Units IS NULL THEN 1 ELSE 0 END) AS MissingUnits,
    SUM(CASE WHEN Gross_Profit IS NULL THEN 1 ELSE 0 END) AS MissingGrossProfit,
    SUM(CASE WHEN Cost IS NULL THEN 1 ELSE 0 END) AS MissingCost
FROM dbo.Candy_Sales;

SELECT
    SUM(CASE WHEN LTRIM(RTRIM(Order_ID)) = '' THEN 1 ELSE 0 END) AS BlankOrderID,
    SUM(CASE WHEN LTRIM(RTRIM(Ship_Mode)) = '' THEN 1 ELSE 0 END) AS BlankShipMode,
    SUM(CASE WHEN LTRIM(RTRIM(Country_Region)) = '' THEN 1 ELSE 0 END) AS BlankCountry,
    SUM(CASE WHEN LTRIM(RTRIM(City)) = '' THEN 1 ELSE 0 END) AS BlankCity,
    SUM(CASE WHEN LTRIM(RTRIM(State_Province)) = '' THEN 1 ELSE 0 END) AS BlankState,
    SUM(CASE WHEN LTRIM(RTRIM(Division)) = '' THEN 1 ELSE 0 END) AS BlankDivision,
    SUM(CASE WHEN LTRIM(RTRIM(Region)) = '' THEN 1 ELSE 0 END) AS BlankRegion,
    SUM(CASE WHEN LTRIM(RTRIM(Product_ID)) = '' THEN 1 ELSE 0 END) AS BlankProductID,
    SUM(CASE WHEN LTRIM(RTRIM(Product_Name)) = '' THEN 1 ELSE 0 END) AS BlankProductName
FROM dbo.Candy_Sales;

SELECT *
FROM dbo.Candy_Sales
WHERE Sales < 0
   OR Units <= 0
   OR Cost < 0
   OR Ship_Date < Order_Date;
    
    --- Products

SELECT *
FROM Candy_Products;

SELECT
    SUM(CASE WHEN Division IS NULL THEN 1 ELSE 0 END) AS MissingDivision,
    SUM(CASE WHEN Product_Name IS NULL THEN 1 ELSE 0 END) AS MissingProductName,
    SUM(CASE WHEN Factory IS NULL THEN 1 ELSE 0 END) AS MissingFactory,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS MissingProductID,
    SUM(CASE WHEN Unit_Price IS NULL THEN 1 ELSE 0 END) AS MissingUnitPrice,
    SUM(CASE WHEN Unit_Cost IS NULL THEN 1 ELSE 0 END) AS MissingUnitCost
FROM dbo.Candy_Products;

SELECT
    SUM(CASE WHEN LTRIM(RTRIM(Division)) = '' THEN 1 ELSE 0 END) AS BlankDivision,
    SUM(CASE WHEN LTRIM(RTRIM(Product_Name)) = '' THEN 1 ELSE 0 END) AS BlankProductName,
    SUM(CASE WHEN LTRIM(RTRIM(Factory)) = '' THEN 1 ELSE 0 END) AS BlankFactory,
    SUM(CASE WHEN LTRIM(RTRIM(Product_ID)) = '' THEN 1 ELSE 0 END) AS BlankProductID
FROM dbo.Candy_Products;

SELECT *
FROM dbo.Candy_Products
WHERE Unit_Price <= 0
   OR Unit_Cost < 0
   OR Unit_Cost > Unit_Price;

    --- Factories

SELECT *
FROM Candy_Factories;

SELECT *
FROM dbo.Candy_Factories
WHERE Latitude NOT BETWEEN -90 AND 90
   OR Longitude NOT BETWEEN -180 AND 180;

   --- Targets

SELECT *
FROM Candy_Targets;

    --(check Target <=0)

     --- uszips

SELECT *
FROM uszips
;

SELECT
    SUM(CASE WHEN zip IS NULL THEN 1 ELSE 0 END) AS MissingZip,
    SUM(CASE WHEN lat IS NULL THEN 1 ELSE 0 END) AS MissingLatitude,
    SUM(CASE WHEN lng IS NULL THEN 1 ELSE 0 END) AS MissingLongitude,
    SUM(CASE WHEN city IS NULL THEN 1 ELSE 0 END) AS MissingCity,
    SUM(CASE WHEN state_id IS NULL THEN 1 ELSE 0 END) AS MissingStateID,
    SUM(CASE WHEN state_name IS NULL THEN 1 ELSE 0 END) AS MissingStateName
FROM dbo.uszips;

SELECT
    SUM(CASE WHEN LTRIM(RTRIM(zip)) = '' THEN 1 ELSE 0 END) AS BlankZip,
    SUM(CASE WHEN lat IS NULL THEN 1 ELSE 0 END) AS MissingLatitude,
    SUM(CASE WHEN lng IS NULL THEN 1 ELSE 0 END) AS MissingLongitude,
    SUM(CASE WHEN LTRIM(RTRIM(city)) = '' THEN 1 ELSE 0 END) AS BlankCity,
    SUM(CASE WHEN LTRIM(RTRIM(state_id)) = '' THEN 1 ELSE 0 END) AS BlankStateID,
    SUM(CASE WHEN LTRIM(RTRIM(state_name)) = '' THEN 1 ELSE 0 END) AS BlankStateName,
    SUM(CASE WHEN LTRIM(RTRIM(zcta)) = '' THEN 1 ELSE 0 END) AS BlankZCTA,
    SUM(CASE WHEN LTRIM(RTRIM(parent_zcta)) = '' THEN 1 ELSE 0 END) AS BlankParentZCTA,
    SUM(CASE WHEN LTRIM(RTRIM(county_fips)) = '' THEN 1 ELSE 0 END) AS BlankCountyFIPS,
    SUM(CASE WHEN LTRIM(RTRIM(county_name)) = '' THEN 1 ELSE 0 END) AS BlankCountyName,
    SUM(CASE WHEN LTRIM(RTRIM(county_weights)) = '' THEN 1 ELSE 0 END) AS BlankCountyWeights,
    SUM(CASE WHEN LTRIM(RTRIM(county_names_all)) = '' THEN 1 ELSE 0 END) AS BlankCountyNamesAll,
    SUM(CASE WHEN LTRIM(RTRIM(county_fips_all)) = '' THEN 1 ELSE 0 END) AS BlankCountyFIPSAll,
    SUM(CASE WHEN LTRIM(RTRIM(imprecise)) = '' THEN 1 ELSE 0 END) AS BlankImprecise,
    SUM(CASE WHEN LTRIM(RTRIM(military)) = '' THEN 1 ELSE 0 END) AS BlankMilitary,
    SUM(CASE WHEN LTRIM(RTRIM(timezone)) = '' THEN 1 ELSE 0 END) AS BlankTimezone
FROM dbo.uszips;

SELECT *
FROM dbo.uszips
WHERE lat IS NULL
   OR lng IS NULL;

   SELECT DISTINCT
    s.Postal_Code,
    z.city,
    z.state_name,
    z.lat,
    z.lng
FROM dbo.Candy_Sales AS s
LEFT JOIN dbo.uszips AS z
    ON RIGHT('00000' + CAST(s.Postal_Code AS varchar(5)), 5) = z.zip
WHERE z.lat IS NULL
   OR z.lng IS NULL;

   SELECT
    Country_Region,
    COUNT(*) AS Orders
FROM dbo.Candy_Sales
GROUP BY Country_Region;

SELECT
    s.Country_Region,
    COUNT(*) AS MissingCoordinates
FROM dbo.Candy_Sales AS s
LEFT JOIN dbo.uszips AS z
    ON RIGHT('00000' + CAST(s.Postal_Code AS varchar(5)), 5) = z.zip
WHERE z.lat IS NULL
   OR z.lng IS NULL
GROUP BY s.Country_Region;