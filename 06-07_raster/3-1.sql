-- 3. Konwertowanie rastrów na wektory (wektoryzowanie)

-- Poniższe przykłady użycia funkcji ST_Intersection i ST_DumpAsPolygons 
-- pokazują konwersję rasterów na wektory. PostGIS posiada więcej funkcji 
-- posiadających podobną funkcjonalność, aby dowiedzieć się więcej odwiedź 
-- https://postgis.net/docs/RT_reference.html#Raster_Processing_Geometry

-- Przykład 1 - ST_Intersection
create table natalia_klinik.intersection as
SELECT a.rid,(ST_Intersection(b.geom,a.rast)).geom,(ST_Intersection(b.geom,a.rast)).val
FROM rasters.landsat8 AS a, vectors.porto_parishes AS b
WHERE b.parish ilike 'paranhos' and ST_Intersects(b.geom,a.rast);