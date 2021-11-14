package tp3.jeu;

public class JeuDeDe extends JeuSimple{
	private java.util.Random rand;
	
	public JeuDeDe() {
		super("Jeu de dés");
		rand = new java.util.Random();
	}
	
	public String jouerUnTour() {
		return "" + (rand.nextInt(6) + 1);
	}
	
	public int arbitrer(String c1, String c2) {
		int i1 = Integer.parseInt(c1);
		int i2 = Integer.parseInt(c2);
		return (i2 > i1) ? 1 : (i2 == i1) ? 0 : -1;
	}
}
