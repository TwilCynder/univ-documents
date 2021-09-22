package weebHistory;

public class Humain {
	private int argent;
	private String boisson;
	private String nom;
	
	public Humain(String nom, String boisson, int argent){
		this.argent = argent;
		this.boisson = boisson;
		this.nom = nom;
	}
	
	public void parler(String texte){
		System.out.println("("+this.nom+") - " + texte);
	}
	
	public void direBonjour() {
		this.parler("Bonjour ! Je m'appelle " + this.nom + ", j'aime boire du " + 
				this.boisson + " et j'ai " + this.argent + " en poche.");
	}

	public void boire() {
		this.parler("*Boit un verre de "+this.boisson+"*");
	}
	
	public int getArgent() {
		return argent;
	}
	
	public String getBoisson() {
		return boisson;
	}
	
	public String getNom() {
		return nom;
	}
	
	public int ajouterArgent(int a) {
		return this.argent += a;
	}
	
	public int perdreArgent(int a) {
		if (this.argent < a) a = this.argent;
		return this.argent -= a;
	}
}
