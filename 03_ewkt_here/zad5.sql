-- Wyznacz pole powierzchni wszystkich buforów o wielkości 5 jednostek, 
--które zostały utworzone wokół obiektów nie zawierających łuków.

SELECT nazwa, ST_Area(ST_Buffer(geometria, 5)) AS buffer_area
FROM obiekty
WHERE NOT ST_HasArc(geometria);