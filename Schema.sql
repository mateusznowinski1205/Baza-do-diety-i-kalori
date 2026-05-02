create table if not exists produkty(
	id_produktu INT GENERATED ALWAYS AS IDENTITY Primary KEY, 
    Nazwa VARCHAR(50) NOT NULL, 
    Kcal INT,
    Tluszcze NUMERIC(5,2),
    Weglowodany NUMERIC(5,2),
    Bialko NUMERIC(5,2), 
    Blonnik NUMERIC(5,2), 
    Sod NUMERIC(5,2),
    Mikroskladniki JSONB
);

CREATE TABLE IF NOT EXISTS Sklep(
    id_sklepu INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    sklepy VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS  Ceny(
    id_ceny INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_produktu INT not NULL,
    id_sklepu int not NULL,
    cena numeric(5,2) not NULL,
    data_zmiany DATE,

    constraint produkt FOREIGN KEY (id_produktu) REFERENCES produkty(id_produktu),
    constraint sklep FOREIGN KEY (id_sklepu) REFERENCES sklep(id_sklepu)
);