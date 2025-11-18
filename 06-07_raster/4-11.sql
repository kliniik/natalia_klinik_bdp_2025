-- Problem do samodzielnego rozwiązania:

/* Przetwarzanie poprzedniego zapytania może potrwać dłużej niż minutę, 
a niektóre zapytania mogą potrwać zbyt długo. W celu skrócenia czasu 
przetwarzania czasami można ograniczyć obszar zainteresowania 
i obliczyć mniejszy region. Dostosuj zapytanie z przykładu 10, 
aby przetwarzać tylko gminę Porto. Musisz użyć ST_Intersects, 
sprawdź Przykład 1 - ST_Intersects w celach informacyjnych. 
Porównaj różne czasy przetwarzania. Na koniec sprawdź wynik w QGIS.*/

CREATE TABLE natalia_klinik.tpi30_porto AS
SELECT ST_TPI(a.rast,1) as rast
FROM rasters.dem AS a, vectors.porto_parishes AS b
WHERE ST_Intersects(a.rast, b.geom) AND b.municipality ilike 'porto';

-- Dodanie indeksu przestrzennego:
CREATE INDEX idx_tpi30_porto_rast_gist ON natalia_klinik.tpi30_porto
USING gist (ST_ConvexHull(rast));

-- Dodanie constraintów:
SELECT AddRasterConstraints('natalia_klinik'::name, 'tpi30_porto'::name,'rast'::name);