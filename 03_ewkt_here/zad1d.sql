INSERT INTO obiekty 
(id, nazwa, geometria) 
VALUES

-- prosta łamana otwarta
(4, 'obiekt4', ST_GeomFromText(
        'LINESTRING(20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5)', 0)
);
