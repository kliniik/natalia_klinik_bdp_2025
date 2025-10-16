-- Policz średnią, minimalną i maksymalną płacę dla stanowiska ‘kierownik’ (jeżeli takiego nie masz, to przyjmij dowolne inne)
SELECT 
    stanowisko,
    AVG(kwota) AS srednia,
    MIN(kwota) AS minimalna,
    MAX(kwota) AS maksymalna
FROM ksiegowosc.pensja
WHERE LOWER(stanowisko) = 'kierownik'
GROUP BY stanowisko;