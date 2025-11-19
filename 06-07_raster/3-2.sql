-- Przykład 2 - ST_DumpAsPolygons
-- ST_DumpAsPolygons konwertuje rastry w wektory (poligony).
CREATE TABLE natalia_klinik.dumppolygons AS
SELECT a.rid,(ST_DumpAsPolygons(ST_Clip(a.rast,b.geom))).geom,(ST_DumpAsPolygons(ST_Clip(a.rast,b.geom))).val
FROM rasters.landsat8 AS a, vectors.porto_parishes AS b
WHERE b.parish ilike 'paranhos' and ST_Intersects(b.geom,a.rast);

-- Obie funkcje zwracają zestaw wartości geomval, po więcej informacji 
-- dotyczących typu geomval sprawdź: https://postgis.net/docs/geomval.html