-- Uszereguj pracowników według pensji i premii malejąco
SELECT 
    p.imie, 
    p.nazwisko, 
    pe.kwota AS pensja, 
    pr.kwota AS premia
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pe ON w.id_pensji = w.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
ORDER BY pe.kwota, pr.kwota DESC;