-- Uszereguj pracowników według pensji
SELECT 
    p.imie, 
    p.nazwisko, 
    pe.kwota AS pensja
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja pe ON w.id_pensji = pe.id_pensji
ORDER BY pe.kwota ASC;
