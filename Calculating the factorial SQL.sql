//Calculating the factorial of a number:

//1. Create a CTE called factorial that contains the first two factorial numbers: 1 and 1.
//2. Recursively add the next factorial number to the CTE by multiplying the previous factorial number by the next integer.
//3. Select the factorial numbers from the CTE and order them by the n column.
WITH recursive factorial AS (
  SELECT 1 AS n, 1 AS fact
  UNION ALL
  SELECT n + 1, fact * n
  FROM factorial
  WHERE n < 10
)
SELECT fact
FROM factorial
ORDER BY n;