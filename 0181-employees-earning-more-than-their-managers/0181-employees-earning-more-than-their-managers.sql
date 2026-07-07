SELECT l.name AS Employee
FROM Employee l
LEFT JOIN Employee r ON l.managerId=r.id
WHERE l.salary > r.salary;