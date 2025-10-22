-- Wypisz nazwy i obwody 2 budynków o największej powierzchni.
SELECT
    name,
    ST_Perimeter(geometry::geography) AS perimeter
FROM buildings
ORDER BY ST_Area(geometry::geography) DESC
LIMIT 2;