-- Przykład 4 - ST_Reclass
-- Aby zreklasyfikować raster należy użyć funkcji ST_Reclass.

CREATE TABLE natalia_klinik.paranhos_slope_reclass AS
SELECT a.rid,ST_Reclass(a.rast,1,']0-15]:1, (15-30]:2, (30-9999:3', '32BF',0)
FROM natalia_klinik.paranhos_slope AS a;