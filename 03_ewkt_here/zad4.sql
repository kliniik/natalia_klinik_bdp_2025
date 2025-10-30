-- W tabeli obiekty, jako obiekt7 zapisz obiekt złożony z obiektu 3 i obiektu 4.

INSERT INTO obiekty
(id, nazwa, geometria)
VALUES
(7, 'obiekt7', ST_Union(
        (SELECT geometria FROM obiekty WHERE id = 3),
        (SELECT geometria FROM obiekty WHERE id = 4)
    )
);