-- Churn Rate
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS churn_rate_pct
FROM churn_data;

-- Segmentasi: Churn per Contract Type
SELECT Contract, 
       COUNT(*) AS total, 
       SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
       ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS churn_pct
FROM churn_data
GROUP BY Contract;
