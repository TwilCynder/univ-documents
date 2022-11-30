DROP TABLE Louer CASCADE CONSTRAINTS;
DROP TABLE Moniteur CASCADE CONSTRAINTS;
DROP TABLE Cours CASCADE CONSTRAINTS;
DROP TABLE Specialite CASCADE CONSTRAINTS;
DROP TABLE Suivre CASCADE CONSTRAINTS;
DROP TABLE Materiel CASCADE CONSTRAINTS;
DROP TABLE Adherent CASCADE CONSTRAINTS;


--Classes d'entités

CREATE TABLE Moniteur(
    noM number(5),
    nomM varchar2(30),
    prenomM varchar2(30),
    adresse varchar2(64),
    dateNaiss date,
    CONSTRAINT pk_moniteur PRIMARY KEY(noM)
);

CREATE TABLE Adherent(
    noA number(5),
    nomA varchar2(30),
    prenomA varchar2(30),
    adresseA varchar2(64),
    telA char(10),
    ageA number (3),
    CONSTRAINT pk_adherent PRIMARY KEY(noA),
    CONSTRAINT ck_val_ageA CHECK (ageA > 12 AND ageA < 100)
);

CREATE TABLE Specialite(
    idSpecialite number(5),
    nomS varchar2(15),
    CONSTRAINT pk_specialite PRIMARY KEY(idSpecialite),
    CONSTRAINT ck_val_nomS CHECK (nomS IN ('ski', 'snowboard', 'monoski', 'raquette'))
);

CREATE TABLE Cours(
    codeC number(5),
    niveau varchar2(15),
    nbPlaces number(3),
    dateCours date,
    noM number(5),
    idSpecialite number(5),
    CONSTRAINT pk_cours PRIMARY KEY(codeC),
    CONSTRAINT fk_cours_moniteur 
        FOREIGN KEY (noM) REFERENCES Moniteur (noM),
    CONSTRAINT ck_noM CHECK (noM IS NOT NULL),
    CONSTRAINT fk_cours_specialite
        FOREIGN KEY (idSpecialite) REFERENCES Specialite(idSpecialite),
    CONSTRAINT ck_val_niveau CHECK (niveau IN ('débutant', 'moyen', 'confirmé', 'compétition')),
    CONSTRAINT ck_val_nbPlaces CHECK (nbPlaces > 0)
);

CREATE TABLE Materiel(
    codeM number(5),
    type varchar2(15),
    marque varchar2(15),
    prix number(4, 2),
    qteDispo number (3),
    CONSTRAINT pk_materiel PRIMARY KEY(codeM),
    CONSTRAINT ck_val_prix CHECK (prix > 0),
    CONSTRAINT ck_val_qteDispo CHECK (qteDispo > 0)
);


-- Classes d'asso

CREATE TABLE Suivre(
    noA number(5),
    codeC number(5),
    CONSTRAINT pk_suivre PRIMARY KEY (noA, codeC),
    CONSTRAINT fk_suivre_adherent 
        FOREIGN KEY (noA) REFERENCES Adherent(noA),
    CONSTRAINT ck_noA_suivre CHECK (noA IS NOT NULL),
    CONSTRAINT fk_suivre_cours
        FOREIGN KEY (codeC) REFERENCES Cours(codeC) ON DELETE CASCADE,
    CONSTRAINT ck_codeC CHECK (codeC IS NOT NULL)
);

CREATE TABLE Louer(
    noA number(5),
    codeM number (5),
    quantite number(3),
    CONSTRAINT pk_louer PRIMARY KEY (noA, codeM),
    CONSTRAINT fk_louer_adherent
        FOREIGN KEY (noA) REFERENCES Adherent(noA),
    CONSTRAINT ck_noA_louer CHECK (noA IS NOT NULL),
    CONSTRAINT fk_louer_materiel
        FOREIGN KEY (codeM) REFERENCES Materiel(codeM),
    CONSTRAINT ck_codeM CHECK (codeM IS NOT NULL),
    CONSTRAINT ck_val_quantite CHECK (quantite > 0)
);

INSERT INTO Moniteur 
    (noM, nomM, prenomM, adresse, dateNaiss)
    VALUES (1, 'Dupond', 'Jean', '12 route du col, Germ', '01-01-1980');

INSERT INTO Moniteur 
    (noM, nomM, prenomM, adresse, dateNaiss)
    VALUES (2, 'Martin', 'Sophie', 'Route du lac, Loudenvielle', '13-05-1988');

INSERT INTO Adherent
    (noA, nomA, prenomA, adresseA, telA, ageA)
    VALUES (1, 'Lars', 'Julien', '12 rue principale, Muret', '0666666666', 13);


INSERT INTO Adherent
    (noA, nomA, prenomA, adresseA, telA, ageA)
    VALUES (2, 'Salma', 'Louise', '23 route de Tarbes, Pau' , '0777777777', 26);
    
    
INSERT INTO Adherent
    (noA, nomA, prenomA, adresseA, telA, ageA)
    VALUES (3, 'Jardin', 'Lucien', 'Route d’Espagne, Tarbes', '', 52);
    
INSERT INTO Specialite
    (idspecialite, noms) VALUES
    (1, 'ski'); 
    
INSERT INTO Specialite
    (idspecialite, noms) VALUES
    (2, 'snowboard');

INSERT INTO Specialite
    (idspecialite, noms) VALUES
    (3, 'raquette');

INSERT INTO Cours
    (codeC, niveau, nbPlaces, dateCours, nom, idSpecialite) VALUES
    (1, 'débutant', 1, '01-02-2013', 1, 2);
    
INSERT INTO Cours
    (codeC, niveau, nbPlaces, dateCours, nom, idSpecialite) VALUES
    (2, 'moyen', 1, '02-02-2013', 1, 2);
    
INSERT INTO Cours
    (codeC, niveau, nbPlaces, dateCours, nom, idSpecialite) VALUES
    (3, 'débutant', 5, '01-02-2013', 2, 1);
    
INSERT INTO Materiel
    (codeM, type, marque, prix, qteDispo) VALUES
    (1, 'ski', 'HyperGliss', 10, 2);
    
INSERT INTO Materiel
    (codeM, type, marque, prix, qteDispo) VALUES
    (2, 'snowboard', 'HyperGliss', 11, 3);
    
INSERT INTO Materiel
    (codeM, type, marque, prix, qteDispo) VALUES
    (4, 'raquette', 'Smash', 8, 2);
    

INSERT INTO Suivre
    (codeC, noA) VALUES 
    (1, 1);

INSERT INTO Suivre
    (codeC, noA) VALUES 
    (1, 2);

INSERT INTO Suivre
    (codeC, noA) VALUES 
    (3, 1);

INSERT INTO Suivre
    (codeC, noA) VALUES 
    (2, 3);

INSERT INTO Louer
    (noA, codeM, quantite) VALUES 
    (3, 1, 1);
    
INSERT INTO Louer
    (noA, codeM, quantite) VALUES 
    (2, 1, 2);
