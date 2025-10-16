-- Wyświetl pracowników, których nazwisko zawiera literę ‘n’ oraz imię kończy się na literę ‘a’
SELECT * FROM ksiegowosc.pracownicy
WHERE LOWER(nazwisko) LIKE '%n%' 
    AND LOWER(imie) LIKE '%a';