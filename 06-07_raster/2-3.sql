-- Przykład 3 - ST_Tile
-- Po uzyskaniu pojedynczego rastra można generować kafelki za pomocą funkcji ST_Tile.
DROP TABLE natalia_klinik.porto_parishes; --> drop table porto_parishes first
CREATE TABLE natalia_klinik.porto_parishes AS
WITH r AS (
SELECT rast FROM rasters.dem
LIMIT 1 )
SELECT st_tile(st_union(ST_AsRaster(a.geom,r.rast,'8BUI',a.id,-32767)),128,128,true,-32767) AS rast
FROM vectors.porto_parishes AS a, r
WHERE a.municipality ilike 'porto';