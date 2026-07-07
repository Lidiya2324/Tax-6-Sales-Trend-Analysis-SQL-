/*============================================================

Project: Sales Trend Analysis Using Aggregated SQL Queries

Objective:
Analyze online sales data to identify:
- Monthly revenue trends
- Monthly order volume patterns
- Highest revenue months
- Regional performance
- Product category performance
- Payment method insights

Tools:
SQL Server

Dataset:
Online Sales Cleaned Dataset

============================================================*/


/*============================================================
 1. Database & Table Validation
============================================================*/


-- Check available tables in the database

SELECT name
FROM sys.tables;


-- Preview sample records

SELECT TOP 10 *
FROM online_sales_cleaned;


-- Check total number of records

SELECT COUNT(*) AS Total_Rows
FROM online_sales_cleaned;



/*============================================================
 2. Monthly Revenue Trend Analysis

 Business Question:
 How does revenue change month by month?

 KPI:
 Total Monthly Revenue

============================================================*/


SELECT
    YEAR(Date) AS Sales_Year,
    MONTH(Date) AS Sales_Month,
    SUM(Total_Revenue) AS Monthly_Revenue

FROM online_sales_cleaned

GROUP BY
    YEAR(Date),
    MONTH(Date)

ORDER BY
    Sales_Year,
    Sales_Month;



/*============================================================
 3. Monthly Order Volume Analysis

 Business Question:
 How many orders are placed each month?

 KPI:
 Number of Unique Transactions

============================================================*/


SELECT
    YEAR(Date) AS Sales_Year,
    MONTH(Date) AS Sales_Month,
    COUNT(DISTINCT Transaction_ID) AS Order_Volume

FROM online_sales_cleaned

GROUP BY
    YEAR(Date),
    MONTH(Date)

ORDER BY
    Sales_Year,
    Sales_Month;



/*============================================================
 4. Top 3 Highest Revenue Months

 Business Question:
 Which months generated the highest sales revenue?

============================================================*/


SELECT TOP 3

    YEAR(Date) AS Sales_Year,
    MONTH(Date) AS Sales_Month,
    SUM(Total_Revenue) AS Revenue

FROM online_sales_cleaned

GROUP BY
    YEAR(Date),
    MONTH(Date)

ORDER BY
    Revenue DESC;



/*============================================================
 5. Revenue Performance by Region

 Business Question:
 Which regions contribute the most revenue?

============================================================*/


SELECT

    Region,
    SUM(Total_Revenue) AS Total_Revenue

FROM online_sales_cleaned

GROUP BY Region

ORDER BY Total_Revenue DESC;



/*============================================================
 6. Product Category Performance

 Business Question:
 Which product categories generate the highest revenue
 and sales volume?

 KPIs:
 - Total Revenue
 - Units Sold

============================================================*/


SELECT

    Product_Category,
    SUM(Total_Revenue) AS Total_Revenue,
    SUM(Units_Sold) AS Total_Units

FROM online_sales_cleaned

GROUP BY Product_Category

ORDER BY Total_Revenue DESC;



/*============================================================
 7. Payment Method Analysis

 Business Question:
 Which payment methods are most commonly used
 and contribute the highest revenue?

============================================================*/


SELECT

    Payment_Method,
    COUNT(Transaction_ID) AS Number_of_Orders,
    SUM(Total_Revenue) AS Revenue

FROM online_sales_cleaned

GROUP BY Payment_Method

ORDER BY Revenue DESC;



/*============================================================
 End of Analysis

 Key Insights Generated:
 - Monthly revenue trends
 - Seasonal sales patterns
 - Highest-performing months
 - Regional revenue contribution
 - Category sales performance
 - Customer payment preferences

============================================================*/