-- Zamień obiekt4 na poligon. Jaki warunek musi być spełniony, aby można było wykonać to zadanie? Zapewnij te warunki.

-- Zamiana prostej łamanej otwartej na poligon:
    -- * obiekt4 musi być wielokątem (musi mieć co najmniej 3 wierzchołki);
    -- * wierzchołki muszą być uporządkowane w taki sposób, aby tworzyły zamkniętą pętlę (pierwszy i ostatni wierzchołek takie same);
    -- * geometria obiektu4 musi być przekształcona na odpowiedni format WKT.

UPDATE obiekty
SET geometria = ST_GeomFromText(
    'POLYGON((
        20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5, 20 20))', 0)
WHERE id = 4;
