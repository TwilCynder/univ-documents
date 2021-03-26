--q 3 : on pourrait ajouter des contraintes numériques pour éviter d'avoir des prix ou quantités infèrieures à 0 dans la table matériel.
DELETE FROM Materiel WHERE type='raquette';
DELETE FROM Suivre WHERE noA=1 and codeC=3;
DELETE FROM Cours WHERE codeC=2; --On supprime une ligne dont la clé primaire est référencée par une ligne de Suivre : il faut ajouter "ON DELETE CASCADE" à cette clé étrangère pour que le serveur supprime aussi les lignes filles quand la ligne mère est supprimée
UPDATE Adherent SET adresseA='23 Route de Toulouse, Saint-Gaudens' WHERE noA=1;
UPDATE Materiel SET prix=prix*1.1;
UPDATE Materiel SET qteDispo=qteDispo+2 WHERE type='ski';



select * from Materiel;

