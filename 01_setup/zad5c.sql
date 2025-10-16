-- Wyświetl id pracowników nieposiadających premii, których płaca jest większa niż 2000
SELECT w.id_pracownika FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
WHERE (p.kwota > 2000 AND w.id_premii IS NULL);