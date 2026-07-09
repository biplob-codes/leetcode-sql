SELECT sub.name AS Customers
FROM (
    SELECT c.name , o.id AS orderId
    FROM Customers c
    LEFT JOIN Orders o ON c.id=o.customerId
    ) sub
WHERE sub.orderId IS NULL