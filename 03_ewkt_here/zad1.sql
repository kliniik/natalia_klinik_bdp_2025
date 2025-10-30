-- Utwórz tabelę obiekty. W tabeli umieść nazwy i geometrie obiektów przedstawionych poniżej. 
-- Układ odniesienia ustal jako niezdefiniowany.

CREATE TABLE obiekty (
    id INT PRIMARY KEY,
    nazwa VARCHAR(255),
    geometria GEOMETRY
);

-- INSERT INTO obiekty 
-- (id, nazwa, geometria) 
-- VALUES

-- -- prosta z wybrzuszeniami (półokręgami)
-- (1, 'obiekt1', ST_GeomFromText(
--     'COMPOUNDCURVE(
--         LINESTRING(0 1, 1 1),
--         CIRCULARSTRING(1 1, 2 0, 3 1),
--         CIRCULARSTRING(3 1, 4 2, 5 1),
--         LINESTRING(5 1, 6 1))', 0)
-- ),

-- -- serce z wycięciem w kształcie koła
-- (2, 'obiekt2', ST_GeomFromText(
--     'GEOMETRYCOLLECTION(
--         COMPOUNDCURVE((
--             LINESTRING(10 6, 14 6),
--             CIRCULARSTRING(14 6, 16 4, 14 2),
--             CIRCULARSTRING(14 2, 12 0, 10 2),
--             LINESTRING(10 2, 10 6)),
--         CIRCULARSTRING(11 2, 13 2, 11 2))', 0)
-- ),


-- -- trójkąt
-- (3, 'obiekt3', ST_GeomFromText(
--         'POLYGON((7 15, 12 13, 10 17, 7 15))', 0)
-- ), 

-- -- prosta łamana otwarta
-- (4, 'obiekt4', ST_GeomFromText(
--         'LINESTRING(20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5)', 0)
-- ),

