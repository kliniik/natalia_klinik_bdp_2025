-- Przykład 2 - ST_Clip
-- ST_Clip może być użyty do wycięcia rastra z innego rastra. 
-- Poniższy przykład wycina jedną parafię z tabeli vectors.porto_parishes. 
-- Wynik będzie potrzebny do wykonania kolejnych przykładów.

CREATE TABLE natalia_klinik.paranhos_dem AS
SELECT a.rid,ST_Clip(a.rast, b.geom,true) as rast
FROM rasters.dem AS a, vectors.porto_parishes AS b
WHERE b.parish ilike 'paranhos' and ST_Intersects(b.geom,a.rast);