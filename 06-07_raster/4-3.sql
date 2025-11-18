-- Przykład 3 - ST_Slope
-- Poniższy przykład użycia funkcji ST_Slope wygeneruje nachylenie przy użyciu poprzednio wygenerowanej tabeli (wzniesienie).

CREATE TABLE natalia_klinik.paranhos_slope AS
SELECT a.rid,ST_Slope(a.rast,1,'32BF','PERCENTAGE') as rast
FROM natalia_klinik.paranhos_dem AS a;