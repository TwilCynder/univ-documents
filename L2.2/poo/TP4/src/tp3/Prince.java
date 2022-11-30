package tp3;

import tp3.console.ConsoleJavaBoy; 

public class Prince implements Sujet {
	
	private int argent = 0;
	private String nom;
	private ConsoleJavaBoy console;
	
	public Prince(String nom) {
		this.console = new ConsoleJavaBoy(this);
		this.nom = nom;
	}
	
	public String getNom() {
		return "Prince " + nom;
	}
	
	public int getArgent() {
		return argent;
	}
	
	public void run() {
		console.parler("Je suis " + nom);
		console.seDirigerVers(0);
	}
}
