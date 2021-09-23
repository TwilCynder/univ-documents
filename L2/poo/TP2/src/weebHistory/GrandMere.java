package weebHistory;
import java.util.Random;


public class GrandMere extends Humain {
	private Humain[] memoire = new Humain[30];
	private int rencontres;
	
	public GrandMere(String nom, int argent) {
		super (nom, "tisane", argent);
		this.rencontres = 0;
	}
	
	public void faireConnaissanceAvec(Humain h) {
		if (this.rencontres >= 30) return;
		this.memoire[this.rencontres] = h;
		this.rencontres++;
	}
	
	private static String[] classes = {"Commercant", "Ronin", "Yakuza", "Samourai"};
	private static Random rng = new Random();
	public String classeAleatoire() {	
		return classes[rng.nextInt(classes.length)];
	}
	
	public void ragoter() {
		if (rencontres == 0) {
			this.parler("Je ne connais personne ... pour l'instant.");
			return;
		}
		Humain h = this.memoire[rng.nextInt(this.rencontres)];
		
		if (h instanceof Traitre) {
			this.parler("Je sais que " + h.getNom() + " est un traitre !");
			return;
		}
		this.parler("Je crois que " + h.getNom() + " est un " + classeAleatoire() + " ...");
	}
	
}
