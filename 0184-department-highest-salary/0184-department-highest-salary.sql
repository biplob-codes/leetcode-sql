SELECT sub.dept_name AS Department, sub.emp_name AS Employee,sub.salary AS Salary
FROM (
  SELECT d.name AS dept_name,
  e.name  AS emp_name,
  e.salary AS salary,
  MAX(e.salary) OVER(PARTITION BY d.id) AS max_salary
  FROM Employee e
  JOIN Department d ON e.departmentId=d.id
) sub
WHERE sub.salary=sub.max_salary 