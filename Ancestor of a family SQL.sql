//Finding all the ancestors of a person in a family tree:

//1. Create a CTE called ancestors that contains the parent ID of the person with the child ID of 1.
//2. Recursively add the parent IDs of the ancestors to the CTE by joining the ancestors CTE with the family_tree table and //selecting the parent_id column.
//3. Select the parent IDs from the ancestors CTE.
WITH recursive ancestors AS (
  SELECT parent_id
  FROM family_tree
  WHERE child_id = 1
  UNION ALL
  SELECT ancestors.child_id
  FROM ancestors
  JOIN family_tree ON ancestors.parent_id = family_tree.parent_id
)
SELECT parent_id
FROM ancestors;
