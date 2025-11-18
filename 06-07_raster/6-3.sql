-- Przykład 3 - Zapisywanie danych na dysku za pomocą dużego obiektu (large object, lo)

CREATE TABLE IF NOT EXISTS tmp_out AS
SELECT lo_from_bytea(0,
ST_AsGDALRaster(ST_Union(rast), 'GTiff', ARRAY['COMPRESS=DEFLATE', 'PREDICTOR=2', 'PZLEVEL=9'])
) AS loid
FROM natalia_klinik.porto_ndvi;
----------------------------------------------
SELECT lo_export(loid, 'myraster.tiff') --> Save the file in a place where the user postgres have access. In windows a flash drive usualy works fine.
FROM tmp_out;
----------------------------------------------
SELECT lo_unlink(loid)
FROM tmp_out; --> Delete the large object.

-- Więcej informacji odnośnie eksportu danych rastrowych dostępna jest na stronie: 
-- https://postgis.net/docs/RT_reference.html#Raster_Outputs