-- Select origin and their total number of funs
-- Rank the output in DESC order
SELECT origin, 
  SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
