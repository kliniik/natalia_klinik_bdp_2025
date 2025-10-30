-- Znajdź wszystkie skrzyżowania, które znajdują się w odległości 200 m 
--od linii zbudowanej z punktów w tabeli ‘input_points’. 
-- Wykorzystaj tabelę T2019_STREET_NODE. 
-- Dokonaj reprojekcji geometrii, aby była zgodna z resztą tabel.

WITH line AS (
    SELECT ST_MakeLine(geom ORDER BY id) AS geom_line
    FROM input_points
)

SELECT sn.*
FROM t2019_kar_street_node sn, line
WHERE ST_DWithin(
    ST_Transform(sn.geom, 31467), 
    line.geom_line, 
    200
);
