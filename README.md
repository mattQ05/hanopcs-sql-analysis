# HanoPCs SQL Sales Analysis

## Overview
This project analyzes real PC sales data using SQLite and SQL to evaluate profitability, pricing efficiency, and time-to-sale for a small PC reselling business.

## Dataset
- 20 PC sales from March–July 2025*  
- Sale dates were approximated due to missing timestamps  
- Metrics include price, cost, profit, and days-to-sell

## Key Questions
- How long do PCs take to sell on average?
- Does higher profit impact time-to-sale?

## Key Findings
- Average profit per PC: ~$180  
- High-margin builds (>$200) averaged $242.58 in profit  
- Average time-to-sale was ~5 days  
- Higher margins did not meaningfully increase selling time

## Tools
- SQLite
- SQL
- DB Browser for SQLite

## Pricing Optimization (Python)

After completing the SQL analysis, the SQLite database was loaded into Python using pandas to further evaluate pricing strategy. Prices were grouped into ranges to identify an optimal balance between profit and time-to-sale.

Analysis showed that PCs priced between **$600–699** achieved the highest average profit (~$213) while also selling faster than most other ranges (~4.8 days), identifying this range as the pricing sweet spot. Visualizations were created to compare profit and sales velocity across price tiers.

## Component-Level Performance Analysis (SQL JOINs)

To understand what hardware choices drive profit and sales speed, a relational `builds` table was created and joined with the `sales` table using SQL. Component attributes such as GPU tier/series, RAM size, and CPU tier were analyzed against profit and days-to-sell.

Key findings showed that **RTX 30-series GPUs** generated higher average profit and sold faster than RTX 20-series builds, while **higher-tier CPUs** correlated with both increased profit and quicker sales. Increasing RAM from 16 GB to 32 GB provided minimal profit improvement and slightly slower turnover.

*dates are from 2025, but some data displays 2024*
## Screenshots

## Screenshots

### Monthly performance summary (SQL)
![Monthly summary](screenshots/monthly_summary.png)

### Overall averages & high-profit comparison (SQL)
![Overall averages](screenshots/overall_averages.png)
![High-profit averages](screenshots/high_profit_averages.png)

### Pricing optimization (Python)
![Avg profit by price range](screenshots/avg_profit_by_price_range.png)
![Avg days to sell by price range](screenshots/avg_days_by_price_range.png)

### Component-level analysis (SQL JOINs)
![RAM vs profit and days](screenshots/ram_vs_profit_days.png)
![GPU series performance](screenshots/gpu_series_performance.png)
![CPU tier performance](screenshots/cpu_tier_performance.png)
