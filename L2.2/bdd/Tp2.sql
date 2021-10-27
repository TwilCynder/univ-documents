--q4.a
DELETE FROM Materiel WHERE type='raquette';

--q4.b
DELETE FROM Suivre WHERE noA=1 and codeC=3;

--q4.c
DELETE FROM Cours WHERE codeC=2;
--On supprime une ligne r�f�renc�e par une cl� �trang�re dans une autre table (Suivre), violant la contrainte
--d'int�grit� des cl�s �trang�res. 
--Il faut ajouter la clause ON DELETE CASCADE � la contrainte de cl� �trang�re, pour qu'une ligne de Suivre soit automatiquement supprim�e
--si la ligne de Cours qu'elle r�f�rence est supprim�e

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

