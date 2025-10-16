-- Wyświetl imię i nazwisko pracowników oraz liczbę ich nadgodzin, przyjmując, iż standardowy czas pracy to 160 h miesięcznie
SELECT p.imie, p.nazwisko, 
    GREATEST(SUM(g.liczba_godzin) - 160, 0) AS nadgodziny
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
GROUP BY p.id_pracownika, p.imie, p.nazwisko;