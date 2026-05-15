DROP TABLE OrderTable_TASK3;
CREATE TABLE OrderTable_TASK3(
ORDER_ID TEXT,
ORDER_DATE DATE,
CUSTOMER_ID TEXT,
PRODUCT TEXT,
SALES NUMERIC(10,2),
QUANTITY INT,
PROFIT NUMERIC(10,2),
DISCOUNT NUMERIC(10,2)
);

COPY OrderTable_TASK3(ORDER_ID, ORDER_DATE, CUSTOMER_ID, PRODUCT, SALES, QUANTITY, PROFIT, DISCOUNT)
FROM 'C:\Maincraft Internship (April 14 to May)\Task 3 Abhradeep\OrdersTable_Task3_Abhradeep.csv' 
DELIMITER ',' 
CSV HEADER 
QUOTE '"' 
ESCAPE '"';

SELECT * FROM OrderTable_TASK3;

DROP TABLE CustomerTable_TASK3;
CREATE TABLE CustomerTable_TASK3(
CUSTOMER_ID TEXT,
CUSTOMER_NAME VARCHAR(100),
REGION VARCHAR(50),
CITY VARCHAR(50),
STATE VARCHAR(50)
);

COPY CustomerTable_TASK3(CUSTOMER_ID, CUSTOMER_NAME, REGION, CITY, STATE)
FROM 'C:\Maincraft Internship (April 14 to May)\Task 3 Abhradeep\CustomersTable_Task3_Abhradeep.csv'
DELIMITER ','
CSV HEADER
QUOTE '"'
ESCAPE '"';

SELECT * FROM CustomerTable_TASK3;


-- 1. MONTHLY PERFORMANCE ANALYSIS
SELECT
    DATE_TRUNC('month', order_date)::date AS month,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM OrderTable_TASK3
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;

-- 2. GROWTH RATE CALCULATION
WITH monthly_summary AS (
    SELECT
        DATE_TRUNC('month', order_date)::date AS month,
        SUM(sales) AS total_sales,
        SUM(profit) AS total_profit
    FROM OrderTable_TASK3
    GROUP BY DATE_TRUNC('month', order_date)
)

SELECT
    month,
    total_sales,
    total_profit,
    total_sales - LAG(total_sales) OVER (ORDER BY month) AS sales_variance,
    ROUND(
        ((total_sales - LAG(total_sales) OVER (ORDER BY month))
        / LAG(total_sales) OVER (ORDER BY month)) * 100,
        2
    ) AS sales_growth_pct
FROM monthly_summary
ORDER BY month;

-- 3. USING CASE FROM BUSINESS CLASSIFICATION
SELECT
    PRODUCT,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit) / NULLIF(SUM(sales), 0)) * 100, 2) AS profit_margin,
    CASE
        WHEN SUM(profit) > 5000 THEN 'High Profit'
        WHEN SUM(profit) BETWEEN 1000 AND 5000 THEN 'Medium Profit'
        ELSE 'Low Profit'
    END AS performance_status
FROM OrderTable_TASK3
GROUP BY PRODUCT
HAVING SUM(sales) > 0
ORDER BY total_profit DESC;

-- 4. IDENTIFY UNDERPERFORMING REGIONS
SELECT
    product,
    sales,
    profit
FROM OrderTable_TASK3
WHERE sales > (
    SELECT AVG(sales)
    FROM OrderTable_TASK3
)
ORDER BY sales DESC;