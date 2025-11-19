-- 4. Analiza rastrów

-- Przykład 1 - ST_Band
-- Funkcja ST_Band służy do wyodrębniania pasm z rastra

CREATE TABLE natalia_klinik.landsat_nir AS
SELECT rid, ST_Band(rast,4) AS rast
FROM rasters.landsat8;