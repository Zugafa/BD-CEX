# 🪙 Centralized Crypto Exchange (CEX) Database System

Acest proiect reprezintă modelarea unei baze de date relaționale destinate administrării unei **Platforme Centralizate de Tranzacționare a Activelor Digitale**. Sistemul este conceput utilizând **Oracle Database** pentru a demonstra arhitectura backend necesară unui sistem financiar robust.

## 📊 Arhitectura Sistemului
Baza de date este compusă din **11 tabele** interconectate care gestionează fluxul complet al activelor, de la identitatea utilizatorului până la execuția ordinelor:

* **Utilizatori & Securitate**: Gestionează credențialele, hash-urile parolelor și autentificarea în doi pași (2FA).
* **Structură Multi-Portofel**: Permite segregarea activelor pe portofele specifice (ex: Economii, Trading) sub același cont de utilizator.
* **Sistem Ledger (Solduri)**: Monitorizează cantitățile fracționare de active deținute.
* **Motor de Tranzacționare**: Include perechi de active, ordine de tip LIMIT/MARKET și istoricul execuțiilor (Tranzacții).
* **Infrastructură Blockchain & Fiat**: Maparea activelor digitale pe rețele specifice (ERC20, BEP20, BTC etc.) și integrarea conturilor bancare externe pentru depuneri/retrageri.
* **Audit Log (Evenimente)**: Trasabilitatea acțiunilor sensibile (Login, Schimbare parolă, Retrageri) pentru securitate și conformitate.

## 🛠️ Detalii Tehnice & Constrângeri
Proiectul pune accent pe integritatea datelor financiare prin:
* **Constrângeri**: Validări de tip `CHECK` (solduri și prețuri > 0), chei primare compuse și reguli de unicitate.
* **Integritate Referențială**: Utilizarea regulii `ON DELETE CASCADE` pentru a asigura consistența datelor la ștergerea conturilor.
* **Modelare E/R**: O diagramă entitate-relație detaliată care definește cardinalitățile și regulile de business.

## 🚀 Cum se utilizează
1.  **Instalare**: Rulează scriptul de DDL (`creareBD.sql`) într-un mediu Oracle (DataGrip, SQL Developer) pentru a genera tabelele și vizualizările.
2.  **Populare**: Rulează scriptul de DML (`populareBD.sql`) pentru a insera datele de test (13 utilizatori, peste 20 de portofele și istoric de tranzacții).
3.  **Analiză**: Utilizează vizualizările predefinite precum `V_STATISTICI_PORTOFELE` pentru a obține rapoarte consolidate asupra distribuției activelor.

## 👨‍💻 Autor
**Nițuică Andrei-Sebastian** Specializarea Calculatoare și Tehnologia Informației, Universitatea din București.  
Coordonator: Lect. Dr. Silviu Laurențiu Vasile.

---
*Acest proiect a fost realizat în scop academic pentru disciplina Baze de Date (2025).*
