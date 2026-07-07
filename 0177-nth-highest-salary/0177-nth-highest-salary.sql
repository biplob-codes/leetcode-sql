CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY (
SELECT s.salary FROM ( 
SELECT sub.salary, ROW_NUMBER() OVER(ORDER BY diff) AS rank
  FROM (
    SELECT DISTINCT e.salary,MAX(e.salary) OVER() - e.salary as diff
    FROM Employee e
    ) sub) s
WHERE N=rank    
  );
END;
$$ LANGUAGE plpgsql;