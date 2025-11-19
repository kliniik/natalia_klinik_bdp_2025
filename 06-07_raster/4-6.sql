-- Przykład 6 - ST_SummaryStats oraz Union
-- Przy użyciu UNION można wygenerować jedną statystykę wybranego rastra.

SELECT st_summarystats(ST_Union(a.rast))
FROM natalia_klinik.paranhos_dem AS a;

-- ST_SummaryStats zwraca złożony typ danych. Więcej informacji na temat złożonego typu danych znajduje się w dokumentacji:
-- https://www.postgresql.org/docs/current/static/rowtypes.html