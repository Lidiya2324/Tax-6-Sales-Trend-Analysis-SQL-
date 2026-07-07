# Sales Trend Analysis Using SQL

## Project Overview

This project focuses on analyzing online sales transaction data using SQL Server to identify sales trends, revenue patterns, customer purchasing behavior, and business performance indicators.

The analysis uses aggregated SQL queries to answer important business questions related to revenue growth, order trends, regional performance, product categories, and payment preferences.

---

## Business Objectives

The main objectives of this project are:

- Analyze monthly revenue trends
- Measure monthly order volume
- Identify highest-performing sales months
- Evaluate revenue contribution by region
- Analyze product category performance
- Understand payment method usage patterns

---

## Tools Used

- SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

---

## Dataset Description

The dataset contains online sales transaction records including:

| Column | Description |
|---|---|
| Transaction_ID | Unique transaction identifier |
| Date | Date of transaction |
| Product_Category | Category of purchased product |
| Units_Sold | Number of units sold |
| Total_Revenue | Revenue generated from transaction |
| Region | Customer region |
| Payment_Method | Method used for payment |

---
## Data Preparation

Before performing SQL analysis, the raw dataset was cleaned and prepared to ensure data quality.

Data cleaning steps included:

- Removed duplicate transaction records.
- Standardized column names.
- Converted date fields into proper datetime format.
- Removed unnecessary spaces from categorical fields.
- Standardized categorical values (product category, region, and payment method).
- Handled missing values.
- Validated revenue consistency.
- Exported the cleaned dataset for SQL Server analysis.

The final cleaned dataset was imported into SQL Server for trend analysis and business insights.

---
## SQL Analysis Performed

### 1. Monthly Revenue Trend

Calculated total revenue by year and month to understand sales growth and seasonal patterns.

---

### 2. Monthly Order Volume

Measured the number of unique transactions completed each month.

---

### 3. Top Revenue Months

Identified the top three months generating the highest revenue.

---

### 4. Revenue by Region

Compared regional sales contribution to identify high-performing markets.

---

### 5. Product Category Analysis

Analyzed which product categories generated the highest revenue and sales volume.

---

### 6. Payment Method Analysis

Evaluated customer payment preferences based on order volume and revenue contribution.

---

## Key KPIs

- Total Revenue
- Monthly Revenue
- Monthly Order Volume
- Revenue by Region
- Revenue by Product Category
- Revenue by Payment Method

---

## Project Workflow

1. Imported cleaned sales dataset into SQL Server
2. Verified data structure and record count
3. Created aggregated SQL queries
4. Analyzed sales trends and performance indicators
5. Generated outputs for reporting and visualization

---

## Example Business Insights

The analysis helps businesses understand:

- Which months generate peak revenue
- Which regions drive sales performance
- Which products contribute the most revenue
- Customer payment behavior trends
- Seasonal sales opportunities

---

## Project Files

Sales-Trend-Analysis-SQL
│
├── Sales_Trend_Analysis_SQL.sql
├── README.md
├── Dataset
└── Screenshots

---

## Author

**Lidiya Mitiku**

Data Analyst Portfolio Project

GitHub:
https://github.com/Lidiya2324

LinkedIn:
https://www.linkedin.com/in/lidiya-mitiku-10b816189/
