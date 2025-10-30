-- Policz jak wiele sklepów sportowych (‘Sporting Goods Store’ - tabela POIs) 
-- znajduje się w odległości 300 m od parków (LAND_USE_A).

SELECT COUNT(DISTINCT poi.gid) AS sporting_goods_stores_near_parks
FROM t2019_kar_poi poi, t2019_kar_land_use_a land
WHERE poi.type = 'Sporting Goods Store'
  AND land.type = 'Park (City/County)'
  AND ST_DWithin(
      ST_Transform(poi.geom, 31467),
      ST_Transform(land.geom, 31467),
      300
  );