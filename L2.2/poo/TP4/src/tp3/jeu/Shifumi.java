package tp3.jeu;

public class Shifumi extends JeuSimple {
	private java.util.Random rand;
	public enum Signe {PIERRE, FEUILLE, CISEAU};
	
	/**
	 * @param nom
	 */
	public Shifumi() {
		super("Pierre-feuille-ciseaux");
		rand = new java.util.Random();
	}

	public String jouerUnTour() {
		return "" + Signe.values()[rand.nextInt(3)];
	}
	
	public int arbitrer(String c1, String c2) {
		Signe s1 = Signe.valueOf(c1);
		Signe s2 = Signe.valueOf(c2);
		
		if (s1 == Signe.PIERRE && s2 == Signe.CISEAU || s1 == Signe.CISEAU && s2 == Signe.FEUILLE || s1 == Signe.FEUILLE && s2 == Signe.PIERRE) {
			return -1;
		} else if (s1 == s2) {
			return 0;
		} else {
			return 1;
		}
		
	}

}
