-- Wyznacz pole powierzchni bufora o wielkości 5 jednostek, 
-- który został utworzony wokół najkrótszej linii łączącej obiekt 3 i 4.

SELECT ST_Area(
           ST_Buffer(
               ST_ShortestLine(
                   (SELECT geometria FROM obiekty WHERE id = 3),
                   (SELECT geometria FROM obiekty WHERE id = 4)
               ), 5)
       ) AS buffer_area;