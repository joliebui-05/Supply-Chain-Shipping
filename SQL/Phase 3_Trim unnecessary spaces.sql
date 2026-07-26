

-- Trim unnecessary spaces

	--- Sales

SELECT *
FROM dbo.Candy_Sales
WHERE Order_ID <> LTRIM(RTRIM(Order_ID))
   OR Ship_Mode <> LTRIM(RTRIM(Ship_Mode))
   OR Country_Region <> LTRIM(RTRIM(Country_Region))
   OR City <> LTRIM(RTRIM(City))
   OR State_Province <> LTRIM(RTRIM(State_Province))
   OR Postal_Code <> LTRIM(RTRIM(Postal_Code))
   OR Division <> LTRIM(RTRIM(Division))
   OR Region <> LTRIM(RTRIM(Region))
   OR Product_ID <> LTRIM(RTRIM(Product_ID))
   OR Product_Name <> LTRIM(RTRIM(Product_Name));

   --- Products

   SELECT *
FROM dbo.Candy_Products
WHERE Division <> LTRIM(RTRIM(Division))
   OR Product_Name <> LTRIM(RTRIM(Product_Name))
   OR Factory <> LTRIM(RTRIM(Factory))
   OR Product_ID <> LTRIM(RTRIM(Product_ID));

     --- Factories

SELECT *
FROM dbo.Candy_Factories
WHERE Factory <> LTRIM(RTRIM(Factory));

     --- Targets

SELECT *
FROM dbo.Candy_Targets
WHERE Division <> LTRIM(RTRIM(Division));

     --- uszips

SELECT *
FROM dbo.uszips
WHERE zip <> LTRIM(RTRIM(zip))
   OR city <> LTRIM(RTRIM(city))
   OR state_id <> LTRIM(RTRIM(state_id))
   OR state_name <> LTRIM(RTRIM(state_name))
   OR county_name <> LTRIM(RTRIM(county_name))
   OR timezone <> LTRIM(RTRIM(timezone));