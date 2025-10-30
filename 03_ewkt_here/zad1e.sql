INSERT INTO obiekty 
(id, nazwa, geometria) 
VALUES

-- dwa niepołączone punkty w przestrzeni 3D
(5, 'obiekt5', ST_GeomFromText(
        'MULTIPOINT Z((30 30 59), (38 32 234))', 0)
);
