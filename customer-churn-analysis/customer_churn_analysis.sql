-- View Sample Data
SELECT * FROM customers LIMIT 10;

-- 2. Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 3. Churned Customers
SELECT COUNT(*) AS churned_customers
FROM customers
WHERE churned = 'Yes';

-- 4. Active Customers
SELECT COUNT(*) AS active_customers
FROM customers
WHERE churned = 'No';

-- 5. Churn Rate (Key KPI)
SELECT ROUND(COUNT(CASE WHEN churned = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM customers;

-- 6. Average Customer Tenure
SELECT ROUND(AVG(tenure_months), 2) AS average_tenure_months
FROM customers;

-- 7. Average Monthly Revenue per Customer
SELECT ROUND(AVG(monthly_fee), 2) AS average_monthly_fee
FROM customers;

-- 8. Churn by Contract Type
SELECT contract_type,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM customers
GROUP BY contract_type
ORDER BY churn_rate_percentage DESC;

-- 9. Churn by Payment Method
SELECT payment_method,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM customers
GROUP BY payment_method
ORDER BY churn_rate_percentage DESC;

-- 10. Churn by Usage Frequency
SELECT usage_frequency,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM customers
GROUP BY usage_frequency
ORDER BY churn_rate_percentage DESC;

-- 11. Churn by Tenure Group
SELECT CASE
        WHEN tenure_months <= 6 THEN '0-6 Months'
        WHEN tenure_months <= 12 THEN '6-12 Months'
        WHEN tenure_months <= 24 THEN '12-24 Months'
        ELSE '24+ Months'
    END AS tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN churned = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM customers
GROUP BY tenure_group
ORDER BY churn_rate_percentage DESC;

-- 12. Customers with High Support Tickets (Risk Indicator)
SELECT customer_id,
    support_tickets,
    churned
FROM customers
WHERE support_tickets >= 5
ORDER BY support_tickets DESC;

-- 13. Average Support Tickets by Churn Status
SELECT churned,
    ROUND(AVG(support_tickets), 2) AS avg_support_tickets
FROM customers
GROUP BY churned;

-- 14. Monthly Churn Trend
SELECT DATE_TRUNC('month', subscription_end_date) AS churn_month,
    COUNT(*) AS churned_customers
FROM customers
WHERE churned = 'Yes'
    AND subscription_end_date IS NOT NULL
GROUP BY churn_month
ORDER BY churn_month;

-- 15. Customer Lifetime Value (Simple Estimate)
SELECT customer_id,
    tenure_months,
    monthly_fee,
    tenure_months * monthly_fee AS estimated_lifetime_value
FROM customers
ORDER BY estimated_lifetime_value DESC;
