# Customer Churn Analysis

## Project Overview

This project analyzes customer subscription behavior to identify churn patterns, risk factors, and retention opportunities. Using SQL and Tableau, the analysis simulates real-world customer lifecycle monitoring and supports data-driven decision-making for customer retention strategies.

The dataset represents a subscription-based business environment and includes realistic variability in customer usage, support interactions, contract types, and churn behavior. The analysis focuses on measuring churn performance, identifying high-risk customers, and monitoring trends over time.

This project demonstrates practical data analytics skills commonly used in customer success, operations, and business intelligence roles.

---

## Business Problem

Customer churn directly impacts revenue, customer lifetime value, and operational planning. Organizations need to understand:

- Which customers are most likely to churn  
- What behaviors indicate churn risk  
- How churn trends change over time  
- Where retention efforts should be focused  

This project answers those questions using structured data analysis and dashboard visualization.

---

## Objectives

The primary objectives of this analysis are to:

- Measure overall churn performance  
- Identify drivers of customer churn  
- Segment customers by risk level  
- Monitor churn trends over time  
- Support data-driven retention strategies  

---

## Dataset Description

The dataset simulates a subscription-based customer environment with realistic behavioral patterns and business variability.

### Dataset Characteristics

- 10,000 customer records  
- Multi-year subscription activity  
- Realistic churn probabilities  
- Correlated customer behavior patterns  
- Non-uniform distributions for analysis clarity  

### Key Design Features

Unlike purely random datasets, this dataset includes behavior-driven relationships to generate meaningful insights:

- Customers with low usage are more likely to churn  
- Customers with high support ticket volume have increased churn risk  
- Month-to-month contracts have higher churn probability  
- Longer tenure customers are more likely to retain  

This creates stronger analytical signals and more realistic business scenarios.

---

## Data Fields

| Column | Description |
|-------|-------------|
| customer_id | Unique customer identifier |
| contract_type | Subscription contract type |
| payment_method | Customer payment method |
| usage_frequency | Customer engagement level |
| tenure_months | Length of customer relationship |
| monthly_fee | Monthly subscription cost |
| support_tickets | Number of customer support interactions |
| subscription_start_date | Subscription start date |
| subscription_end_date | Subscription end date |
| churned | Customer churn status |

---

## Tools and Technologies

- SQL  
- Tableau  
- Excel / CSV  
- Data Modeling  
- Data Visualization  
- Business Analytics  

---

## Key Metrics (KPIs)

The dashboard tracks core customer retention and performance indicators.

- Total Customers  
- Churned Customers  
- Churn Rate  
- Average Customer Tenure  
- Customer Lifetime Value  
- Support Ticket Volume  
- Monthly Churn Trend  

These metrics reflect standard retention and customer lifecycle monitoring used in production business environments.

---

## Analysis Performed

The analysis includes structured SQL queries and business logic to evaluate churn behavior and customer risk.

### Customer Segmentation

Customers were segmented by:

- Contract Type  
- Payment Method  
- Usage Frequency  
- Tenure Group  
- Support Ticket Volume  

### Risk Identification

High-risk customers were identified using indicators such as:

- High support ticket counts  
- Low usage frequency  
- Short tenure  
- Month-to-month contracts  

### Trend Analysis

Churn behavior was tracked over time to identify performance patterns and seasonal trends.

---

## Dashboard Overview

The Tableau dashboard provides a consolidated view of customer retention performance and churn risk indicators.

### Dashboard Sections

**Top-Level KPIs**

- Total Customers  
- Churned Customers  
- Churn Rate  
- Average Tenure  

**Customer Segmentation**

- Churn by Contract Type  
- Churn by Payment Method  
- Churn by Tenure Group  
- Churn by Usage Frequency  

**Trend Monitoring**

- Monthly Churn Trend  

**Operational Insights**

- High-Risk Customers Table  

---

## Example Business Insights

This analysis can generate insights such as:

- Month-to-month customers have the highest churn rates  
- Customers with high support ticket volume are more likely to churn  
- Low usage customers represent a major retention risk  
- Early-tenure customers are more likely to leave  
- Churn trends can be monitored monthly to detect performance changes  

These are realistic insights commonly produced by customer success and business intelligence teams.

---

## Repository Structure

customer-churn-analysis/

data/
customer_churn_data.csv

sql/
customer_churn_analysis.sql

dashboard/
customer_churn_dashboard.pbix

images/
dashboard_overview.png
churn_by_contract.png
churn_by_tenure.png
monthly_churn_trend.png

README.md


---

## How to Use This Project

1. Download the dataset  
2. Import the dataset into your SQL environment  
3. Run the SQL queries  
4. Load the dataset into Tableau  
5. Build the dashboard visuals  
6. Analyze customer churn behavior  

---

## Skills Demonstrated

This project demonstrates practical analytics capabilities relevant to data analyst roles.

### Technical Skills

- SQL querying  
- Aggregations and calculations  
- Data segmentation  
- KPI development  
- Data modeling  
- Dashboard design  
- Business intelligence reporting  

### Analytical Skills

- Customer retention analysis  
- Risk identification  
- Performance monitoring  
- Trend analysis  
- Business insight generation  

### Business Skills

- Translating data into actionable insights  
- Supporting operational decision-making  
- Identifying performance drivers  
- Communicating results through dashboards  

---

## Future Enhancements

Potential improvements for extended analysis:

- Improve the Year parameter to support more precise trend analysis and operational monitoring
- Predictive churn modeling  
- Customer lifetime value forecasting  
- Retention intervention analysis  
- Cohort analysis  
- Customer segmentation modeling  

These enhancements mirror real-world analytics roadmap development.
