-- Wyświetl imię i nazwisko pracowników, którzy pracowali w nadgodzinach i nie otrzymali premii
SELECT p.imie, p.nazwisko, 
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
JOIN ksiegowosc.wynagrodzenia w ON p.id_pracownika = w.id_pracownika
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY p.imie, p.nazwisko
HAVING SUM(g.liczba_godzin) > 160 AND w.id_premii IS NULL;