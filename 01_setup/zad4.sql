-- Wypełnij każdą tabelę 10. rekordami

INSERT INTO ksiegowosc.pracownicy
(id_pracownika, imie, nazwisko, adres, telefon)
VALUES
(1, 'Jan', 'Kowalski', 'ul. Przykładowa 123', '555-123-456'),
(2, 'Anna', 'Nowak', 'ul. Inna 456', '555-789-123'),
(3, 'Marek', 'Wójcik', 'ul. Spokojna 789', '555-456-789'),
(4, 'Katarzyna', 'Lis', 'ul. Prosta 1', '555-111-222'),
(5, 'Andrzej', 'Szymański', 'ul. Nad Rzeką 7', '555-777-888'),
(6, 'Maria', 'Nowacka', 'ul. Górska 22', '555-999-333'),
(7, 'Piotr', 'Dąbrowski', 'ul. Lasowa 55', '555-444-666'),
(8, 'Ewa', 'Kamińska', 'ul. Wschodnia 10', '555-222-555'),
(9, 'Tomasz', 'Zając', 'ul. Dolna 15', '555-666-444'),
(10, 'Magdalena', 'Woźniak', 'ul. Polna 17', '555-123-987');

INSERT INTO ksiegowosc.godziny
(id_godziny, data, liczba_godzin , id_pracownika)
VALUES
(1, '2025-10-07', 8, 1),
(2, '2025-10-08', 7, 3),
(3, '2025-10-09', 6, 5),
(4, '2025-10-13', 9, 7),
(5, '2025-10-14', 8, 9),
(6, '2025-10-15', 8, 2),
(7, '2025-10-02', 10, 4),
(8, '2025-10-07', 7, 6),
(9, '2025-10-08', 5, 8),
(10, '2025-10-09', 8, 10);

INSERT INTO ksiegowosc.pensja
(id_pensji, stanowisko, kwota)
VALUES
(1, 'Kierownik', 10000),
(2, 'Inżynier Oprogramowania', 7000),
(3, 'Księgowy', 5500),
(4, 'Manager Projektu', 8000),
(5, 'Doradca Klienta', 2500),
(6, 'Kierownik', 65000),
(7, 'Administrator Systemów', 7500),
(8, 'Księgowy', 6000),
(9, 'Przedstawiciel Handlowy', 5000),
(10, 'Architekt Systemowy', 8500);


INSERT INTO ksiegowosc.premia
(id_premii, rodzaj, kwota)
VALUES
(1, 'Bonus świąteczny', 500),
(2, 'Dodatek motywacyjny', 300),
(3, 'Nagroda jubileuszowa', 1000),
(4, 'Bonus za nadgodziny', 400),
(5, 'Bonus świąteczny', 500),
(6, 'Nagroda jubileuszowa', 1400),
(7, 'Bonus urodzinowy', 200),
(8, 'Dodatek motywacyjny', 250),
(9, 'Dodatek motywacyjny', 350),
(10, 'Bonus za nadgodziny', 550);


INSERT INTO ksiegowosc.wynagrodzenie
(id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii)
VALUES
(1, '2025-10-07', 1, 1, 1, 1),
(2, '2025-10-08', 3, 2, 2, NULL),
(3, '2025-10-09', 5, 3, 6, 3),
(4, '2025-10-13', 7, 4, 4, 4),
(5, '2025-10-14', 9, 5, 10, 5),
(6, '2025-10-15', 2, 6, 2, 6),
(7, '2025-10-02', 4, 7, 5, NULL),
(8, '2025-10-07', 6, 8, 3, 8),
(9, '2025-10-08', 8, 9, 9, 9),
(10, '2025-10-09', 10, 10, 8, 10);

SELECT * FROM ksiegowosc.wynagrodzenie;