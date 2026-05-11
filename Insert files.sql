insert into kategoria (nazwa_kategorii) values 
('Nabiał'),
('Pieczywo'),
('Mięso'),
('Owoce'),
('Warzywa'),
('Dania gotowe'),
('Produkty proteinowe'),
('Mrożonki'),
('Przekąski słodkie'),
('Przekąski słone'),
('Sosy i przyprawy'),
('Napoje');

INSERT INTO marki (nazwa_marki)
VALUES 
    ('Ryneczek Lidla'), 
    ('Piekarnia Lidla'),
    ('Pikok'),          
    ('Castello'),       
    ('Sondey'),        
    ('Złota Nioska'),  
    ('Belbake'),      
    ('Crownfield'),   
    ('Golden Sun'),   
    ('Combino'),       
    ('Brak / Na wagę');

INSERT INTO warianty_i_makro (id_marki, id_produktu, kcal, tluszcze, wegle, bialko, cukry, waga, mikroskladniki)
VALUES 
    -- 🍏 Owoce i Warzywa (ID Marki: 38 - Ryneczek Lidla)
    (38, 1, 89, 0.3, 23.0, 1.0, 12.0, 1000, '{}'),  -- Banany
    (38, 2, 52, 0.3, 12.0, 1.2, 4.4, 125, '{}'),    -- Maliny
    (38, 3, 32, 0.3, 7.7, 0.7, 4.9, 500, '{}'),     -- Truskawki
    (38, 4, 14, 0.1, 2.9, 0.6, 1.7, 1000, '{}'),    -- Ogórek
    (38, 5, 18, 0.2, 3.9, 0.9, 2.6, 1000, '{}'),    -- Pomidor
    (38, 6, 61, 0.5, 15.0, 1.1, 9.0, 100, '{}'),    -- Kiwi
    (38, 7, 44, 0.3, 10.6, 1.1, 9.5, 1000, '{}'),   -- Nektarynki
    (38, 8, 39, 0.3, 9.5, 0.9, 8.4, 1000, '{}'),    -- Brzoskwinie
    (38, 9, 27, 0.2, 6.3, 1.0, 4.2, 1000, '{}'),    -- Papryka żółta
    (38, 10, 31, 0.3, 6.0, 1.0, 4.2, 1000, '{}'),   -- Papryka czerwona
    (38, 11, 20, 0.2, 4.6, 0.9, 2.4, 1000, '{}'),   -- Papryka zielona
    (38, 12, 77, 0.1, 17.5, 2.0, 0.8, 1000, '{}'),  -- Ziemniaki
    (38, 13, 40, 0.1, 9.3, 1.1, 4.2, 1000, '{}'),   -- Cebula
    (38, 14, 149, 0.5, 33.0, 6.4, 1.0, 50, '{}'),   -- Czosnek
    (38, 15, 22, 0.3, 3.3, 3.1, 1.0, 500, '{}'),    -- Pieczarki brązowe
    (38, 16, 16, 0.1, 3.4, 1.0, 1.9, 150, '{}'),    -- Rzodkiewka
    (38, 17, 30, 0.7, 4.4, 3.3, 0.5, 50, '{}'),     -- Szczypiorek
    (38, 18, 17, 0.2, 2.2, 1.3, 0.5, 150, '{}'),    -- Mix sałat
    (38, 19, 14, 0.2, 2.2, 1.4, 0.5, 150, '{}'),    -- Sałata
    (38, 20, 29, 0.3, 9.3, 1.1, 2.5, 1000, '{}'),   -- Cytryna
    (38, 21, 47, 0.1, 11.8, 0.9, 9.4, 1000, '{}'),  -- Pomarańcza
    (38, 22, 20, 0.2, 4.0, 1.2, 2.6, 250, '{}'),    -- Pomidory koktajlowe
    (38, 23, 86, 0.1, 20.0, 1.6, 4.2, 1000, '{}'),  -- Bataty
    -- 🍞 Pieczywo (ID Marki: 39 - Piekarnia, 40 - Castello, 41 - Sondey)
    (39, 24, 314, 8.3, 38.0, 18.0, 2.1, 80, '{"blonnik": 7.8, "sol": 1.8}'), -- Bułka wysokobialkowa (Zaktualizowana!)
    (39, 25, 273, 1.7, 56.0, 8.2, 3.0, 65, '{}'),   -- Bułka kajzerka
    (39, 26, 258, 1.7, 50.0, 9.2, 2.5, 70, '{}'),   -- Bułka Grahamka
    (39, 27, 265, 1.5, 54.0, 8.0, 3.0, 80, '{}'),   -- Bułka Poznańska
    (39, 28, 280, 5.0, 45.0, 10.5, 3.5, 80, '{}'),  -- Bułka fitness
    (39, 29, 320, 13.0, 42.0, 7.5, 4.0, 175, '{}'), -- Bagietka czosnkowa
    (39, 30, 272, 1.0, 56.0, 8.5, 2.5, 250, '{}'),  -- Bagietka
    (41, 31, 387, 2.2, 82.0, 8.2, 0.5, 100, '{}'),  -- Wafle ryżowe (Sondey)
    (40, 32, 265, 3.0, 50.0, 8.0, 4.0, 500, '{}'),  -- Chleb tostowy pszenny
    (40, 33, 245, 3.5, 43.0, 9.0, 3.5, 500, '{}'),  -- Chleb tostowy razowy
    (40, 34, 280, 4.5, 52.0, 8.0, 5.0, 500, '{}'),  -- Chleb tostowy maślany
    (47, 35, 430, 16.0, 65.0, 6.0, 1.0, 60, '{}'),  -- Wafle ryżowe dzika
    (39, 36, 400, 21.0, 45.0, 7.5, 11.0, 60, '{}'), -- Croasianty maślany
    (39, 37, 420, 23.0, 46.0, 7.0, 12.0, 70, '{}'), -- Croasaint z nadzieniem
    -- 🥩 Mięso i Wędliny (ID Marki: 3 - Pikok, 2 - Rzeźnik)
    (3, 38, 90, 1.5, 1.5, 18.0, 0.5, 250, '{}'),    -- Szynka z kurczaka XXL
    (3, 39, 95, 2.0, 1.0, 19.0, 0.5, 250, '{}'),    -- Szynka z indyka XXL
    (1, 40, 345, 27.0, 0.0, 25.0, 0.0, 500, '{}'),  -- Ser gouda XXL
    (2, 41, 98, 1.3, 0.0, 21.5, 0.0, 1000, '{}'),   -- Filet z piersi kurczaka XXL
    (2, 42, 150, 8.0, 0.0, 18.0, 0.0, 400, '{}'),   -- Mięso mielone z indyka
    (2, 43, 170, 11.0, 0.0, 17.0, 0.0, 1000, '{}'), -- Ćwiartka z kurczaka
    (2, 44, 160, 9.0, 0.0, 18.0, 0.0, 1000, '{}'),  -- Podudzie z kurczaka
    (2, 45, 130, 6.0, 0.0, 19.0, 0.0, 1000, '{}'),  -- Mięso z nogi kurczaka
    (1, 46, 47, 1.5, 4.9, 3.4, 4.9, 1000, '{}'),    -- Mleko 1.5%
    (1, 47, 80, 2.0, 2.5, 13.0, 2.5, 200, '{}'),    -- Serek wiejski wysokobiałkowy
    (1, 48, 86, 0.0, 3.5, 18.0, 3.5, 250, '{}'),    -- Twaróg chudy
    (1, 49, 155, 9.5, 3.0, 14.0, 3.0, 250, '{}'),   -- Twaróg tłusty
    (1, 50, 114, 4.0, 3.5, 16.0, 3.5, 250, '{}'),   -- Twaróg półtłusty
    (47, 51, 370, 14.0, 35.0, 30.0, 2.0, 70, '{}'), -- Baton dzika (słony karmel)
    (1, 52, 80, 1.5, 5.5, 10.0, 4.0, 200, '{}'),    -- Pudding proteinowy
    (1, 53, 57, 0.2, 3.6, 10.0, 3.6, 330, '{}'),    -- Napój mleczny high protein
    (1, 54, 165, 9.0, 1.5, 19.0, 1.0, 125, '{}'),   -- Mozzarella light
    (1, 55, 245, 18.5, 1.5, 17.5, 1.0, 125, '{}'),  -- Mozzarella (kulki)
    (3, 56, 220, 17.0, 2.0, 14.0, 0.5, 200, '{}'),  -- Parówki wysokobiałkowe z kurczaka (Pikok)
    (3, 57, 240, 19.0, 1.5, 15.0, 0.5, 200, '{}'),  -- Parówki wysokobiałkowe z szynki (Pikok)
    (42, 58, 143, 9.7, 0.6, 12.5, 0.6, 500, '{}'),  -- Jajka M (Złota Nioska)
    (43, 59, 343, 1.2, 72.0, 10.0, 0.5, 1000, '{}'),-- Mąka pszenna (Belbake)
    (43, 60, 340, 2.5, 61.0, 13.0, 0.5, 1000, '{}'),-- Mąka pełnoziarnista (Belbake)
    (44, 61, 376, 7.0, 60.0, 13.5, 1.0, 500, '{}'), -- Płatki owsiane (Crownfield)
    (45, 62, 345, 0.7, 77.0, 6.7, 0.2, 400, '{}'),  -- Ryz biały (Golden Sun)
    (46, 63, 350, 1.5, 72.0, 12.0, 2.5, 500, '{}'), -- Makaron (Combino)
    (1, 64, 64, 0.0, 4.0, 12.0, 4.0, 150, '{}'),    -- Skyr naturalny (Pilos)
    (1, 65, 80, 0.0, 10.5, 9.0, 10.0, 150, '{}'),   -- Skyr naturalny waniliowy (Pilos)
    (1, 66, 133, 12.0, 3.8, 2.8, 3.8, 400, '{}');   -- Śmietana 12% (Pilos)

    insert into warianty_i_makro (id_marki, id_produktu, kcal, tluszcze, wegle, bialko, cukry, waga, mikroskladniki) VALUES
    (67, 48, 292, 15, 26, 14, 8, 200, '{}');

    insert into ceny (id_wariantu, id_sklepu, cena, data_zmiany, czy_promocja) values 
(67, 15, 8, current_date, false);