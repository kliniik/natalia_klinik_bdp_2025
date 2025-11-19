-- Przykład 5 - ST_SummaryStats
-- Aby obliczyć statystyki rastra można użyć funkcji ST_SummaryStats. Poniższy przykład wygeneruje statystyki dla kafelka.

SELECT st_summarystats(a.rast) AS stats
FROM natalia_klinik.paranhos_dem AS a;