-- Monthly sales performance
SELECT
    strftime('%Y-%m', sale_date) AS month,
    COUNT(*) AS total_sales,
    SUM(total_price) AS revenue,
    SUM(profit) AS profit,
    ROUND(AVG(days_to_sell), 2) AS avg_days_to_sell
FROM sales
GROUP BY month
ORDER BY month;

-- Overall averages
SELECT
    ROUND(AVG(profit), 2) AS avg_profit,
    ROUND(AVG(days_to_sell), 2) AS avg_days
FROM sales;

-- High-profit builds comparison
SELECT
    ROUND(AVG(profit), 2) AS avg_profit,
    ROUND(AVG(days_to_sell), 2) AS avg_days
FROM sales
WHERE profit > 200;

