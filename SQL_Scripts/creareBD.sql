	DROP TABLE evenimente CASCADE CONSTRAINTS;
	DROP TABLE tranzactii CASCADE CONSTRAINTS;
	DROP TABLE ordine CASCADE CONSTRAINTS;	
	DROP TABLE perechi_active CASCADE CONSTRAINTS;
	DROP TABLE retele_active CASCADE CONSTRAINTS;
	DROP TABLE retele_blockchain CASCADE CONSTRAINTS;
	DROP TABLE solduri CASCADE CONSTRAINTS;
	DROP TABLE active_tranzactionabile CASCADE CONSTRAINTS;
	DROP TABLE portofele CASCADE CONSTRAINTS;
	DROP TABLE conturi_bancare CASCADE CONSTRAINTS;
	DROP TABLE utilizatori CASCADE CONSTRAINTS;
    DROP VIEW V_DETALII_BANCARE CASCADE CONSTRAINTS;
    DROP VIEW V_LISTA_UTILIZATORI CASCADE CONSTRAINTS;
    DROP VIEW V_STATISTICI_PORTOFELE CASCADE CONSTRAINTS;


CREATE TABLE utilizatori(
	id_utilizator NUMBER CONSTRAINT pk_utilizatori PRIMARY KEY,
	email VARCHAR2(100) CONSTRAINT uk_utilizatori_email UNIQUE CONSTRAINT nn_utilizatori_email NOT NULL,
	nume VARCHAR2(30) CONSTRAINT nn_utilizatori_nume NOT NULL,
	prenume VARCHAR2(60) CONSTRAINT nn_utilizatori_prenume NOT NULL,
	parola_hash VARCHAR2(255) CONSTRAINT nn_utilizatori_parola_hash NOT NULL,
	telefon VARCHAR2(20) CONSTRAINT nn_utilizatori_telefon NOT NULL 
						 CONSTRAINT ck_utilizatori_telefon CHECK (telefon LIKE '+%'),
	two_fa_activ NUMBER (1) CONSTRAINT ck_utilizatori_two_fa_activ CHECK (two_fa_activ IN (0, 1)) 
							CONSTRAINT nn_utilizatori_two_fa_activ NOT NULL,
	data_inreg DATE DEFAULT SYSDATE CONSTRAINT nn_utilizatori_data_inreg NOT NULL);

CREATE TABLE conturi_bancare(
	iban VARCHAR2(35) CONSTRAINT pk_conturi_bancare PRIMARY KEY, 
	id_utilizator NUMBER CONSTRAINT nn_conturi_bancare_id_utilizator NOT NULL 
							CONSTRAINT fk_conturi_utilizator
								REFERENCES utilizatori(id_utilizator) ON DELETE CASCADE,
	nume_titular VARCHAR2(100) CONSTRAINT nn_conturi_bancare_nume_titular NOT NULL,
	nume_banca VARCHAR2(30) CONSTRAINT nn_conturi_bancare_nume_banca NOT NULL,
	cod_swift VARCHAR2(11) CONSTRAINT nn_conturi_bancare_cod_swift NOT NULL,
	moneda VARCHAR2(3) CONSTRAINT nn_conturi_bancare_moneda NOT NULL,
	stare_verificare VARCHAR2(15) CONSTRAINT nn_conturi_bancare_stare_verificare NOT NULL,
								  CONSTRAINT ck_conturi_bancare_stare_verificare 
									CHECK (stare_verificare IN ('IN_ASTEPTARE', 'VALIDAT', 'RESPINS')));

