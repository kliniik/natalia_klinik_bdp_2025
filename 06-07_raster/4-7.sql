-- Przykład 7 - ST_SummaryStats z lepszą kontrolą złożonego typu danych

WITH t AS (
SELECT st_summarystats(ST_Union(a.rast)) AS stats
FROM natalia_klinik.paranhos_dem AS a
)
SELECT (stats).min,(stats).max,(stats).mean FROM t;