-- pierwsze zmiany jakie przyszly mi do głowy

Create TABLE kategoria(
    id_kategorii INT generated always as identity not NULL primary key,
    nazwa varchar(15) not null 
);

ALTER TABLE produkty ADD COLUMN waga varchar(10);

ALTER TABLE produkty ADD COLUMN id_kategorii INT;

ALTER TABLE produkty
ADD CONSTRAINT kategoria
FOREIGN key (id_kategorii) REFERENCES kategoria(id_kategorii);

ALTER TABLE ceny ADD COLUMN czy_promocja BOOLEAN DEFAULT FALSE;

-- drugie dzialnia nad optymlaizacja bazy

CREATE TABLE warainty_i_makro (
    id_wariantu INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    id_marki INT NOT NULL,
    id_produktu INT NOT NULL,
    kcal NUMERIC(5,2),
    tluszcze NUMERIC(5,2),
    wegle NUMERIC(5,2),
    bialko NUMERIC(5,2),
    cukry NUMERIC(5,2),
    
    CONSTRAINT fk_marka FOREIGN KEY (id_marki) REFERENCES marka(id_marki),
    CONSTRAINT fk_produkt FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu)
);

-- Dodanie wagi do wariantów 
ALTER TABLE warainty_i_makro ADD COLUMN waga NUMERIC(10,2) NOT NULL;



-- Wyczyszczenie tabeli produkty z danych
ALTER TABLE produkty 
DROP COLUMN kcal,
DROP COLUMN bialko,
DROP COLUMN weglowodany,
DROP COLUMN tluszcze,
DROP COLUMN waga,      -- Usuwamy tę wagę varchar(10), bo mamy teraz lepszą
DROP COLUMN blonnik,
DROP COLUMN sod;

-- Podpięcie cen pod konkretne pudełko (wariant)
ALTER TABLE ceny ADD COLUMN id_wariantu INT;

ALTER TABLE ceny 
ADD CONSTRAINT fk_cena_wariant 
FOREIGN KEY (id_wariantu) REFERENCES warainty_i_makro(id_wariantu);

-- Usunięcie starego, błędnego powiązania
ALTER TABLE ceny DROP COLUMN id_produktu;

-- Poprawa literówki w nazwie głównej tabeli z wariantami
ALTER TABLE warainty_i_makro RENAME TO warianty_i_makro;

-- i pare kosmetycznych zmian jak nazwy czy usuwanie column ktych zapomniale usunac
-- 3 kolejne zmainy i optymalzacja bazy 

alter table warainty_i_makro 
add column mikroskladniki json; -- wczesniej usunem a kolumne z nazwy produktow 


-- doadnie dwoch nowych tabel dla leszych raportów i podsumowan dnia i tygodnia czy miesaca 
CREATE TABLE dziennik_dzienny (
	id_dziennika INT GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
	id_wariantu INT NOT NULL,
	waga_zjedzona NUMERIC(6,2) NOT NULL,
	data_spoz DATE NOT NULL, 
	CONSTRAINT dat FOREIGN KEY (id_wariantu) REFERENCES warianty_i_makro(id_wariantu) 

create table notatnik_kcal (
	data_spoz date primary key,
	suma_kcal numeric (6,2) not null,
	suma_tlus numeric (5,2) not null,
	suma_wegl numeric (5,2) not null,
	suma_bial numeric (5,2) not null,
	suma_cukr numeric (5,2) not null
)