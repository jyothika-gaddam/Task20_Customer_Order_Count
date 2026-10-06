-- Task 20: Customer Order Count
-- Count unique orders per customer.
-- This avoids counting duplicate order-line records as separate orders.

SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Order_Count
FROM superstore
WHERE Customer_ID IS NOT NULL
  AND Order_ID IS NOT NULL
GROUP BY Customer_ID, Customer_Name
ORDER BY Order_Count DESC, Customer_ID;

-- Top 10 frequent buyers:
SELECT
    Customer_ID,
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Order_Count
FROM superstore
WHERE Customer_ID IS NOT NULL
  AND Order_ID IS NOT NULL
GROUP BY Customer_ID, Customer_Name
ORDER BY Order_Count DESC, Customer_ID
LIMIT 10;
