-- Wypisz geometrię (WKT), pole powierzchni oraz obwód poligonu reprezentującego budynek o nazwie BuildingA.
SELECT
    ST_AsText(geometry::geography) AS wkt,
    ST_Area(geometry::geography) AS area,
    ST_Perimeter(geometry::geography) AS perimeter
FROM buildings
WHERE name = 'BuildingA';