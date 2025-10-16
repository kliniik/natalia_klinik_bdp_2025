-- Policz sumę wynagrodzeń w ramach danego stanowiska
SELECT p.stanowisko, SUM(pr.kwota) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenie WHERE
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
GROUP BY p.stanowisko;