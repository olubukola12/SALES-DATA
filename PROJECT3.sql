CREATE DATABASE CUSTOMERDATA 

SELECT * FROM[dbo].[Customer Data2]


QUESTION1

SELECT 
    region, 
    COUNT(DISTINCT CustomerID) AS total_customers
FROM 
    [dbo].[Customer Data2]
GROUP BY 
    Region;

QUESTION2

SELECT 
    SubscriptionType, 
    COUNT(CustomerID) AS customer_count
FROM 
    [dbo].[Customer Data2]
GROUP BY 
    SubscriptionType
ORDER BY 
    customer_count DESC;

QUESTION3

SELECT 
    CustomerID, 
    CustomerName, 
    SubscriptionType, 
    SubscriptionStart, 
    SubscriptionEnd
FROM 
    [dbo].[Customer Data2]
WHERE 
    Canceled = 'True' 
    AND DATEDIFF(month, SubscriptionStart, SubscriptionEnd) <= 6;

QUESTION4
SELECT 
    AVG(DATEDIFF(day, SubscriptionStart, SubscriptionEnd)) / 30.0 AS AvgSubscriptionduration
FROM 
[dbo].[Customer Data2]

QUESTION5
SELECT 
    CustomerID, 
    CustomerName, 
    SubscriptionType, 
    SubscriptionStart, 
    SubscriptionEnd
FROM 
   [dbo].[Customer Data2]
WHERE 
    DATEDIFF(month, SubscriptionStart, SubscriptionEnd) > 12;

QUESTION6
SELECT 
    SubscriptionType, 
    SUM(Revenue) AS total_revenue
FROM 
    [dbo].[Customer Data2]
GROUP BY 
    SubscriptionType;


QUESTION7
SELECT 
    Region, 
    COUNT(CustomerID) AS cancellation_count
FROM 
    [dbo].[Customer Data2]
WHERE 
    Canceled = 'True'
GROUP BY 
    Region
ORDER BY 
    cancellation_count DESC

QUESTION8
SELECT 
    Canceled, 
    COUNT(CustomerID) AS total_subscriptions
FROM 
   [dbo].[Customer Data2]
GROUP BY 
    Canceled;
