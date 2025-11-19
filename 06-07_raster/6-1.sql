-- 6. Eksport danych

-- Przykład 0 - Użycie QGIS
/* Po załadowaniu tabeli/widoku z danymi rastrowymi do QGIS, 
możliwe jest zapisanie/wyeksportowanie warstwy rastrowej do 
dowolnego formatu obsługiwanego przez GDAL za pomocą interfejsu QGIS. */

-- Przykład 1 - ST_AsTiff
/* Funkcja ST_AsTiff tworzy dane wyjściowe jako binarną reprezentację pliku tiff, 
może to być przydatne na stronach internetowych, skryptach itp., w których 
programista może kontrolować, co zrobić z plikiem binarnym, 
na przykład zapisać go na dysku lub po prostu wyświetlić. */

SELECT ST_AsTiff(ST_Union(rast))
FROM natalia_klinik.porto_ndvi;