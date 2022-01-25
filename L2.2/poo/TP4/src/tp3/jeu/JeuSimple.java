package tp3.jeu;

abstract public class JeuSimple {
	private String nom;
	
	public JeuSimple(String nom) {
		this.nom = nom;
	}
	
	abstract String jouerUnTour();
	
	abstract int arbitrer(String c1, String c2);
	
	String getNom() {
		return nom;
	}
}
