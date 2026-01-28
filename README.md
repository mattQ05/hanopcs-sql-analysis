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

*dates are from 2025, but some data displays 2024*
