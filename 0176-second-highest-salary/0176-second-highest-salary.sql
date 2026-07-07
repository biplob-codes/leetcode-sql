SELECT MAX(sub.salary) AS SecondHighestSalary
FROM (
    SELECT salary ,MAX(salary) OVER () - salary AS diff
    FROM Employee
) sub
WHERE  diff<>0;