
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
    VALUES (1, 'Salma', 'Louise', '23 route de Tarbes, Pau' , '0777777777', 26);
    
    
INSERT INTO Adherent
    (noA, nomA, prenomA, adresseA, telA, ageA)
    VALUES (1, 'Jardin', 'Lucien', 'Route d’Espagne, Tarbes', '', 52);
    
INSERT INTO Specialite
    (idspecialite, noms) VALUES
    (1, "ski");
    
INSERT INTO Specialite
    (idspecialite, noms) VALUES
    (2, 'snowboard');

INSERT INTO Specialite
    (idspecialite, noms) VALUES
    (3, 'raquette');

INSERT INTO Cours
    (codeC, niveau, nbPlaces, dateCours, nom, idSpecialite) VALUES
    (1, 'debutant', 1, '01-02-2013', 1, 2);
    
INSERT INTO Cours
    (codeC, niveau, nbPlaces, dateCours, nom, idSpecialite) VALUES
    (2, 'moyen', 1, '02-02-2013', 1, 2);
    
INSERT INTO Cours
    (codeC, niveau, nbPlaces, dateCours, nom, idSpecialite) VALUES
    (1, 'debutant', 5, '01-02-2013', 2, 1);
    
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
    
INSERT INTO 

    
