-- 2. Tworzenie rastrów z wektorów (rastrowanie)

-- Przykład 1 - ST_AsRaster
-- rastrowanie tabeli z parafiami o takiej samej charakterystyce przestrzennej tj.: wielkość piksela, zakresy itp.
CREATE TABLE natalia_klinik.porto_parishes AS
WITH r AS (
SELECT rast FROM rasters.dem
LIMIT 1
)
SELECT ST_AsRaster(a.geom,r.rast,'8BUI',a.id,-32767) AS rast
FROM vectors.porto_parishes AS a, r
WHERE a.municipality ilike 'porto';

-- Przykładowe zapytanie używa piksela typu '8BUI' tworząc 8-bitową nieoznaczoną 
-- liczbę całkowitą (8-bit unsigned integer). Unsigned integer może reprezentować 
-- tylko nieujemne liczby całkowite; signed integer mogą również reprezentować 
-- liczby całkowite ujemne. Aby uzyskać więcej informacji o typach rastrowych PostGIS, 
-- zapoznaj się z dokumentacją: https://postgis.net/docs/RT_ST_BandPixelType.html