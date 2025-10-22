-- Współrzędne obiektów oraz nazwy (np. BuildingA) należy odczytać z mapki umieszczonej poniżej. 

-- Układ współrzędnych ustaw jako niezdefiniowany -> tak jest domyślnie
-- Jeśli chcemy użyć innego układu wpółrzędnych, używamy polecenia np. SELECT ST_SetSRID(geom, 4326)

-- buildings
INSERT INTO buildings 
(id, geometry, name) VALUES
(1, ST_GeomFromText('POLYGON((8 1.5, 10.5 1.5, 10.5 4, 8 4, 8 1.5))', 4326), 'BuildingA'),
(2, ST_GeomFromText('POLYGON((4 5, 6 5, 6 7, 4 7, 4 5))', 4326), 'BuildingB'),
(3, ST_GeomFromText('POLYGON((3 6, 5 6, 5 8, 3 8, 3 6))', 4326), 'BuildingC'),
(4, ST_GeomFromText('POLYGON((9 8, 10 8, 10 9, 9 9, 9 8))', 4326), 'BuildingD'),
(5, ST_GeomFromText('POLYGON((1 1, 2 1, 2 2, 1 2, 1 1))', 4326), 'BuildingF');

-- roads
INSERT INTO roads 
(id, geometry, name) VALUES
(1, ST_GeomFromText('LINESTRING(0 4.5, 12 4.5)', 4326), 'RoadX'),
(2, ST_GeomFromText('LINESTRING(7.5 10.5, 7.5 0)', 4326), 'RoadY');


-- poi
INSERT INTO poi (id, geometry, name) VALUES
(1, ST_GeomFromText('POINT(1 3.5)', 4326), 'G'),
(2, ST_GeomFromText('POINT(5.5 1.5)', 4326), 'H'),
(3, ST_GeomFromText('POINT(9.5 6)', 4326), 'I'),
(4, ST_GeomFromText('POINT(6.5 6)', 4326), 'J'),
(5, ST_GeomFromText('POINT(6 9.5)', 4326), 'K');