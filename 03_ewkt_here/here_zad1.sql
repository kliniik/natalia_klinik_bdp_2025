-- Zaimportuj następujące pliki shapefile do bazy:
    -- - T2018_KAR_BUILDINGS
    -- - T2019_KAR_BUILDINGS
--- Pliki te przedstawiają zabudowę miasta Karlsruhe w latach 2018 i 2019.

--Znajdź budynki, które zostały wybudowane 
-- lub wyremontowane na przestrzeni roku (zmiana pomiędzy 2018 a 2019).

SELECT * FROM t2019_kar_buildings b19
LEFT JOIN t2018_kar_buildings b18
ON b19.geom = b18.geom
WHERE b18.geom IS NULL;
