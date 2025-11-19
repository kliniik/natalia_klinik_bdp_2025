-- 0. Nowa baza danych + Struktura bazy danych 
--CREATE DATABASE postgis_raster;

CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS postgis_raster;

-- załadowanie pliku backup do bazy 
-- pg_restore -U postgres -p 5433 -d postgis_raster -Fc "C:\Users\48726\Desktop\STUDIA\semestr_7\bazy_danych_przestrzennych\repozytorium\06-07_raster\06_raster_data\postgis_raster.backup"

-- zmiana nazwy schematu
ALTER SCHEMA schema_name RENAME TO natalia_klinik;
