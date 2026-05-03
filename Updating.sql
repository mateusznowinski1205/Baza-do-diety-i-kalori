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