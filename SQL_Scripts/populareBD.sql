TRUNCATE TABLE evenimente;
TRUNCATE TABLE tranzactii;
TRUNCATE TABLE ordine;
TRUNCATE TABLE solduri;
TRUNCATE TABLE retele_active;
TRUNCATE TABLE perechi_active;
TRUNCATE TABLE conturi_bancare;
TRUNCATE TABLE portofele;
TRUNCATE TABLE retele_blockchain;
TRUNCATE TABLE active_tranzactionabile;
TRUNCATE TABLE utilizatori;
COMMIT;


-- 1. UTILIZATORI
INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (1, 'trader.profesionist@icloud.com', 'Trader', 'Profesionist',
        'a1f5f0c66564bb7c65e2cf69c0c77a09223ce28e83de88a2179d3b5a4d4be09cd522b0f16c962c9537672abd9aac1c0337264e3d0b08bb9c7fb856e20877345e', '+40750123456', 1, TO_DATE('2022-11-01', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (2, 'maria.ionescu@hotmail.com', 'Ionescu', 'Maria',
        'ef7152520b4f7090b61608698eb614ef516f0e9b2f68e93e337cc13062305da541477e52c3300f345b0eaeee740323b3b72bccc50ae4a894eb1ea27d3ffe4568', '+40751234567', 0, TO_DATE('2023-02-20', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (3, 'andrei.vasile@yahoo.com', 'Vasile', 'Andrei',
        '5da86d6b9774a9600723501b955551f787d86c4e7ad7ed0359be382c030bfd7ba9847885993ef884bee7e6d4eb83673f258bca2ba16717e5bf9c414afe621b0b', '+40752345678', 1, TO_DATE('2023-03-10', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (4, 'cristian.stan@unibuc.ro', 'Stan', 'Cristian',
        '658908a070e896ccc501091cd8ced15c7e44e91a7b4a56a0b892bf3d834a3f32013ddbc783070db8130ff5dde670e3c9f5bfce1743cb4e9838f1c3b7c11f0b61', '+40754567890', 1, TO_DATE('2023-05-12', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (5, 'ana.mihai@yahoo.com', 'Mihai', 'Ana',
        'eec3ef6e09a8bcf9d5c203f0516f9526475698d06e8a0f1aa2c2d5409bc8f6d16f07907ed8a5ed2b8fea29c8f31901ede5203ae99d092130005debab1e906432', '+40755678901', 0, TO_DATE('2023-06-18', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (6, 'george.popescu@hotmail.com', 'Popescu', 'George',
        'e574f8affbd23cb6f05b133890d507abad41688aa0cb909c1f4dd09fad8b61eeef44a50a6f44b4c6c9935345f72009296b78ac6539056d4620468fe23e5adadf', '+40756789012', 1, TO_DATE('2023-07-22', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (7, 'mihail.radulescu@gmail.com', 'Radulescu', 'Mihail',
        'f4e206d564e7bde038da8835752e989213b9d9fedc24079b608e0ed92d58a06eb224c4aff1d4422c5edda9e6bc878c591cd0fe9b85647aa2904d791fa3740696', '+40758901234', 0, TO_DATE('2023-09-14', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (8, 'ion.popescu@stud.energ.upb.ro', 'Popescu', 'Ion',
        'ea3d1693f110984ffd25f3b6b3495ac7878085786c3de26c907280cb7184bb91e2158af69b5ed3ec710c67eb721cb26741d7078b74d527635345ff68ac79126b', '+40751123456', 1, TO_DATE('2024-01-15', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (9, 'corina.neagu@s.unibuc.ro', 'Neagu', 'Corina',
        'e538a683b2dd3964b1b3781f169e4047233bf8fd35c70102bd2e2615416916192285fcef0dbff5acd0bab44caab8a1831eb64454764d3f94d04c53d7aa752f2a', '+40759012345', 1, TO_DATE('2024-10-25', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (10, 'elena.dumitru@outlook.com', 'Dumitru', 'Elena',
        '6d292fded4f86372a1f3e18f2f82b19e101366f0c5e49a5e8d1f7690dcda7d2775c34535d96987cec12e0eb9b4545a85b01f567701fdaf32bdd31b6bb8f94cd1', '+40753456789', 1, TO_DATE('2025-04-05', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (11, 'diana.constantin@yahoo.com', 'Constantin', 'Diana',
        '9c4f613ca7045581ac794b7271219cf192fe17743bc0a5d50de17721ea637c82d3c96b465f864d7987ebec755e20815fe184e49c2eec55146c169a80421c62a8', '+40757890123', 1, TO_DATE('2025-08-30', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (12, 'sorin.cristea@upb.ro', 'Cristea', 'Sorin',
        'fdb0dea75eb1b8c7ccb53f7a8c2debeab40fd64319ba59da4d79177db0e90ce32b2e9d17b1eca8325291b3109413ad4a6b4ea77fd82bf47452af12107f698027', '+40732034436', 1, TO_DATE('2025-11-01', 'YYYY-MM-DD'));

INSERT INTO utilizatori (id_utilizator, email, nume, prenume, parola_hash, telefon, two_fa_activ, data_inreg)
VALUES (13, 'marcrus23@gmail.com', 'Rusu', 'Marcel',
        '9ece086e9bac491fac5c1d1046ca11d737b92a2b2ebd93f005d7b710110c0a678288166e7fbe796883a4f2e9b3ca9f484f521d0ce464345cc1aec96779149c14', '+40720925223', 0, TO_DATE('2025-12-12', 'YYYY-MM-DD'));

COMMIT;

-- 2. CONTURI_BANCARE
INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO11BACX00009988776655', 1, 'Trader Profesionist', 'UniCredit', 'BACXROBU', 'USD', 'VALIDAT');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('US122000000121212121', 1, 'Trader Profesionist', 'JPMorgan Chase', 'CHASUS33', 'USD', 'VALIDAT');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RU0204452560040702810412345678901', 2, 'Maria Ionescu', 'SOCIUM-BANK LLC', 'AMOORUM2XXX', 'RUB', 'IN_ASTEPTARE');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO77RZBR00009999999999', 3, 'Andrei Vasile', 'Raiffeisen', 'RZBRROBU', 'EUR', 'RESPINS');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO33INGB00099887766554', 4, 'Cristian Stan', 'ING', 'INGBROBU', 'EUR', 'VALIDAT');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO55CECE00011223344556', 5, 'Ana Mihai', 'CEC', 'CECEROBU', 'RON', 'VALIDAT');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO99RZBR00005556667777', 6, 'George Popescu', 'Raiffeisen', 'RZBRROBU', 'EUR', 'IN_ASTEPTARE');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO22BCR00008877665544', 7, 'Mihail Radulescu', 'BCR', 'RNCBROBU', 'RON', 'VALIDAT');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO49AAAA1B31007593840000', 8, 'Ion Popescu', 'ING', 'INGBROBU', 'EUR', 'VALIDAT');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO12BCR0000991234567890', 8, 'Ion Popescu', 'BCR', 'RNCBROBU', 'RON', 'VALIDAT');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO88INGB00004433221100', 9, 'Corina Neagu', 'ING', 'INGBROBU', 'EUR', 'VALIDAT');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO66BACX00001234567890', 10, 'Elena Dumitru', 'UniCredit', 'BACXROBU', 'USD', 'VALIDAT');

INSERT INTO conturi_bancare (iban, id_utilizator, nume_titular, nume_banca, cod_swift, moneda, stare_verificare)
VALUES ('RO44BRDE00003332221111', 11, 'Diana Constantin', 'BRD', 'BRDEROBU', 'USD', 'VALIDAT');
COMMIT;

-- 3. PORTOFELE
-- 2022
INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (101, 1, 'TradingPro', 100000, 'USD', TO_DATE('2022-11-02', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (102, 1, 'Institutional', 50000, 'GBP', TO_DATE('2022-12-01', 'YYYY-MM-DD'));

-- 2023
INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (103, 2, 'Personal', 3000, 'RON', TO_DATE('2023-02-21', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (104, 3, 'Economii', 2000, 'EUR', TO_DATE('2023-03-11', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (105, 4, 'Investitii', 15000, 'EUR', TO_DATE('2023-05-13', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (106, 5, 'Zilnic', 8000, 'RON', TO_DATE('2023-06-19', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (107, 6, 'Trading', 15000, 'EUR', TO_DATE('2023-07-23', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (108, 6, 'Business', 1000, 'EUR', TO_DATE('2023-07-23', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (109, 5, 'Crypto', 12000, 'RON', TO_DATE('2023-07-30', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (110, 4, 'Backup', 3000, 'USD', TO_DATE('2023-08-25', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (111, 7, 'Personal', 7000, 'RON', TO_DATE('2023-09-15', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (112, 7, 'Emergency', 5000, 'RON', TO_DATE('2023-09-16', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (113, 3, 'Zilnic', 5000, 'RON', TO_DATE('2023-10-15', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (114, 2, 'Secondary', 8000, 'USD', TO_DATE('2023-11-05', 'YYYY-MM-DD'));

-- 2024
INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (115, 8, 'Principal', 5000, 'EUR', TO_DATE('2024-01-15', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (116, 8, 'Trading', 10000, 'USD', TO_DATE('2024-03-01', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (117, 9, 'Invest', 22000, 'EUR', TO_DATE('2024-10-30', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (118, 9, 'Principal', 18000, 'EUR', TO_DATE('2024-11-01', 'YYYY-MM-DD'));

-- 2025
INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (119, 10, 'Savings', 20000, 'EUR', TO_DATE('2025-04-05', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (120, 10, 'Crypto', 25000, 'USD', TO_DATE('2025-04-10', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (121, 11, 'Principal', 12000, 'USD', TO_DATE('2025-08-31', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (122, 11, 'Savings', 9000, 'USD', TO_DATE('2025-10-10', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (123, 12, 'Virtual', 5000, 'AUD', TO_DATE('2025-11-05', 'YYYY-MM-DD'));

INSERT INTO portofele (id_portofel, id_utilizator, nume_portofel, plafon_retragere_zilnica, moneda_referinta, data_creare)
VALUES (124, 13, 'Test', 500, 'EUR', TO_DATE('2025-12-12', 'YYYY-MM-DD'));

COMMIT;

-- 4. ACTIVE_TRANZACTIONABILE
INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('EUR', 'Euro', 'FIAT', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('CHF', 'Franc Elvețian', 'FIAT', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('USD', 'Dolar American', 'FIAT', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('RON', 'Leu Românesc', 'FIAT', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('GBP', 'Liră Sterlină', 'FIAT', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('BTC', 'Bitcoin', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('ETH', 'Ethereum', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('BNB', 'Binance Coin', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('ADA', 'Cardano', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('SOL', 'Solana', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('XRP', 'Ripple', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('DOT', 'Polkadot', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('DOGE', 'Dogecoin', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('MATIC', 'Polygon', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('USDT', 'Tether', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('USDC', 'USD Coin', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('SHIB', 'Shiba Inu', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('TRX', 'Tron', 'CRYPTO', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('LTC', 'Litecoin', 'CRYPTO', 'INACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('JPY', 'Yen Japonez', 'FIAT', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('CAD', 'Dolar Canadian', 'FIAT', 'ACTIV');

INSERT INTO active_tranzactionabile (simbol, nume_activ, tip_activ, status_activ)
VALUES ('AUD', 'Dolar Australian', 'FIAT', 'ACTIV');


COMMIT;

-- 5. SOLDURI
-- Portofel 101 (Trader Profesionist - USD TradingPro)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'USD', 125000.75);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'EUR', 85000.25);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'BTC', 2.85);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'ETH', 18.5);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'SOL', 125.8);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'ADA', 2500);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'USDT', 50000);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'USDC', 25000);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'BNB', 12.5);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (101, 'DOT', 45.2);

-- Portofel 102 (Trader Profesionist - GBP Institutional)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (102, 'GBP', 35000.75);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (102, 'BTC', 0.85);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (102, 'ETH', 5.5);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (102, 'XRP', 8500);

-- Portofel 103 (Maria - RON Personal)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (103, 'RON', 4500.25);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (103, 'ETH', 0.85);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (103, 'DOGE', 25000);

-- Portofel 104 (Andrei - EUR Economii)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (104, 'EUR', 125.50);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (104, 'BTC', 0.005);

-- Portofel 105 (Cristian - EUR Investitii)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (105, 'EUR', 6200.85);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (105, 'BTC', 0.095);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (105, 'ADA', 320);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (105, 'DOT', 8.5);

-- Portofel 106 (Ana - RON Zilnic)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (106, 'RON', 1250.75);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (106, 'BTC', 0.012);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (106, 'ETH', 0.15);

-- Portofel 107 (George - EUR Trading)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (107, 'EUR', 1850.25);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (107, 'BTC', 0.015);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (107, 'ADA', 280);

-- Portofel 108 (George - EUR Business)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (108, 'EUR', 250.50);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (108, 'ETH', 0.08);

-- Portofel 109 (Ana - RON Crypto)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (109, 'RON', 6250.90);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (109, 'BTC', 0.025);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (109, 'SOL', 8.5);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (109, 'MATIC', 120);

-- Portofel 110 (Cristian - USD Backup)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (110, 'USD', 850.30);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (110, 'ETH', 0.12);

-- Portofel 111 (Mihail - RON Personal)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (111, 'RON', 3420.80);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (111, 'BTC', 0.018);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (111, 'ADA', 180);

-- Portofel 112 (Mihail - RON Emergency)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (112, 'RON', 450.75);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (112, 'ETH', 0.05);

-- Portofel 113 (Andrei - RON Zilnic)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (113, 'RON', 2850.40);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (113, 'BTC', 0.008);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (113, 'ADA', 420);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (113, 'DOGE', 15000);

-- Portofel 114 (Maria - USD Secondary)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (114, 'USD', 4200.75);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (114, 'BTC', 0.035);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (114, 'ETH', 0.85);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (114, 'SOL', 12.5);

-- Portofel 115 (Ion - EUR Principal)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (115, 'EUR', 1250.75);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (115, 'BTC', 0.125);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (115, 'ETH', 2.5);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (115, 'ADA', 150);

-- Portofel 116 (Ion - USD Trading)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (116, 'USD', 3200.50);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (116, 'BTC', 0.08);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (116, 'SOL', 8.2);

-- Portofel 117 (Corina - EUR Invest)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (117, 'EUR', 12500.40);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (117, 'BTC', 0.095);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (117, 'SOL', 22.5);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (117, 'BNB', 3.2);

-- Portofel 118 (Corina - EUR Principal)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (118, 'EUR', 8500.40);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (118, 'BTC', 0.065);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (118, 'ETH', 1.2);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (118, 'TRX', 3.5);

-- Portofel 119 (Elena - EUR Savings)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (119, 'EUR', 15200.85);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (119, 'BTC', 0.085);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (119, 'ETH', 1.8);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (119, 'DOT', 15.2);

-- Portofel 120 (Elena - USD Crypto)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (120, 'USD', 8750.30);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (120, 'BTC', 0.42);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (120, 'ETH', 3.8);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (120, 'SOL', 15.5);

-- Portofel 121 (Diana - USD Principal)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (121, 'USD', 4200.90);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (121, 'BTC', 0.035);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (121, 'SOL', 4.8);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (121, 'MATIC', 85);

-- Portofel 122 (Diana - USD Savings)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (122, 'USD', 9200.60);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (122, 'BTC', 0.045);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (122, 'ETH', 0.95);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (122, 'TRX', 6.8);

-- Portofel 123 (Sorin - AUD Virtual)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (123, 'AUD', 2500.75);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (123, 'BTC', 0.9);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (123, 'SOL', 7);
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (123, 'CHF', 8500);

-- Portofel 124 (Marcel - BTC Test)
INSERT INTO solduri (id_portofel, simbol, cantitate) VALUES (124, 'BTC', 0.002);

COMMIT;

-- 6. RETELE_BLOCKCHAIN
INSERT INTO retele_blockchain (cod_retea, nume_retea, explorer_url, nr_confirmari)
VALUES ('ERC20', 'Ethereum', 'https://etherscan.io', 12);

INSERT INTO retele_blockchain (cod_retea, nume_retea, explorer_url, nr_confirmari)
VALUES ('BEP20', 'Binance Smart Chain', 'https://bscscan.com', 15);

INSERT INTO retele_blockchain (cod_retea, nume_retea, explorer_url, nr_confirmari)
VALUES ('BTC', 'Bitcoin', 'https://blockchain.com', 3);

INSERT INTO retele_blockchain (cod_retea, nume_retea, explorer_url, nr_confirmari)
VALUES ('POS', 'Polygon', 'https://polygonscan.com', 10);

INSERT INTO retele_blockchain (cod_retea, nume_retea, explorer_url, nr_confirmari)
VALUES ('SOL', 'Solana', 'https://solscan.io', 1);

INSERT INTO retele_blockchain (cod_retea, nume_retea, explorer_url, nr_confirmari)
VALUES ('TRC20', 'TRON', 'https://tronscan.org', 8);

COMMIT;

-- 7. RETELE_ACTIVE
-- Ethereum
INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('ERC20', 'ETH', NULL, 0.003, 0.01, 'ACTIV');

INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('ERC20', 'USDT', '0xdac17f958d2ee523a2206206994597c13d831ec7', 0.005, 10, 'ACTIV');

INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('ERC20', 'USDC', '0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48', 0.005, 10, 'ACTIV');

INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('ERC20', 'MATIC', '0x7D1AfA7B718fb893dB30A3aBc0Cfc608AaCfeBB0', 0.004, 5, 'ACTIV');

-- Binance Smart Chain
INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('BEP20', 'BNB', NULL, 0.0002, 0.01, 'ACTIV');

INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('BEP20', 'BTC', '0x7130d2A12B9BCbFAe4f2634d864A1Ee1Ce3Ead9c', 0.001, 0.0001, 'ACTIV');

INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('BEP20', 'ETH', '0x2170ed0880ac9a755fd29b2688956bd959f933f8', 0.001, 0.001, 'ACTIV');

-- Polygon
INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('POS', 'MATIC', NULL, 0.001, 1, 'ACTIV');

INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('POS', 'USDT', '0xc2132D05D31c914a87C6611C10748AEb04B58e8F', 0.002, 5, 'ACTIV');

-- Bitcoin
INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('BTC', 'BTC', NULL, 0.0001, 0.0005, 'ACTIV');

-- Solana
INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('SOL', 'SOL', NULL, 0.00001, 0.01, 'ACTIV');

INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('SOL', 'USDC', 'EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v', 0.0001, 1, 'ACTIV');

-- Tron
INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('TRC20', 'TRX', NULL, 0.001, 0.1, 'ACTIV');

-- Rețele în mentenanță
INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('POS', 'ETH', '0x7ceB23fD6bC0adD59E62ac25578270cFf1b9f619', 0.002, 0.005, 'MENTENANTA');

-- Rețele suspendate
INSERT INTO retele_active (cod_retea, simbol, adresa_contract, comision_operatiune, depunere_minima, stare_operatiuni)
VALUES ('ERC20', 'LTC', '0x5BEfBB272290dD5b8521D4a938f6c4757742c430', 0.004, 0.1, 'SUSPENDAT');

COMMIT;

-- 8. PERECHI_ACTIVE
-- Perechi BTC
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('BTC', 'GBP', 0.0015, 0.0001, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('BTC', 'USD', 0.001, 0.0001, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('BTC', 'EUR', 0.0015, 0.0001, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('BTC', 'USDT', 0.001, 0.0001, 'ACTIVA');

-- Perechi ETH
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('ETH', 'RON', 0.002, 0.001, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('ETH', 'USD', 0.001, 0.001, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('ETH', 'EUR', 0.0015, 0.001, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('ETH', 'BTC', 0.001, 0.01, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('ETH', 'USDT', 0.001, 0.001, 'ACTIVA');

-- Perechi SOL
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('SOL', 'EUR', 0.002, 0.1, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('SOL', 'USD', 0.001, 0.1, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('SOL', 'USDT', 0.002, 0.1, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('SOL', 'ETH', 0.0015, 0.5, 'ACTIVA');

-- Perechi ADA
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('ADA', 'USDT', 0.002, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('ADA', 'BTC', 0.002, 100, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('ADA', 'USD', 0.001, 10, 'ACTIVA');

-- Perechi XRP
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('XRP', 'EUR', 0.0015, 10, 'DOAR_CUMPARARE');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('XRP', 'USD', 0.001, 10, 'ACTIVA');

-- Perechi DOT
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('DOT', 'USD', 0.002, 0.5, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('DOT', 'ETH', 0.0015, 1, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('DOT', 'USDT', 0.001, 1, 'ACTIVA');

-- Perechi BNB
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('BNB', 'USDT', 0.001, 0.01, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('BNB', 'BTC', 0.001, 0.01, 'ACTIVA');

-- Perechi MATIC
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('MATIC', 'ETH', 0.002, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('MATIC', 'USD', 0.001, 1, 'ACTIVA');

-- Perechi DOGE
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('DOGE', 'USDT', 0.0025, 100, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('DOGE', 'BTC', 0.003, 1000, 'SUSPENDATA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('DOGE', 'USD', 0.002, 100, 'ACTIVA');

-- Perechi SHIB
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('SHIB', 'ETH', 0.003, 100000, 'DOAR_VANZARE');

-- Perechi TRX
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('TRX', 'USD', 0.001, 0.1, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('TRX', 'BTC', 0.002, 0.1, 'ACTIVA');

-- Perechi fiat-fiat
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('EUR', 'RON', 0.001, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('USD', 'GBP', 0.001, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('EUR', 'CHF', 0.001, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('JPY', 'USD', 0.001, 1000, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('CAD', 'EUR', 0.001, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('AUD', 'USD', 0.001, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('CHF', 'EUR', 0.001, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('EUR', 'USD', 0.0005, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('USD', 'EUR', 0.0005, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('USD', 'RON', 0.001, 5, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('RON', 'EUR', 0.001, 50, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('GBP', 'USD', 0.0005, 10, 'ACTIVA');

-- Perechi stablecoin
INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('USDT', 'USDC', 0.0001, 10, 'ACTIVA');

INSERT INTO perechi_active (simbol_baza, simbol_citat, comision_standard, cantitate_minima_ordin, stare_pereche)
VALUES ('USDC', 'USDT', 0.0001, 10, 'ACTIVA');

COMMIT;

-- 8. ORDINE
-- 2023
INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1001, 101, 'USDT', 'USDC', 'LIMIT', 'BUY', 5000, 1.001, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-01 12:15:45', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1002, 113, 'BTC', 'GBP', 'LIMIT', 'BUY', 0.02, 33000.00, 'ACTIV', TO_TIMESTAMP('2023-12-02 14:30:05', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1003, 111, 'BNB', 'USDT', 'MARKET', 'BUY', 0.5, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-03 09:25:35', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1004, 114, 'CHF', 'EUR', 'MARKET', 'SELL', 150, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-03 11:05:50', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1005, 101, 'AUD', 'USD', 'LIMIT', 'BUY', 200, 0.655, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-04 16:50:35', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1006, 106, 'MATIC', 'ETH', 'LIMIT', 'BUY', 50, 0.00062, 'ACTIV', TO_TIMESTAMP('2023-12-05 11:35:25', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1007, 111, 'JPY', 'USD', 'MARKET', 'BUY', 50000, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-06 14:20:05', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1008, 105, 'BTC', 'EUR', 'MARKET', 'SELL', 0.05, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-06 15:10:40', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1009, 103, 'EUR', 'RON', 'LIMIT', 'BUY', 500, 4.92, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-08 10:20:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1010, 106, 'USD', 'GBP', 'LIMIT', 'BUY', 300, 0.79, 'ACTIV', TO_TIMESTAMP('2023-12-08 16:30:35', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1011, 105, 'MATIC', 'ETH', 'LIMIT', 'SELL', 50, 0.00065, 'ANULAT', TO_TIMESTAMP('2023-12-10 14:25:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1012, 103, 'XRP', 'EUR', 'LIMIT', 'BUY', 100, 0.55, 'ANULAT', TO_TIMESTAMP('2023-12-11 09:10:05', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1013, 102, 'BTC', 'GBP', 'LIMIT', 'SELL', 0.2, 34000.00, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-11 11:25:40', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1014, 106, 'SOL', 'USD', 'LIMIT', 'SELL', 5.5, 98.25, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-11 14:15:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1015, 109, 'ADA', 'USDT', 'LIMIT', 'SELL', 200, 0.45, 'EXECUTAT_PARTIAL', TO_TIMESTAMP('2023-12-11 16:15:10', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1016, 113, 'ETH', 'RON', 'MARKET', 'SELL', 0.5, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-12 14:30:45', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1017, 103, 'ADA', 'BTC', 'MARKET', 'SELL', 200, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-12 16:45:18', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1018, 114, 'BTC', 'USD', 'LIMIT', 'BUY', 0.03, 42500.00, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-13 10:45:20', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1019, 101, 'BTC', 'USD', 'LIMIT', 'BUY', 0.25, 41500.00, 'EXECUTAT_PARTIAL', TO_TIMESTAMP('2023-12-13 14:20:10', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1020, 101, 'BNB', 'BTC', 'LIMIT', 'SELL', 1.2, 0.0085, 'ACTIV', TO_TIMESTAMP('2023-12-13 23:50:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1021, 101, 'USD', 'RON', 'MARKET', 'SELL', 1000, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2023-12-14 08:20:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1022, 105, 'ADA', 'USDT', 'LIMIT', 'BUY', 100, 0.42, 'ACTIV', TO_TIMESTAMP('2023-12-14 10:45:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1023, 101, 'BTC', 'USD', 'LIMIT', 'SELL', 0.1, 43000.00, 'ACTIV', TO_TIMESTAMP('2023-12-14 13:15:22', 'YYYY-MM-DD HH24:MI:SS'));


-- 2024
INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1024, 118, 'TRX', 'BTC', 'LIMIT', 'SELL', 3, 0.00085, 'ACTIV', TO_TIMESTAMP('2024-12-02 16:40:20', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1025, 118, 'CAD', 'EUR', 'LIMIT', 'SELL', 150, 0.675, 'ANULAT', TO_TIMESTAMP('2024-12-05 09:35:20', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1026, 116, 'SOL', 'USD', 'MARKET', 'SELL', 5, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2024-12-09 16:30:45', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1027, 115, 'ADA', 'BTC', 'LIMIT', 'BUY', 100, 0.0000245, 'ACTIV', TO_TIMESTAMP('2024-12-10 14:15:20', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1028, 116, 'DOGE', 'USDT', 'MARKET', 'SELL', 10000, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2024-12-12 17:20:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1029, 115, 'XRP', 'USD', 'LIMIT', 'BUY', 200, 0.58, 'ACTIV', TO_TIMESTAMP('2024-12-13 08:45:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1030, 118, 'BTC', 'USD', 'LIMIT', 'BUY', 0.02, 42100.00, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2024-12-13 11:20:45', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1031, 115, 'BTC', 'USD', 'LIMIT', 'BUY', 0.05, 42000.50, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2024-12-14 09:30:25', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1032, 115, 'ETH', 'USD', 'MARKET', 'BUY', 1.2, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2024-12-14 10:15:42', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1033, 115, 'ETH', 'USD', 'LIMIT', 'BUY', 0.5, 2250.00, 'ACTIV', TO_TIMESTAMP('2024-12-14 21:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1034, 115, 'USD', 'EUR', 'LIMIT', 'BUY', 250, 0.92, 'ACTIV', TO_TIMESTAMP('2024-12-14 22:45:10', 'YYYY-MM-DD HH24:MI:SS'));


-- 2025
INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1035, 121, 'DOT', 'USD', 'LIMIT', 'SELL', 5, 7.85, 'EXECUTAT_PARTIAL', TO_TIMESTAMP('2025-12-04 14:50:10', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1036, 121, 'EUR', 'CHF', 'LIMIT', 'SELL', 400, 0.955, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2025-12-07 11:45:50', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1037, 120, 'ETH', 'USD', 'LIMIT', 'BUY', 1, 2300.00, 'ANULAT', TO_TIMESTAMP('2025-12-07 13:45:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1038, 120, 'GBP', 'USD', 'LIMIT', 'SELL', 200, 1.265, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2025-12-10 14:50:25', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1039, 121, 'XRP', 'USD', 'MARKET', 'BUY', 500, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2025-12-12 09:30:45', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1040, 121, 'ETH', 'USDT', 'MARKET', 'BUY', 0.3, NULL, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2025-12-12 15:30:20', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1041, 120, 'ETH', 'BTC', 'LIMIT', 'BUY', 1.5, 0.054, 'ACTIV', TO_TIMESTAMP('2025-12-13 10:30:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1042, 122, 'ETH', 'BTC', 'LIMIT', 'SELL', 0.8, 0.053, 'ACTIV', TO_TIMESTAMP('2025-12-13 13:30:25', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1043, 120, 'EUR', 'USD', 'LIMIT', 'BUY', 500, 1.085, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2025-12-13 15:40:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1044, 120, 'SOL', 'USDT', 'LIMIT', 'SELL', 10.5, 95.75, 'EXECUTAT_TOTAL', TO_TIMESTAMP('2025-12-14 11:05:33', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1045, 119, 'SOL', 'EUR', 'LIMIT', 'BUY', 8, 88.50, 'ACTIV', TO_TIMESTAMP('2025-12-14 11:20:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1046, 123, 'BTC', 'USD', 'LIMIT', 'BUY', 0.9, 700.00, 'ACTIV', TO_TIMESTAMP('2025-12-20 10:15:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO ordine (id_ordin, id_portofel, simbol_baza, simbol_citat, tip_ordin, directie, cantitate, pret, stare, data_plasarii)
VALUES (1047, 124, 'BTC', 'EUR', 'LIMIT', 'BUY', 0.002, 35000.00, 'ACTIV', TO_TIMESTAMP('2025-12-25 14:30:05', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;

-- 10. TRANZACTII
-- 2023
INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5001, 1001, 5000, 1.001, 5.00, TO_TIMESTAMP('2023-12-01 12:20:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5002, 1003, 0.5, 314.20, 0.31, TO_TIMESTAMP('2023-12-03 09:30:10', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5003, 1004, 150, 1.04, 0.15, TO_TIMESTAMP('2023-12-03 11:10:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5004, 1005, 200, 0.655, 0.13, TO_TIMESTAMP('2023-12-04 16:55:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5005, 1007, 50000, 0.0067, 0.33, TO_TIMESTAMP('2023-12-06 14:25:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5006, 1008, 0.05, 39150.00, 1.95, TO_TIMESTAMP('2023-12-06 15:15:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5007, 1009, 500, 4.92, 2.46, TO_TIMESTAMP('2023-12-08 10:25:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5008, 1013, 0.2, 34000.00, 6.80, TO_TIMESTAMP('2023-12-11 11:27:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5009, 1014, 5.5, 98.25, 0.54, TO_TIMESTAMP('2023-12-11 14:16:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5010, 1016, 0.5, 11450.00, 11.45, TO_TIMESTAMP('2023-12-12 14:32:10', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5011, 1017, 200, 0.0000241, 0.00000964, TO_TIMESTAMP('2023-12-12 16:46:05', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5012, 1018, 0.03, 42500.00, 1.28, TO_TIMESTAMP('2023-12-13 10:46:05', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5013, 1021, 1000, 4.54, 4.54, TO_TIMESTAMP('2023-12-14 08:21:00', 'YYYY-MM-DD HH24:MI:SS'));

-- 2024
INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5014, 1026, 5, 96.45, 0.48, TO_TIMESTAMP('2024-12-09 16:35:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5015, 1028, 10000, 0.091, 0.91, TO_TIMESTAMP('2024-12-12 17:25:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5016, 1030, 0.02, 42100.00, 0.84, TO_TIMESTAMP('2024-12-13 11:21:10', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5017, 1031, 0.05, 42000.50, 2.10, TO_TIMESTAMP('2024-12-14 09:31:05', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5018, 1032, 1.2, 2287.34, 2.75, TO_TIMESTAMP('2024-12-14 10:16:02', 'YYYY-MM-DD HH24:MI:SS'));

-- 2025
INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5019, 1036, 400, 0.955, 0.38, TO_TIMESTAMP('2025-12-07 11:50:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5020, 1038, 200, 1.265, 0.25, TO_TIMESTAMP('2025-12-10 14:55:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5021, 1039, 500, 0.62, 0.31, TO_TIMESTAMP('2025-12-12 09:31:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5022, 1040, 0.3, 2289.50, 0.69, TO_TIMESTAMP('2025-12-12 15:31:05', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5023, 1043, 500, 1.085, 0.54, TO_TIMESTAMP('2025-12-13 15:41:10', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO tranzactii (id_tranzactie, id_ordin, cantitate, pret_executie, comision_aplicat, data_executie)
VALUES (5024, 1044, 10.5, 95.75, 2.01, TO_TIMESTAMP('2025-12-14 11:06:15', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;

-- 11. EVENIMENTE
INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10001, 1, 'LOGIN', 'SUCCES', 'Autentificare reușită cu 2FA', '93.119.12.78', TO_TIMESTAMP('2022-11-01 08:15:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10002, 1, 'DEPUNERE', 'SUCCES', 'Depunere 10000 USDT prin BSC', '93.119.12.78', TO_TIMESTAMP('2022-11-02 09:15:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10003, 2, 'LOGIN', 'SUCCES', 'Autentificare reușită', '79.112.88.45', TO_TIMESTAMP('2023-02-20 10:10:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10004, 2, 'DEPUNERE', 'ESUAT', 'Cont bancar nevalidat', '79.112.88.45', TO_TIMESTAMP('2023-02-23 16:10:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10005, 4, 'LOGIN', 'SUCCES', 'Autentificare reușită', '77.89.123.45', TO_TIMESTAMP('2023-05-12 13:15:35', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10006, 5, 'LOGIN', 'SUCCES', 'Autentificare reușită', '84.56.78.90', TO_TIMESTAMP('2023-06-20 10:45:50', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10007, 7, 'LOGIN', 'SUCCES', 'Autentificare reușită', '85.56.78.90', TO_TIMESTAMP('2023-09-15 16:40:20', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10008, 1, 'RETRAGERE', 'SUCCES', 'Retragere 10000 EUR către cont bancar', '93.119.12.78', TO_TIMESTAMP('2023-12-02 09:45:20', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10009, 6, 'LOGIN', 'ESUAT', 'Parolă incorectă', '45.138.72.91', TO_TIMESTAMP('2023-12-05 11:25:40', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10010, 6, 'SCHIMBARE_PAROLA', 'SUCCES', 'Parolă resetată prin email', '45.138.72.91', TO_TIMESTAMP('2023-12-05 11:30:30', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10011, 3, 'RETRAGERE', 'ESUAT', 'Cont bancar respins', '91.216.145.33', TO_TIMESTAMP('2023-12-07 10:30:20', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10012, 3, 'LOGIN', 'ESUAT', 'Parolă incorectă', '188.25.63.144', TO_TIMESTAMP('2023-12-13 22:45:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10013, 8, 'DEPUNERE', 'SUCCES', 'Depunere bancară 500 EUR confirmată', '86.127.45.123', TO_TIMESTAMP('2024-01-15 14:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10014, 8, 'LOGIN', 'SUCCES', 'Autentificare reușită', '86.127.45.123', TO_TIMESTAMP('2024-01-17 09:25:10', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10015, 8, 'RETRAGERE', 'SUCCES', 'Retragere 0.1 BTC către wallet extern', '86.127.45.123', TO_TIMESTAMP('2024-01-17 18:30:10', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10016, 10, 'LOGIN', 'SUCCES', 'Autentificare reușită', '193.231.205.89', TO_TIMESTAMP('2025-04-05 11:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10017, 10, 'DEPUNERE', 'SUCCES', 'Depunere crypto 0.5 BTC confirmată', '193.231.205.89', TO_TIMESTAMP('2025-04-05 11:20:45', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10018, 10, 'RETRAGERE', 'SUCCES', 'Retragere 5000 USDT către Polygon', '193.231.205.89', TO_TIMESTAMP('2025-05-08 14:20:15', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10019, 10, 'SCHIMBARE_PAROLA', 'SUCCES', 'Parolă actualizată cu succes', '193.231.205.89', TO_TIMESTAMP('2025-05-08 15:40:22', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO evenimente (id_eveniment, id_utilizator, tip_eveniment, status_actiune, mesaj_sistem, adresa_ip, data_ora)
VALUES (10020, 11, 'LOGIN', 'SUCCES', 'Autentificare reușită cu 2FA', '92.34.56.78', TO_TIMESTAMP('2025-08-30 15:25:05', 'YYYY-MM-DD HH24:MI:SS'));

COMMIT;

-- Rezumat
SELECT 'UTILIZATORI: ' || COUNT(*) as STATISTICI
FROM utilizatori
UNION ALL
SELECT 'CONTURI BANCARE: ' || COUNT(*)
FROM conturi_bancare
UNION ALL
SELECT 'PORTOFELE: ' || COUNT(*)
FROM portofele
UNION ALL
SELECT 'SOLDURI: ' || COUNT(*)
FROM solduri
UNION ALL
SELECT 'ACTIVE: ' || COUNT(*)
FROM active_tranzactionabile
UNION ALL
SELECT 'RETELE BLOCKCHAIN: ' || COUNT(*)
FROM retele_blockchain
UNION ALL
SELECT 'RETELE ACTIVE: ' || COUNT(*)
FROM retele_active
UNION ALL
SELECT 'PERECHI ACTIVE: ' || COUNT(*)
FROM perechi_active
UNION ALL
SELECT 'ORDINE: ' || COUNT(*)
FROM ordine
UNION ALL
SELECT 'TRANZACTII: ' || COUNT(*)
FROM tranzactii
UNION ALL
SELECT 'EVENIMENTE: ' || COUNT(*)
FROM evenimente;

