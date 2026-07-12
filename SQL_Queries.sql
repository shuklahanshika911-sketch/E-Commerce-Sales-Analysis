-- =====================================================
-- E-Commerce Sales Analysis using SQL
-- Author: Hanshika Shukla
-- =====================================================

-- 1. View Complete Dataset
SELECT * FROM Sales;

-- 2. Total Sales
SELECT
    SUM(Sales) AS Total_Sales
FROM Sales;

-- 3. Total Profit
SELECT
    SUM(Profit) AS Total_Profit
FROM Sales;

-- 4. Total Orders
SELECT
    COUNT(Order_ID) AS Total_Orders
FROM Sales;

-- 5. Sales by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 6. Profit by Region
SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM Sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 7. Sales by Customer Segment
SELECT
    Segment,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 8. Top 10 Customers
SELECT
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 9. Top 10 Products
SELECT
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 10. Monthly Sales Trend
SELECT
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY MONTH(Order_Date)
ORDER BY Month;

-- 11. Average Sales by Category
SELECT
    Category,
    AVG(Sales) AS Average_Sales
FROM Sales
GROUP BY Category;

-- 12. Average Profit by Region
SELECT
    Region,
    AVG(Profit) AS Average_Profit
FROM Sales
GROUP BY Region;

-- 13. Highest Selling Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM Sales
GROUP BY Category
ORDER BY Total_Sales DESC
LIMIT 1;

-- 14. Most Profitable Region
SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM Sales
GROUP BY Region
ORDER BY Total_Profit DESC
LIMIT 1;

-- 15. Total Quantity Sold
SELECT
    SUM(Quantity) AS Total_Quantity
FROM Sales;
