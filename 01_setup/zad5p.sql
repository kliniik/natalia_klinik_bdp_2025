-- Usuń wszystkich pracowników mających pensję mniejszą niż 1200 zł
DELETE FROM ksiegowosc.pracownicy 
WHERE id_pracownika IN (
    SELECT w.id_pracownika FROM ksiegowosc.wynagrodzenie w
    JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
    WHERE p.kwota < 1200
);

-- jeśli pracownicy są powiązani kluczami obcymi, należy użyć ON DELETE CASCADE
