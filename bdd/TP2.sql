--q 3 : on pourrait ajouter des contraintes num�riques pour �viter d'avoir des prix ou quantit�s inf�rieures � 0 dans la table mat�riel.
DELETE FROM Materiel WHERE type='raquette';
DELETE FROM Suivre WHERE noA=1 and codeC=3;
DELETE FROM Cours WHERE codeC=2; --On supprime une ligne dont la cl� primaire est r�f�renc�e par une ligne de Suivre : il faut ajouter "ON DELETE CASCADE" � cette cl� �trang�re pour que le serveur supprime aussi les lignes filles quand la ligne m�re est supprim�e
UPDATE Adherent SET adresseA='23 Route de Toulouse, Saint-Gaudens' WHERE noA=1;
UPDATE Materiel SET prix=prix*1.1;
UPDATE Materiel SET qteDispo=qteDispo+2 WHERE type='ski';



select * from Materiel;

