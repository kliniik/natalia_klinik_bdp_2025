-- Przykład 2 – Funkcja zwrotna

-- W pierwszym kroku należy utworzyć funkcję, które będzie wywołana później:
create or replace function natalia_klinik.ndvi(
value double precision [] [] [],
pos integer [][],
VARIADIC userargs text []
)
RETURNS double precision AS
$$
BEGIN
--RAISE NOTICE 'Pixel Value: %', value [1][1][1];-->For debug purposes
RETURN (value [2][1][1] - value [1][1][1])/(value [2][1][1]+value [1][1][1]); --> NDVI calculation!
END;
$$
LANGUAGE 'plpgsql' IMMUTABLE COST 1000;

-- W kwerendzie algebry map należy można wywołać zdefiniowaną wcześniej funkcję:

CREATE TABLE natalia_klinik.porto_ndvi2 AS
WITH r AS (
SELECT a.rid,ST_Clip(a.rast, b.geom,true) AS rast
FROM rasters.landsat8 AS a, vectors.porto_parishes AS b
WHERE b.municipality ilike 'porto' and ST_Intersects(b.geom,a.rast)
)
SELECT
r.rid,ST_MapAlgebra(
r.rast, ARRAY[1,4],
'natalia_klinik.ndvi(double precision[], integer[],text[])'::regprocedure, --> This is the function!
'32BF'::text
) AS rast
FROM r;



-- Dodanie indeksu przestrzennego:
CREATE INDEX idx_porto_ndvi2_rast_gist ON natalia_klinik.porto_ndvi2
USING gist (ST_ConvexHull(rast));

-- Dodanie constraintów:
SELECT AddRasterConstraints('natalia_klinik'::name, 'porto_ndvi2'::name,'rast'::name);