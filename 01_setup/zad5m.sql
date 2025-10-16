-- Policz sumę wszystkich wynagrodzeń
SELECT SUM(p.kwota + COALESCE(pr.kwota, 0)) AS suma_wynagrodzen
FROM ksiegowosc.wynagrodzenie w 
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii;