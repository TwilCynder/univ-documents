--q1
SELECT COUNT(*) FROM GILLES_HUBERT.SRC1_CATEGORIES;
SELECT COUNT(*) FROM GILLES_HUBERT.SRC1_ENSEIGNES;
SELECT COUNT(*) FROM GILLES_HUBERT.SRC1_ENTREPOTS;
SELECT COUNT(*) FROM GILLES_HUBERT.SRC1_MAGASINS;
SELECT COUNT(*) FROM GILLES_HUBERT.SRC1_MARQUES;
SELECT COUNT(*) FROM GILLES_HUBERT.SRC1_PRODUITS;
SELECT COUNT(*) FROM GILLES_HUBERT.SRC1_STOCKER;
SELECT COUNT(*) FROM GILLES_HUBERT.SRC1_VENDRE;

--q2
SELECT raisonSoc, tel FROM GILLES_HUBERT.SRC1_MAGASINS;

--q3
SELECT * FROM GILLES_HUBERT.SRC1_MAGASINS WHERE ADRVILLE = 'Toulouse';

--q4
SELECT * FROM GILLES_HUBERT.SRC1_MAGASINS WHERE ADRCP LIKE '33%';

--q5
SELECT * FROM GILLES_HUBERT.SRC1_PRODUITS WHERE PRIXU=1990;

--q6
SELECT * FROM GILLES_HUBERT.SRC1_PRODUITS WHERE PRIXU>2000;

--q7
SELECT * FROM GILLES_HUBERT.SRC1_PRODUITS WHERE PRIXU<2000 and PRIXU > 1000;

--q8
SELECT * FROM GILLES_HUBERT.SRC1_PRODUITS WHERE CODEC=2 or CODEC=4;

--q9
SELECT * FROM GILLES_HUBERT.SRC1_VENDRE WHERE DATEV < TO_DATE('2000-03-01','YYYY-MM-DD');

--q10
SELECT * FROM GILLES_HUBERT.SRC1_VENDRE WHERE DATEV >= TO_DATE('2000-05-01','YYYY-MM-DD') and DATEV <= TO_DATE('2000-05-31', 'YYYY-MM-DD');

--q11
SELECT CODEC, DESIGP, DESIGM FROM GILLES_HUBERT.SRC1_PRODUITS, GILLES_HUBERT.SRC1_MARQUES WHERE GILLES_HUBERT.SRC1_PRODUITS.CODEM = GILLES_HUBERT.SRC1_MARQUES.CODEM;

--q12
SELECT DISTINCT DESIGP FROM 
    GILLES_HUBERT.SRC1_PRODUITS, GILLES_HUBERT.SRC1_VENDRE WHERE 
    DATEV >= TO_DATE('2000-05-31', 'YYYY-MM-DD') and GILLES_HUBERT.SRC1_VENDRE.CODEP = GILLES_HUBERT.SRC1_PRODUITS.CODEP;

--q13
SELECT DISTINCT DESIGM FROM 
    GILLES_HUBERT.SRC1_PRODUITS, GILLES_HUBERT.SRC1_VENDRE, GILLES_HUBERT.SRC1_MAGASINS, GILLES_HUBERT.SRC1_MARQUES WHERE 
    GILLES_HUBERT.SRC1_VENDRE.RAISONSOC = GILLES_HUBERT.SRC1_MAGASINS.RAISONSOC and
    GILLES_HUBERT.SRC1_VENDRE.CODEP = GILLES_HUBERT.SRC1_PRODUITS.CODEP and
    GILLES_HUBERT.SRC1_PRODUITS.CODEM = GILLES_HUBERT.SRC1_MARQUES.CODEM and
    GILLES_HUBERT.SRC1_MAGASINS.ADRVILLE = 'Pamiers'
    ;

--q14
SELECT DISTINCT GILLES_HUBERT.SRC1_VENDRE.RAISONSOC FROM GILLES_HUBERT.SRC1_MAGASINS, GILLES_HUBERT.SRC1_VENDRE, GILLES_HUBERT.SRC1_PRODUITS, GILLES_HUBERT.SRC1_MARQUES, GILLES_HUBERT.SRC1_CATEGORIES WHERE
    GILLES_HUBERT.SRC1_VENDRE.RAISONSOC = GILLES_HUBERT.SRC1_MAGASINS.RAISONSOC and
    GILLES_HUBERT.SRC1_VENDRE.CODEP = GILLES_HUBERT.SRC1_PRODUITS.CODEP and
    GILLES_HUBERT.SRC1_PRODUITS.CODEM = GILLES_HUBERT.SRC1_MARQUES.CODEM and
    GILLES_HUBERT.SRC1_PRODUITS.CODEC = GILLES_HUBERT.SRC1_CATEGORIES.CODEC and
    GILLES_HUBERT.SRC1_CATEGORIES.DESIGC = 'tÚlÚviseur' and
    GILLES_HUBERT.SRC1_MARQUES.DESIGM = 'Sony';
    
SELECT * FROM GILLES_HUBERT.SRC1_CATEGORIES;