CREATE TABLE portofele(
    id_portofel NUMBER CONSTRAINT pk_portofele PRIMARY KEY,
    id_utilizator NUMBER CONSTRAINT fk_portofele_utilizatori REFERENCES utilizatori(id_utilizator) ON DELETE CASCADE
                         CONSTRAINT nn_portofele_id_utilizator NOT NULL,
    nume_portofel VARCHAR2(50) CONSTRAINT nn_portofele_nume NOT NULL,
                               CONSTRAINT uk_portofele_user_nume UNIQUE (id_utilizator, nume_portofel),
    plafon_retragere_zilnica NUMBER CONSTRAINT ck_portofele_plafon_retragere_zilnica
                                        CHECK (plafon_retragere_zilnica > 0)
                                    CONSTRAINT nn_portofele_plafon_retragere_zilnica NOT NULL,
    moneda_referinta VARCHAR2(3) CONSTRAINT nn_portofele_moneda_referinta NOT NULL,
    data_creare DATE DEFAULT SYSDATE CONSTRAINT nn_portofele_data_creare NOT NULL
);

CREATE TABLE active_tranzactionabile(
	simbol VARCHAR2(10) CONSTRAINT pk_active_tranzactionabile PRIMARY KEY,
	nume_activ VARCHAR2(30) CONSTRAINT nn_active_tranzactionabile_nume_activ NOT NULL
							CONSTRAINT uk_active_tranzactionabile_nume_activ UNIQUE,
	tip_activ VARCHAR2(10)  CONSTRAINT ck_active_tranzactionabile_tip_activ 
							  CHECK (tip_activ IN ('FIAT', 'CRYPTO'))
							CONSTRAINT nn_active_tranzactionabile_tip_activ NOT NULL,
	status_activ VARCHAR2(10) CONSTRAINT ck_active_tranzactionabile_status_activ 
								CHECK (status_activ IN ('ACTIV','INACTIV','DELISTAT'))
							 CONSTRAINT nn_active_tranzactionabile_status_activ NOT NULL);

CREATE TABLE solduri(
	id_portofel NUMBER CONSTRAINT fk_solduri_portofele REFERENCES portofele(id_portofel) ON DELETE CASCADE,
	simbol VARCHAR2(10)CONSTRAINT fk_solduri_active_tranzactionabile 
						 REFERENCES active_tranzactionabile(simbol),
	cantitate NUMBER DEFAULT 0 CONSTRAINT nn_solduri_cantitate NOT NULL
					 CONSTRAINT ck_solduri_cantitate CHECK (cantitate>=0));
ALTER TABLE solduri ADD CONSTRAINT pk_solduri PRIMARY KEY (id_portofel,simbol);

CREATE TABLE retele_blockchain(
	cod_retea VARCHAR2(10) CONSTRAINT pk_retele_blockchain PRIMARY KEY,
	nume_retea VARCHAR2(20) CONSTRAINT nn_retele_blockchain_nume_retea NOT NULL
							CONSTRAINT uk_retele_blockchain_nume_retea UNIQUE,
	explorer_url VARCHAR2(100) CONSTRAINT nn_retele_blockchain_explorer_url NOT NULL,
	nr_confirmari NUMBER CONSTRAINT nn_retele_blockchain_nr_confirmari NOT NULL
						 CONSTRAINT ck_retele_blockchain_nr_confirmari CHECK (nr_confirmari>0));
					 
CREATE TABLE retele_active(
	cod_retea VARCHAR2(10) CONSTRAINT fk_retele_active_retele_blockchain REFERENCES retele_blockchain(cod_retea)
						  CONSTRAINT nn_retele_active_cod_retea NOT NULL,
	simbol VARCHAR2(10) CONSTRAINT fk_retele_active_active_tranzactionabile 
							REFERENCES active_tranzactionabile(simbol)
						CONSTRAINT nn_retele_active_simbol NOT NULL,
	adresa_contract VARCHAR2(50),
	comision_operatiune NUMBER CONSTRAINT nn_retele_active_comision_operatiune NOT NULL
							   CONSTRAINT ck_retele_active_comision_operatiune CHECK (comision_operatiune>=0),
	depunere_minima NUMBER CONSTRAINT nn_retele_active_depunere_minima NOT NULL
						   CONSTRAINT ck_retele_active_depunere_minima CHECK(depunere_minima>0),
	stare_operatiuni VARCHAR2(10) CONSTRAINT nn_retele_active_stare_operatiuni NOT NULL
								  CONSTRAINT ck_retele_active_stare_operatiuni 
									CHECK (stare_operatiuni IN ('ACTIV','MENTENANTA','SUSPENDAT')));
