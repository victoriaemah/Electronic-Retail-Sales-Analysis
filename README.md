# Electronic-Retail-Sales-Analysis
## Table of Content
 - [Project Overview](#project-overview)
 - [Business Introduction/Problem](#business-introduction)
 - [Aim of the Project](#aim-of-the-project)
 - [Tools](#tools)
 - [Project Workflow](#project-workflow)
 - [Insights and Recommendations](#insights-and-recommendations)

### Project Overview
This project examines retail customer shopping behaviour by analyzing transactional data from an electronics company to understand customer purchasing behaviour, product performance, brand profitability, and overall business performance.

The project uses SQL for data analysis and Power BI to develop an interactive dashboard that provides actionable insights to support strategic business decision-making.

<img width="767" height="433" alt="Screenshot 2026-10-24 124158" src="https://github.com/user-attachments/assets/70ce1496-ab5c-4adc-8f0c-09bcde141483" />

### Business Introduction
An electronics retail company sells a variety of electronic products and accessories across multiple regions. The company works with well-known brands such as Dell, Asus, HP, Samsung, Lenovo, and Apple. 

Despite generating substantial electronics sales, management lacks an integrated system to identify which customers, products, brands, and regions drive the most revenue and profit. This project analyzes business performance using sales, customer, and product data, from data cleaning to creating an interactive dashboard. The goal is to optimize customer behaviour and retention while solidifying the key drivers of revenue and profit.

### Aim of the Project
The primary objectives of this project are as follows:
- Evaluate overall sales performance and profitability.
- Identify top-performing brands and product categories.
- Analyze customer purchasing behaviour across income segments.
- Interactive sales analysis dashboard.
- Provide data-driven recommendations to support business decisions.

### Tools
- Microsoft Excel: Initial data inspection and validation.
- Power Query: Data cleaning and transformation.
- SQL Server: Data analysis and business queries.
- Power BI: Data modelling, DAX measures, and dashboard development.

### Project Workflow
Step 1: Data Cleaning and Transformation
- Checked for missing values and duplicate records.
- Standardized inconsistent text values in the Region and Gender columns.
- Corrected product category misclassifications(i.e, Electronics and Accessories).
- Converted sales and customer signup dates into appropriate date formats.

Step 2: Data Validation
- Compared raw and cleaned dataset record counts.
- Checked for missing and duplicate IDs.
- Verified that cleaning transformations were applied consistently.
- Validated relationships between Sales, Customers, and Products.

Step 3: Data Analysis Using SQL

Developed SQL queries to answer key business questions, including:
- What is the overall revenue, profit, and profit margin?
- Which brands contribute the most to total profit?
- Which regions generate the highest revenue?
- Which customer income segment generates the most profit, etc

Step 4: Data Modelling and DAX
- Imported the cleaned datasets into Power BI.
- Established relationships between the Sales, Customers, and Products tables.
- Created DAX measures for key performance indicators, including total revenue, total profit, total customers, etc.
- Prepared calculated measures for dashboard analysis.

Step 5: Dashboard Development and Visualization
- Designed an interactive sales performance dashboard.
- Created KPI cards to monitor key business metrics.
- Used bar charts, column charts, line charts, donut charts, and matrices to visualize performance.
- Added slicers and interactive filters for deeper exploration.

### Insights and Recommendations
Insights
1. The business generated over ₦3.1 million in revenue.
2. The business generated approximately ₦931,900 in profit, with Apple contributing the highest share at about 21.13% of the total profit.
3. A total of 5,200 sales transactions were recorded, with white products being the most frequently sold at 2,100 sales, while black products had the lowest sales volume.
4. Customers with medium incomes generated the highest profits, making them the most profitable segment.
5. Customer sign-up records occur on dates in May 2020, June 2021, and July 2022. Since these dates span different years, the available data does not establish a continuous monthly increase or decline in customer acquisition.

Recommendations
1. Prioritize profitable brands - Management should evaluate Apple's sales consistency, stock availability, and product-level margins before increasing inventory commitments.
2. Develop targeted offers for medium-income customers - Analyze this segment's preferred brands, product categories, and average transaction value to create relevant promotions and encourage repeat purchases.
3. Expand market based on regional performance - Focus marketing and operations efforts in the North and investigate what drives its performance.
4. Improve inventory planning using colour and product demand - Avoid discontinuing slower-selling products until their margins and customer demand have been evaluated.
5. Improve customer acquisition tracking - Collect consistent monthly customer sign-up data.

### Note
Check the files section for datasets, SQL queries, project documentation, and the dashboard.
