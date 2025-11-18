-- Przykład 3 - Funkcje TPI

/* Aktualnie zaimplementowana w PostGIS funkcja TPI wykorzystuje algebrę mapy z wywołaniem funkcji.
Schemat public zawiera dwie funkcje TPI:
• public._st_tpi4ma - funkcja używana w algebrze map
• public.st_tpi - funkcja, która wywołuje poprzednią funkcję. 
Istnieją dwie funkcje st_tpi, które różnią się liczbą dozwolonych 
wejść lecz obie te funkcje wykonują tę samą akcję.
Przeanalizuj kod wspomnianych funkcji oraz sposób ich wykonania.
Więcej informacji odnośnie algebry map w PostGIS znajduje się na stronach:
MapAlgebra z wyrażeniem: https://postgis.net/docs/RT_ST_MapAlgebra_expr.html
MapAlgebra z wywołaniem funkcji: https://postgis.net/docs/RT_ST_MapAlgebra.html
Obecna implementacja TPI w PostGIS obsługiwana przy użyciu funkcji ST_TPI pozwala 
tylko na obliczenie TPI z jedną komórką sąsiedztwa. Nowa implementacja TPI 
pozwalająca użytkownikowi określić komórki sąsiedztwa (wewnętrzny pierścień 
i pierścień zewnętrzny), za pomocą algebry mapy dostępna jest tutaj: 
https://github.com/lcalisto/postgis_customTPI */