-- Oblicz pole powierzchni tych części budynku BuildingC i poligonu o współrzędnych
-- (4 7, 6 7, 6 8, 4 8, 4 7), które nie są wspólne dla tych dwóch obiektów.
-- czyli różnica symetryczna BuildingC i podanego poligonu

SELECT
    ST_Area(
        ST_SymDifference(
            (SELECT geometry FROM buildings WHERE name = 'BuildingC'),
            ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))', 4326)
        )::geometry
    ) AS area_symmetric_difference;