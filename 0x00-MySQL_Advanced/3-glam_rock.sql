-- lists all bands with Glam rock as their main style
-- Ranked by their longevity
SELECT band_name,
  (IFNULL(split, CURDATE()) - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;