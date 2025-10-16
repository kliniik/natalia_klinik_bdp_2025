-- Wyznacz liczbę premii przyznanych dla pracowników danego stanowiska
SELECT p.stanowisko, COUNT(w.id_premii) AS liczba_premii
FROM ksiegowosc.wynagrodzenie w 
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
GROUP BY p.stanowisko;