ALTER TABLE retele_active ADD CONSTRAINT pk_retele_active PRIMARY KEY (cod_retea,simbol);

CREATE TABLE perechi_active(
	simbol_baza VARCHAR2(10) CONSTRAINT fk1_perechi_active_active_tranzactionabile 
								REFERENCES active_tranzactionabile(simbol)
							 CONSTRAINT nn_perechi_active_simbol_baza NOT NULL,
	simbol_citat VARCHAR2(10) CONSTRAINT fk2_perechi_active_active_tranzactionabile 			
								REFERENCES active_tranzactionabile(simbol)
							  CONSTRAINT nn_perechi_active_simbol_citat NOT NULL,
	comision_standard NUMBER CONSTRAINT nn_perechi_active_comision_standard NOT NULL,
							 CONSTRAINT ck_perechi_active_comision_standard CHECK (comision_standard>=0),
	cantitate_minima_ordin NUMBER CONSTRAINT nn_perechi_active_cantitate_minima_ordin NOT NULL
						   CONSTRAINT ck_perechi_active_cantitate_minima_ordin 
							CHECK (cantitate_minima_ordin>0),
	stare_pereche VARCHAR2(15) CONSTRAINT nn_perechi_active_stare_pereche NOT NULL
							   CONSTRAINT ck_perechi_active_stare_pereche
								CHECK (stare_pereche IN ('ACTIVA', 'SUSPENDATA', 'DOAR_VANZARE', 'DOAR_CUMPARARE')));
ALTER TABLE perechi_active ADD CONSTRAINT pk_perechi_active PRIMARY KEY (simbol_baza, simbol_citat);

CREATE TABLE ordine (
    id_ordin NUMBER CONSTRAINT pk_ordine PRIMARY KEY,
    id_portofel NUMBER CONSTRAINT fk_ordine_portofele REFERENCES portofele(id_portofel) ON DELETE CASCADE
                        CONSTRAINT nn_ordine_id_portofel NOT NULL,
    simbol_baza VARCHAR2(10) CONSTRAINT nn_ordine_simbol_baza NOT NULL,
    simbol_citat VARCHAR2(10) CONSTRAINT nn_ordine_simbol_citat NOT NULL,
    tip_ordin VARCHAR2(10) CONSTRAINT nn_ordine_tip_ordin NOT NULL
                           CONSTRAINT ck_ordine_tip_ordin CHECK (tip_ordin in ('MARKET', 'LIMIT')),
    directie VARCHAR2(5) CONSTRAINT nn_ordine_directie NOT NULL 
                         CONSTRAINT ck_ordine_directie CHECK (directie IN ('BUY', 'SELL')),
    cantitate NUMBER CONSTRAINT nn_ordine_cantitate NOT NULL
                     CONSTRAINT ck_ordine_cantitate CHECK (cantitate>0),
    pret NUMBER CONSTRAINT ck_ordine_pret CHECK (pret>0),
    stare VARCHAR2(20) CONSTRAINT nn_ordine_stare NOT NULL
                       CONSTRAINT ck_ordine_stare 
                        CHECK (stare IN ('ACTIV', 'EXECUTAT_TOTAL', 'EXECUTAT_PARTIAL', 'ANULAT')),            
    data_plasarii TIMESTAMP DEFAULT SYSDATE CONSTRAINT nn_ordine_data_plasarii NOT NULL,    
    CONSTRAINT ck_ordine_pret_limit CHECK (
        (tip_ordin = 'LIMIT' AND pret IS NOT NULL) OR 
        (tip_ordin = 'MARKET')
    ),
    CONSTRAINT fk_ordine_perechi_active FOREIGN KEY (simbol_baza, simbol_citat) 
        REFERENCES perechi_active(simbol_baza, simbol_citat));

