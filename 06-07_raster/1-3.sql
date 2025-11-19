-- Przykład 3 - ST_Union
-- Połączenie wielu kafelków w jeden raster.
CREATE TABLE natalia_klinik.union AS
SELECT ST_Union(ST_Clip(a.rast, b.geom, true))
FROM rasters.dem AS a, vectors.porto_parishes AS b
WHERE b.municipality ilike 'porto' and ST_Intersects(b.geom,a.rast);

--Oprócz powyższego przykładu, st_union pozwala również na operacje 
-- na nakładających się rastrach opartych na danej funkcji agregującej, 
-- a mianowicie FIRST LAST SUM COUNT MEAN lub RANGE. 
-- Na przykład, jeśli mamy wiele rastrów z danymi o opadach atmosferycznych 
-- i potrzebujemy średniej wartości, możemy użyć st_union lub map_algebra. 
-- Aby uzyskać więcej informacji na temat st_union, sprawdź dokumentację:
--  https://postgis.net/docs/RT_ST_Union.html