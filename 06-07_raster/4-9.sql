-- Przykład 9 - ST_Value

/* Funkcja ST_Value pozwala wyodrębnić wartość piksela z punktu lub zestawu punktów. 
Poniższy przykład wyodrębnia punkty znajdujące się w tabeli vectors.places.
Ponieważ geometria punktów jest wielopunktowa, a funkcja ST_Value wymaga geometrii jednopunktowej, 
należy przekonwertować geometrię wielopunktową na geometrię jednopunktową za pomocą funkcji (ST_Dump(b.geom)).geom.*/

SELECT b.name,st_value(a.rast,(ST_Dump(b.geom)).geom)
FROM
rasters.dem a, vectors.places AS b
WHERE ST_Intersects(a.rast,b.geom)
ORDER BY b.name;