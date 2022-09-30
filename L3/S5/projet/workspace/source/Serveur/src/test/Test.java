package test;

import backend.DataBase;
import backend.Serveur;
import backend.TypeUtilisateur;

public class Test {

	public static void main(String[] args) {
		Serveur serv = new Serveur(5000);
		DataBase db = serv.getDataBase();
		db.addGroupe("Groupe 1", TypeUtilisateur.SERVICE);
		db.addUser("tnt3192a", "mdp", "Téo", "Tinarrage", TypeUtilisateur.CAMPUS);
		System.out.println(db.getGroupe("Groupe 1"));
		System.out.println(db.getRowsCount("Groupes"));
		db.addTicket("Groupe 1", "tnt", "Ticket", "oui");
		db.addTicket("Groupe 1", "tnt", "Ticket 2", "oui");
		db.addTicket("Groupe 1", "tnt", "Ticke t", "oui");
		db.addTicket("Groupe 1", "tnt", "Ticket 4", "oui");
		System.out.println(db.authorizeConnection("tnt", "mdp"));
		System.out.println(db.authorizeConnection("tnt", "cynder"));
		
		serv.start();
		System.out.println("Success !");
	}
}
