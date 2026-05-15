# Advanced Retail Sales Analytics & Business Intelligence Dashboard

## 📌 Project Overview

This project was developed as part of a Data Analytics & Business Intelligence Internship. The objective of the project was to analyze retail sales data, perform advanced SQL analysis, calculate business KPIs, and build an interactive executive-level dashboard using Excel, PostgreSQL, and Power BI.

The project focuses on transforming raw retail data into meaningful business insights through data analysis, KPI modeling, variance analysis, and dashboard visualization.

---

# 🛠 Tools & Technologies Used

* Microsoft Excel
* PostgreSQL (pgAdmin)
* SQL
* Power BI
* DAX
* Data Visualization Techniques

---

# 📂 Dataset Information

The dataset is based on a Superstore-style retail sales database containing:

* Orders
* Customers
* Products
* Sales
* Profit
* Discounts
* Quantity
* Regions
* Categories
* Customer Segments

---

# ✅ Project Workflow

## 1️⃣ Data Cleaning & Preparation

Performed data cleaning and preprocessing using Excel:

* Removed duplicates
* Handled missing values
* Corrected formatting inconsistencies
* Prepared clean CSV dataset for SQL analysis

---

## 2️⃣ Advanced SQL Analysis (PostgreSQL)

### SQL Concepts Used

* SELECT Statements
* WHERE Clause
* GROUP BY
* ORDER BY
* HAVING
* CASE Statements
* Aggregate Functions
* Subqueries
* DATE_TRUNC()
* LAG()
* Time-based Analysis

### SQL Analysis Performed

* Monthly Performance Analysis
* Month-over-Month Growth Analysis
* Variance Analysis
* Product Performance Analysis
* Category Profitability Analysis
* Customer Segment Analysis
* Regional Sales Analysis

---

# 📊 Excel Analysis

Used Pivot Tables and KPI calculations to perform:

* Monthly Sales Summary
* Variance Calculation
* Growth % Analysis
* Performance Comparison Tables
* Revenue Contribution Analysis
* Profit Margin Analysis

---

# 📈 Power BI Dashboard

Created an interactive executive-level dashboard to visualize business performance.

## KPI Cards

* Total Sales
* Total Profit
* Profit Margin
* Growth %
* Total Customers

## Dashboard Visualizations

* Monthly Sales Trend
* Region vs Sales
* Category Profit Analysis
* Segment Revenue Contribution
* Top Customers Table
* Product Profitability Analysis

## Dashboard Features

* Interactive Slicers
* Year Filter
* Month Filter
* Region Filter
* Category Filter
* Dynamic KPI Tracking

---

# 📌 DAX Measures Used

## Total Sales

```DAX
Total Sales = SUM(task2_ot[Sales])
```

## Previous Month Sales

```DAX
Previous Month Sales =
CALCULATE(
    [Total Sales],
    PREVIOUSMONTH(task2_ot[Order_Date])
)
```

## Growth %

```DAX
Growth % =
DIVIDE(
    [Total Sales] - [Previous Month Sales],
    [Previous Month Sales],
    0
)
```

## Profit Margin

```DAX
Profit Margin =
DIVIDE(SUM(task2_ot[Profit]), SUM(task2_ot[Sales]))
```

---

# 💡 Key Business Insights

* North region generated the highest overall revenue.
* Technology products contributed the highest profitability.
* Discounts reduced overall profit margins.
* Consumer segment contributed the largest share of total revenue.
* Sales performance was stronger during the first half of the year.
* Significant growth fluctuations were observed month-over-month.

---

# 🎯 Business Objectives

The primary objectives of this project were:

* Analyze retail business performance
* Generate actionable business insights
* Build KPI-driven dashboards
* Perform advanced SQL analysis
* Improve data visualization and reporting skills

---

# 📁 Repository Contents

* Cleaned Dataset Files
* SQL Query Files
* Excel Analysis Files
* Power BI Dashboard (.pbix)
* Dashboard Screenshots
* Business Analysis Report (PDF)

---

# 🚀 Skills Demonstrated

* Data Cleaning
* SQL Query Writing
* KPI Modeling
* Variance Analysis
* Business Intelligence
* Dashboard Development
* Data Visualization
* Analytical Thinking
* Business Insight Generation

---

# ❖ Conclusion

This project demonstrates how retail sales data can be analyzed using SQL, Excel, and Power BI to generate meaningful business insights and support data-driven decision-making. The project strengthened practical knowledge in analytics, reporting, dashboard creation, and business intelligence workflows.

---

