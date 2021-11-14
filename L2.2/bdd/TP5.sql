--SELECT * FROM GILLES_HUBERT.tp4_buvettes;

INSERT INTO stade (NumS, NomS, VilleS) SELECT DISTINCT NumS, NomS, Ville FROM GILLES_HUBERT.tp4_buvettes WHERE NumS iS NOT NULL and NomS IS NOT NULL;

INSERT INTO buvette (NumB, Emplacement, NumS) SELECT DISTINCT NumB, Emplacement, NumS FROM GILLES_HUBERT.tp4_buvettes WHERE NumB IS NOT NULL;-- and Emplacement IS NOT NULL;

INSERT INTO match_ (NumM, Equipe1, Equipe2, DateM, HeureM, NumS) SELECT DISTINCT NumM, Equipe1, Equipe2, DateM, HeureM, NumS FROM GILLES_HUBERT.tp4_buvettes WHERE NumM IS NOT NULL;-- and NumS IS NOT NULL and Equipe1 IS NOT NULL and Equipe2 IS NOT NULL;

INSERT INTO employe (NumE, NomE, PrenomE, DateNaissance) SELECT DISTINCT NumE, Nom, Prenom, DateNaissance FROM GILLES_HUBERT.tp4_buvettes WHERE NumE IS NOT NULL;-- and NomE IS NOT NULL;

INSERT INTO travailler (NumE, NumM, NumB, HeureDeb, HeureFin) SELECT DISTINCT NumE, NumM, NumB, HeureDebut, HeureFin FROM GILLES_HUBERT.tp4_buvettes WHERE NumE IS NOT NULL and NumS IS NOT NULL and NumB IS NOT NULL;

INSERT INTO fournisseur (NumF, NomF, LigneAdresse, CodePostal, VilleF) SELECT DISTINCT NumF, NomF, LigneAdresse, CodePostal, VilleF FROM GILLES_HUBERT.tp4_buvettes WHERE NumF IS NOT NULL;

INSERT INTO produit (NumP, Description, type, Categorie) SELECT DISTINCT NumP, Description, type, Categorie FROM GILLES_HUBERT.tp4_buvettes WHERE NumP IS NOT NULL;

INSERT INTO fournir (NumF, NumP, NumS, DateL, Quantite, PrixUnitaire) SELECT DISTINCT NumF, NumP, NumS, DateL, Quantite, PrixUnitaire FROM GILLES_HUBERT.tp4_buvettes WHERE NumF IS NOT NULL and NumS IS NOT NULL and NumP IS NOT NULL and DateL IS NOT NULL;