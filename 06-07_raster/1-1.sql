-- 1. Tworzenie rastrów z istniejących rastrów i interakcja z wektorami

-- Przykład 1 - ST_Intersects
-- Przecięcie rastra z wektorem.
CREATE TABLE natalia_klinik.intersects AS
SELECT a.rast, b.municipality
FROM rasters.dem AS a, vectors.porto_parishes AS b
WHERE ST_Intersects(a.rast, b.geom) AND b.municipality ilike 'porto';

-- kroki dla tabel zawierających dane rastrowe

-- 1. dodanie serial primary key
alter table natalia_klinik.intersects
add column rid SERIAL PRIMARY KEY;

-- 2. utworzenie indeksu przestrzennego
CREATE INDEX idx_intersects_rast_gist ON natalia_klinik.intersects
USING gist (ST_ConvexHull(rast));

-- 3. dodanie raster constraints
-- schema::name table_name::name raster_column::name
SELECT AddRasterConstraints('natalia_klinik'::name, 'intersects'::name,'rast'::name);