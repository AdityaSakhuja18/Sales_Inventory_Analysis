-- View Data
SELECT * FROM dbo.new_table;

-- Top 10 Records
SELECT TOP 10 *
FROM dbo.new_table;

-- Product-wise Demand
SELECT
    Product_Name,
    SUM(Demand) AS Total_Demand
FROM dbo.new_table
GROUP BY Product_Name
ORDER BY Total_Demand DESC;

-- Average Demand by Product
SELECT
    Product_Name,
    AVG(Demand) AS Avg_Demand
FROM dbo.new_table
GROUP BY Product_Name
ORDER BY Avg_Demand DESC;

-- Product Availability Analysis
SELECT
    Product_Name,
    AVG(Availability) AS Avg_Availability
FROM dbo.new_table
GROUP BY Product_Name
ORDER BY Avg_Availability DESC;

-- Top Expensive Products
SELECT
    Product_Name,
    Unit_Price
FROM dbo.new_table
ORDER BY Unit_Price DESC;

-- Demand by Year
SELECT
    YEAR(Order_Date_DD_MM_YYYY) AS Order_Year,
    SUM(Demand) AS Total_Demand
FROM dbo.new_table
GROUP BY YEAR(Order_Date_DD_MM_YYYY)
ORDER BY Order_Year;

-- Low Availability Products
SELECT
    Product_Name,
    Availability
FROM dbo.new_table
WHERE Availability < 3;

-- Product Count
SELECT
    COUNT(DISTINCT Product_ID) AS Total_Products
FROM dbo.new_table;

-- Demand and Availability Summary
SELECT
    SUM(Demand) AS Total_Demand,
    AVG(Availability) AS Avg_Availability
FROM dbo.new_table;