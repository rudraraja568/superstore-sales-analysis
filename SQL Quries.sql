USE retail_project;
SELECT * FROM `superstore data csv`;
SELECT Category, Sales
FROM `superstore data csv`;
SELECT * 
FROM `superstore data csv`
LIMIT 10;
SELECT * 
FROM `superstore data csv`
WHERE Category = 'Technology';
SELECT SUM(Sales) AS Total_Sales
FROM `superstore data csv`;
SELECT SUM(Profit) AS Total_Profit
FROM `superstore data csv`;
SELECT COUNT(*) AS Total_Orders
FROM `superstore data csv`;
SELECT Category, SUM(Sales) AS Total_Sales
FROM `superstore data csv`
GROUP BY Category;
DESCRIBE superstore_data;
SELECT product_name, SUM(Sales) AS Total_Sales
FROM superstore_data
GROUP BY product_name
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
    product_name,
    Sales,
    CASE 
        WHEN Sales > 5000 THEN 'High Sales'
        WHEN Sales BETWEEN 2000 AND 5000 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS Sales_Category
FROM superstore_data;
SELECT 
    CASE 
        WHEN Sales > 5000 THEN 'High Sales'
        WHEN Sales BETWEEN 2000 AND 5000 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS Sales_Category,
    COUNT(*) AS Total_Orders
FROM superstore_data
GROUP BY Sales_Category;
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    (SUM(Profit)/SUM(Sales))*100 AS Profit_Margin
FROM superstore_data
GROUP BY Category;