CREATE TABLE tranzactii(
	id_tranzactie NUMBER CONSTRAINT pk_tranzactii PRIMARY KEY,
	id_ordin NUMBER CONSTRAINT fk_tranzactii_ordine REFERENCES ordine(id_ordin) ON DELETE CASCADE
					CONSTRAINT nn_tranzactii_id_ordin NOT NULL,
	cantitate NUMBER CONSTRAINT nn_tranzactii_cantitate NOT NULL
					 CONSTRAINT ck_tranzactii_cantitate CHECK (cantitate>0),
	pret_executie NUMBER CONSTRAINT nn_tranzactii_pret_executie NOT NULL
						 CONSTRAINT ck_tranzactii_pret_executie CHECK (pret_executie>0),
    comision_aplicat NUMBER CONSTRAINT nn_tranzactii_comision_aplicat NOT NULL
							CONSTRAINT ck_tranzactii_comision_aplicat CHECK (comision_aplicat>=0),
	data_executie TIMESTAMP DEFAULT SYSDATE CONSTRAINT nn_tranzactii_data_executie NOT NULL);

CREATE TABLE evenimente(
	id_eveniment NUMBER CONSTRAINT pk_evenimente PRIMARY KEY,
	id_utilizator NUMBER CONSTRAINT fk_evenimente_utilizatori 
							REFERENCES utilizatori(id_utilizator) ON DELETE CASCADE
						 CONSTRAINT nn_evenimente_id_utilizator NOT NULL,
	tip_eveniment VARCHAR2(20) CONSTRAINT nn_evenimente_tip_eveniment NOT NULL,
							   CONSTRAINT ck_evenimente_tip_eveniment 
								CHECK (tip_eveniment IN ('LOGIN', 'DEPUNERE', 'SCHIMBARE_PAROLA', 'RETRAGERE')),
	status_actiune VARCHAR2(10) CONSTRAINT nn_evenimente_status_actiune NOT NULL
								CONSTRAINT ck_evenimente_status_actiune CHECK(status_actiune in ('SUCCES', 'ESUAT')),
	mesaj_sistem VARCHAR2(255),
	adresa_ip VARCHAR2(45) CONSTRAINT nn_evenimente_adresa_ip NOT NULL,
	data_ora TIMESTAMP DEFAULT SYSDATE CONSTRAINT nn_evenimente_data_ora NOT NULL);

COMMIT;

-- III.f: Vizualizări

-- 1. VIZUALIZARE SIMPLĂ (Un singur tabel)
CREATE OR REPLACE VIEW V_LISTA_UTILIZATORI AS
SELECT id_utilizator, nume, prenume, email, data_inreg
FROM utilizatori;

-- 2. VIZUALIZARE COMPUSĂ (JOIN Editabil)
CREATE OR REPLACE VIEW V_DETALII_BANCARE AS
SELECT c.iban, u.nume, u.prenume, c.nume_banca, c.moneda, u.id_utilizator
FROM utilizatori u
         JOIN conturi_bancare c ON u.id_utilizator = c.id_utilizator;

-- 3. VIZUALIZARE COMPLEXĂ (Funcții Grup & Group By)
CREATE OR REPLACE VIEW V_STATISTICI_PORTOFELE AS
SELECT u.nume,
       u.prenume,
       p.nume_portofel,
       COUNT(s.simbol) AS "NR. ACTIVE",
       NVL(SUM(s.cantitate), 0) AS "VOLUM TOTAL"
FROM utilizatori u
         JOIN portofele p ON u.id_utilizator = p.id_utilizator
         LEFT JOIN solduri s ON p.id_portofel = s.id_portofel
GROUP BY u.id_utilizator, u.nume, u.prenume, p.id_portofel, p.nume_portofel;

COMMIT;
