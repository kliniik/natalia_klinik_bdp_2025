-- 5. Algebra map

-- Wzór na NDVI:
-- NDVI=(NIR-Red)/(NIR+Red)

-- Przykład 1 - Wyrażenie Algebry Map
CREATE TABLE IF NOT EXISTS natalia_klinik.porto_ndvi AS
WITH r AS (
SELECT a.rid,ST_Clip(a.rast, b.geom,true) AS rast
FROM rasters.landsat8 AS a, vectors.porto_parishes AS b
WHERE b.municipality ilike 'porto' and ST_Intersects(b.geom,a.rast)
)
SELECT
r.rid,ST_MapAlgebra(
r.rast, 1,
r.rast, 4,
'([rast2.val] - [rast1.val]) / ([rast2.val] + [rast1.val])::float','32BF'
) AS rast
FROM r;

-- Poniższe zapytanie utworzy indeks przestrzenny na wcześniej stworzonej tabeli:
CREATE INDEX idx_porto_ndvi_rast_gist ON natalia_klinik.porto_ndvi
USING gist (ST_ConvexHull(rast));

-- Dodanie constraintów:
SELECT AddRasterConstraints('natalia_klinik'::name, 'porto_ndvi'::name,'rast'::name);

/* Możliwe jest użycie algebry map na wielu rastrach i/lub wielu pasmach, 
służy do tego rastbandargset. Więcej informacji jest dostępnych w dokumentacji: 
https://postgis.net/docs/RT_ST_MapAlgebra.html */