//Finding all the paths from one node to another in a graph:

//1. Create a CTE called paths that contains the paths from node 1 to all the nodes that are directly connected to it.
//2. Recursively add the paths from the end nodes of the existing paths to the CTE by joining the paths CTE with the graph table //and selecting the end_node column.
//3. Select the paths from the paths CTE where the end node is node 2.
WITH recursive paths AS (
  SELECT start_node, end_node
  FROM graph
  WHERE start_node = 1
  UNION ALL
  SELECT paths.end_node, graph.end_node
  FROM paths
  JOIN graph ON paths.end_node = graph.start_node
  WHERE graph.end_node <> 2
)
SELECT start_node, end_node
FROM paths
WHERE end_node = 2;
