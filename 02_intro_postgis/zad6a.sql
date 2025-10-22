-- Wyznacz całkowitą długość dróg w analizowanym mieście.
-- geometry::geography konwertuje linię do geograficznego typu, dzięki czemu długość liczona jest w metrach.

SELECT SUM(ST_Length(geometry::geography)) AS total_road_length
FROM roads;