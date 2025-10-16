-- Wyświetl id pracowników, których płaca jest większa niż 1000
SELECT w.id_pracownika FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
WHERE p.kwota > 1000;