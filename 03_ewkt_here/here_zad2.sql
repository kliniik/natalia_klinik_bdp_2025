-- Zaimportuj dane dotyczące POIs (Points of Interest) z obu lat:
    -- - T2018_KAR_POI_TABLE
    -- - T2019_KAR_POI_TABLE

-- Znajdź ile nowych POI pojawiło się w promieniu 500 m od wyremontowanych 
-- lub wybudowanych budynków, które znalezione zostały w zadaniu 1. 
-- Policz je wg ich kategorii.

WITH new_buildings AS (
    SELECT b19.geom
    FROM t2019_kar_buildings b19
    LEFT JOIN t2018_kar_buildings b18
    ON b19.geom = b18.geom
    WHERE b18.geom IS NULL
)
SELECT poi19.type, COUNT(*) AS poi_count
FROM t2019_kar_poi poi19
LEFT JOIN t2018_kar_poi poi18
ON poi19.gid = poi18.gid
WHERE poi18.gid IS NULL
AND EXISTS (
    SELECT 1
    FROM new_buildings nb
    WHERE ST_DWithin(
        ST_Transform(poi19.geom, 31467),
        ST_Transform(nb.geom, 31467),
        500
    )
)
GROUP BY poi19.type;
