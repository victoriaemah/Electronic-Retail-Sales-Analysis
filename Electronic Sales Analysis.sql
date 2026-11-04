--Ques. 1 Which brands generate the most profit?
SELECT
    p.Brand,
    SUM(s.Quantity * (s.SalesAmount - s.[Unit_Cost])) AS Total_Profit,
    ROUND(
        SUM(s.Quantity * (s.SalesAmount - s.[Unit_Cost])) * 100.0
        / (SELECT SUM(Quantity * (SalesAmount - [Unit_Cost]))
           FROM Sales),
        2
    ) AS Profit_Contribution_Percentage
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY p.Brand
ORDER BY Total_Profit DESC

--Ques. 2 Which product colours contributed most most to sales volume?
SELECT
    p.Color,
    COUNT(s.SaleID) AS Total_Transactions
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY p.Color
ORDER BY Total_Transactions DESC

--Ques. 3 Which product categories perform best?
SELECT
    p.Category,
    COUNT(s.SaleID) AS Total_Transactions,
    SUM(s.Quantity) AS Total_Units_Sold
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY Total_Units_Sold DESC

--Ques. 4 Which regions contribute the most to revenue?
SELECT
    c.Region,
    SUM(s.Quantity * s.SalesAmount) AS Total_Revenue
FROM Sales s
JOIN Customer c
    ON s.CustomerID = c.CustomerID
GROUP BY c.Region
ORDER BY Total_Revenue DESC

--Ques. 6 Which income level generates the most profit?
SELECT
    c.IncomeLevel,
    SUM(s.Quantity * (s.SalesAmount - s.[Unit_Cost])) AS Total_Profit
FROM Sales s
JOIN Customer c
    ON s.CustomerID = c.CustomerID
GROUP BY c.IncomeLevel
ORDER BY Total_Profit DESC

--Ques. 7 Which products are driving our growth based on our previous month's revenue?
WITH MonthlyRevenue AS (
    SELECT
        p.ProductName,
        YEAR(s.SaleDate) AS Sales_Year,
        MONTH(s.SaleDate) AS Sales_Month,
        SUM(s.Quantity * s.SalesAmount) AS Total_Revenue
    FROM Sales s
    JOIN Products p
        ON s.ProductID = p.ProductID
    GROUP BY
        p.ProductName,
        YEAR(s.SaleDate),
        MONTH(s.SaleDate)
),
RevenueChange AS (
    SELECT
        ProductName,
        Sales_Year,
        Sales_Month,
        Total_Revenue,
        Total_Revenue - LAG(Total_Revenue) OVER (
            PARTITION BY ProductName
            ORDER BY Sales_Year, Sales_Month
        ) AS MoM_Revenue_Change
    FROM MonthlyRevenue
)
SELECT TOP 5
    ProductName,
    Sales_Year,
    Sales_Month,
    Total_Revenue,
    MoM_Revenue_Change
FROM RevenueChange
WHERE MoM_Revenue_Change IS NOT NULL
ORDER BY Total_Revenue DESC;