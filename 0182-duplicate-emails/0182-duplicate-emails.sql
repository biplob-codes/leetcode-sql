SELECT sub.email AS Email
FROM (
    SELECT email,COUNT(email)  AS n
    FROM Person
    GROUP BY email
) sub
WHERE sub.n >1;