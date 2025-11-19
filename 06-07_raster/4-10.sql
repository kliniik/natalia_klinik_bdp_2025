-- Topographic Position Index (TPI)

/* TPI porównuje wysokość każdej komórki w DEM ze średnią wysokością określonego 
sąsiedztwa wokół tej komórki. Wartości dodatnie reprezentują lokalizacje, 
które są wyższe niż średnia ich otoczenia, zgodnie z definicją sąsiedztwa (grzbietów). 
Wartości ujemne reprezentują lokalizacje, które są niższe niż ich otoczenie (doliny). 
Wartości TPI bliskie zeru to albo płaskie obszary (gdzie nachylenie jest bliskie zeru), albo obszary o stałym nachyleniu. 
Więcej informacji na temat TPI można znaleźć tutaj: www.jennessent.com/downloads/tpi-poster-tnc_18x22.pdf*/

-- Przykład 10 - ST_TPI

/*Funkcja ST_Value pozwala na utworzenie mapy TPI z DEM wysokości. 
Obecna wersja PostGIS może obliczyć TPI jednego piksela za pomocą 
sąsiedztwa wokół tylko jednej komórki. Poniższy przykład pokazuje 
jak obliczyć TPI przy użyciu tabeli rasters.dem jako danych wejściowych. 
Tabela nazywa się TPI30 ponieważ ma rozdzielczość 30 metrów i TPI używa 
tylko jednej komórki sąsiedztwa do obliczeń. Tabela wyjściowa z wynikiem 
zapytania zostanie stworzona w schemacie schema_name, jest więc możliwa 
jej wizualizacja w QGIS. */

create table natalia_klinik.tpi30 as
select ST_TPI(a.rast,1) as rast
from rasters.dem a;

-- Poniższa kwerenda utworzy indeks przestrzenny:
CREATE INDEX idx_tpi30_rast_gist ON natalia_klinik.tpi30
USING gist (ST_ConvexHull(rast));

-- Dodanie constraintów:
SELECT AddRasterConstraints('natalia_klinik'::name, 'tpi30'::name,'rast'::name);