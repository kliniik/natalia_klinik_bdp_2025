INSERT INTO obiekty 
(id, nazwa, geometria) 
VALUES

-- prosta i punkt
(6, 'obiekt6', ST_GeomFromText(
    'GEOMETRYCOLLECTION(
        LINESTRING(1 1, 3 2),
        POINT(4 2))', 0)
);