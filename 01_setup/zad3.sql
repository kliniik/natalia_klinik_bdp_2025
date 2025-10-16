-- Dodaj cztery tabele:
-- pracownicy (id_pracownika, imie, nazwisko, adres, telefon)
CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika int PRIMARY KEY,
    imie varchar,
    nazwisko varchar,
    adres varchar,
    telefon varchar );

COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela przechowująca informacje o pracownikach';


-- godziny (id_godziny, data, liczba_godzin , id_pracownika)
CREATE TABLE ksiegowosc.godziny(
    id_godziny int PRIMARY KEY,
    data date,
    liczba_godzin int,
    id_pracownika int,
    FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika)
);

COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela przechowująca informacje o godzinach pracy pracowników';


-- pensja (id_pensji, stanowisko, kwota)
CREATE TABLE ksiegowosc.pensja (
    id_pensji int PRIMARY KEY,
    stanowisko varchar,
    kwota float
);

COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela przechowująca informacje o pensjach pracowników';


-- premia (id_premii, rodzaj, kwota)
CREATE TABLE ksiegowosc.premia (
    id_premii int PRIMARY KEY,
    rodzaj varchar,
    kwota float
);

COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela przechowująca informacje o premiach pracowników';


-- wynagrodzenie ( id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii)
CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia int PRIMARY KEY,
    data date,
    id_pracownika int,
    id_godziny int,
    id_pensji int,
    id_premii int,
    CONSTRAINT fk_pracownicy
        FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika),
    CONSTRAINT fk_godziny
        FOREIGN KEY (id_godziny) REFERENCES ksiegowosc.godziny(id_godziny),
    CONSTRAINT fk_pensja
        FOREIGN KEY (id_pensji) REFERENCES ksiegowosc.pensja(id_pensji),
    CONSTRAINT fk_premia
        FOREIGN KEY (id_premii) REFERENCES ksiegowosc.premia(id_premii)
);

COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Tabela przechowująca informacje o wynagrodzeniach pracowników';
