INSERT INTO obiekty 
(id, nazwa, geometria) 
VALUES

-- trójkąt
(3, 'obiekt3', ST_GeomFromText(
        'POLYGON((7 15, 12 13, 10 17, 7 15))', 0)
);
