-- 1. View All Data
SELECT * FROM sales LIMIT 10;

-- 2. Total Revenue
SELECT SUM(revenue) AS total_revenue
FROM sales;

-- 3. Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM sales;

-- 4. Average Order Value (AOV)
SELECT AVG(revenue) AS average_order_value
FROM sales;

-- 5. Revenue by Region
SELECT region,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- 6. Revenue by Product
SELECT product,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

-- 7. Monthly Revenue Trend
SELECT DATE_TRUNC('month', order_date) AS MONTH,
    SUM(revenue) AS monthly_revenue
FROM sales
GROUP BY MONTH
ORDER BY MONTH;

-- 8. Top 5 Products by Revenue
SELECT product,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;

-- 9. Orders by Region
SELECT region,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY region
ORDER BY total_orders DESC;

-- 10. Revenue by Month and Region
SELECT DATE_TRUNC('month', order_date) AS MONTH,
    region,
    SUM(revenue) AS revenue
FROM sales
GROUP BY MONTH, region
ORDER BY MONTH, revenue DESC;

-- 11. Customer Purchase Frequency
SELECT customer_id,
    COUNT(order_id) AS total_orders
FROM sales
GROUP BY customer_id
ORDER BY total_orders DESC;

-- 12. Top 10 Customers by Revenue
SELECT customer_id,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 10;

-- 13. Daily Revenue
SELECT order_date,
    SUM(revenue) AS daily_revenue
FROM sales
GROUP BY order_date
ORDER BY order_date;

-- 14. Revenue Growth by Month
SELECT MONTH,
    monthly_revenue,
    LAG(monthly_revenue) OVER (ORDER BY MONTH) AS previous_month_revenue,
    monthly_revenue - LAG(monthly_revenue) OVER (ORDER BY MONTH) AS revenue_change
FROM (
        SELECT DATE_TRUNC('month', order_date) AS MONTH,
            SUM(revenue) AS monthly_revenue
        FROM sales
        GROUP BY MONTH
    ) t
ORDER BY MONTH;

-- 15. Revenue per Order
SELECT order_id,
    SUM(revenue) AS order_revenue
FROM sales
GROUP BY order_id
ORDER BY order_revenue DESC;
