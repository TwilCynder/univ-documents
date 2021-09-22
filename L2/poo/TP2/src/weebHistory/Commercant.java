package weebHistory;

public class Commercant extends Humain{
	public Commercant(String nom, int argent){
		super(nom, "thé", argent);
	}
	
	public int seFaireExtorquer() {
		int argent = this.getArgent();
		this.perdreArgent(argent);
		this.parler("J'ai perdu toute ma fortune ...");
		return argent;
	}
	
	public void recevoir(int a) {
		this.parler("Merci pour les " + a + " balles !");
		this.ajouterArgent(a);
	}
}
