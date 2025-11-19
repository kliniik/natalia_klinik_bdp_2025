-- Przykład 2 - ST_AsGDALRaster
-- Podobnie do funkcji ST_AsTiff, ST_AsGDALRaster nie zapisuje 
-- danych wyjściowych bezpośrednio na dysku, natomiast dane 
--wyjściowe są reprezentacją binarną dowolnego formatu GDAL.

SELECT ST_AsGDALRaster(ST_Union(rast), 'GTiff', ARRAY['COMPRESS=DEFLATE', 'PREDICTOR=2', 'PZLEVEL=9'])
FROM natalia_klinik.porto_ndvi;

/* Uwaga:
Funkcje ST_AsGDALRaster pozwalają nam zapisać raster w dowolnym 
formacie obsługiwanym przez gdal. Aby wyświetlić listę formatów 
obsługiwanych przez bibliotekę uruchom:
SELECT ST_GDALDrivers(); */