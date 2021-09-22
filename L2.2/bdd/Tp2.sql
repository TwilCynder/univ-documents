--q4.a
DELETE FROM Materiel WHERE type='raquette';

--q4.b
DELETE FROM Suivre WHERE noA=1 and codeC=3;

--q4.c
DELETE FROM Cours WHERE codeC=2;
--On supprime une ligne référencée par une clé étrangère dans une autre table (Suivre), violant la contrainte
--d'intégrité des clés étrangères. 
--Il faut ajouter la clause ON DELETE CASCADE à la contrainte de clé étrangère, pour qu'une ligne de Suivre soit automatiquement supprimée
--si la ligne de Cours qu'elle référence est supprimée

--q4.d
UPDATE Adherent SET adresseA='23 Route de Toulouse, Saint-Gaudens' WHERE PRENOMA='Julien' and NOMA='Lars';

--q4.e
UPDATE Materiel SET prix=prix*1.1;

--q4.f
UPDATE Materiel SET qteDispo=qteDispo+2 WHERE type='ski';

select * from Materiel;
select * from Cours;
select * from Adherent;
select * from Suivre;

