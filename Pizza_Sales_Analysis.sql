-- ============================================================
-- PIZZA SALES DATA ANALYSIS
-- SQL Server Analysis Queries
-- ============================================================

-- ============================================================
-- 1. KEY PERFORMANCE INDICATORS (KPIs)
-- ============================================================

-- Total Revenue
SELECT SUM(total_price) AS TotalRevenue
FROM pizza_sales;
GO

-- Average Order Value
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS AverageOrderValue
FROM pizza_sales;
GO

-- Total Pizzas Sold
SELECT SUM(CAST(quantity AS DECIMAL(10,2))) AS Total_Pizza_Sold
FROM pizza_sales;
GO

-- Average Pizzas Per Order
SELECT
    CAST(
        CAST(SUM(quantity) AS DECIMAL(10,2)) /
        CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2))
        AS DECIMAL(10,2)
    ) AS Avg_Pizzas_Per_Order
FROM pizza_sales;
GO

-- ============================================================
-- 2. TIME-BASED ANALYSIS
-- ============================================================

-- Daily Trend for Total Orders
SELECT
    DATENAME(DW, order_date) AS Day,
    COUNT(DISTINCT order_id) AS [Order]
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);
GO

-- Monthly Trend for Orders
SELECT
    DATENAME(MONTH, order_date) AS Month,
    COUNT(DISTINCT order_id) AS [Order]
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date);
GO

-- ============================================================
-- 3. CATEGORY & SIZE ANALYSIS
-- ============================================================

-- Percentage of Sales by Pizza Category
SELECT
    pizza_category,
    SUM(total_price) * 100 /
        (SELECT SUM(total_price) FROM pizza_sales) AS Sales_Percentage
FROM pizza_sales
GROUP BY pizza_category;
GO

-- Percentage of Sales by Pizza Size
SELECT
    pizza_size,
    SUM(total_price) * 100 /
        (SELECT SUM(total_price) FROM pizza_sales) AS Sales_Percentage
FROM pizza_sales
GROUP BY pizza_size;
GO

-- Total Pizzas Sold by Pizza Category
SELECT
    pizza_category,
    SUM(quantity) AS Pizza_Sold
FROM pizza_sales
GROUP BY pizza_category;
GO

-- ============================================================
-- 4. PRODUCT PERFORMANCE ANALYSIS
-- ============================================================

-- Top 5 Pizzas by Revenue
SELECT TOP 5
    pizza_name,
    SUM(total_price) AS Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY SUM(total_price) DESC;
GO

-- Bottom 5 Pizzas by Revenue
SELECT TOP 5
    pizza_name,
    SUM(total_price) AS Revenue
FROM pizza_sales
GROUP BY pizza_name
ORDER BY SUM(total_price) ASC;
GO

-- Top 5 Pizzas by Quantity
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY SUM(quantity) DESC;
GO

-- Bottom 5 Pizzas by Quantity
SELECT TOP 5
    pizza_name,
    SUM(quantity) AS Quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY SUM(quantity) ASC;
GO

-- Top 5 Pizzas by Total Orders
SELECT TOP 5
    pizza_name,
    COUNT(DISTINCT order_id) AS TotalOrders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY COUNT(DISTINCT order_id) DESC;
GO

-- Bottom 5 Pizzas by Total Orders
SELECT TOP 5
    pizza_name,
    COUNT(DISTINCT order_id) AS TotalOrders
FROM pizza_sales
GROUP BY pizza_name
ORDER BY COUNT(DISTINCT order_id) ASC;
GO
