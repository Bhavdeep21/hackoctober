//The flow of the recursive query to output a list of all the nodes in a tree, in hierarchical order, is as follows:

//1. Create a CTE called tree that contains all the nodes in the tree that have no parent node (i.e., the root nodes).
//2. Recursively add the children of the existing nodes to the tree CTE by joining the tree CTE with the tree table and selecting the id and parent_id columns.
//3. Select the id and parent_id columns from the tree CTE.

WITH recursive tree AS (
  SELECT id, parent_id
  FROM tree
  WHERE parent_id IS NULL
  UNION ALL
  SELECT t.id, t.parent_id
  FROM tree t
  JOIN tree ON tree.id = t.parent_id
)
SELECT id, parent_id
FROM tree;
