-- Wypisz pole powierzchni tej części budynku BuildingC, która znajduje się w odległości większej niż 0.5 od budynku BuildingB.
-- czyli musimy stworzyć bufor wokół budynku BuildingB o promieniu 0.5, a następnie odjąć go od budynku BuildingC
SELECT
    ST_Area(
        ST_Difference(
            (SELECT geometry FROM buildings WHERE name = 'BuildingC'),
            ST_Buffer(
                (SELECT geometry FROM buildings WHERE name = 'BuildingB'),
                0.5
            )
        )::geometry
    ) AS area_outside_buffer;