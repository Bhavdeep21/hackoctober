// The flow of the query to print 1 to 50 using SQL is as follows:

// Create a CTE called n. This CTE will contain the numbers 1, 2, 3, ..., 49, and 50.
// The CTE is created using a recursive union. This means that the CTE starts with the number 1 and then repeatedly adds 1 to //itself until it reaches the number 50.
// The WHERE clause in the CTE ensures that the CTE only contains the numbers 1 to 50.
// The query then selects the num column from the CTE and returns it as the result of the query.
WITH n AS (
  SELECT 1 AS num
  UNION ALL
  SELECT num + 1 AS num
  FROM n
  WHERE num < 50
)
SELECT num
FROM n;