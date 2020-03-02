package weebHistory;

public class Commercant extends Humain{
	public Commercant(String nom, int argent){
		super(nom, "thé", argent);
	}
	
	public int seFaireExtorquer() {
		int argent = this.getArgent();
		this.perdreArgent(argent);
		this.parler("Ah bah super, c'est la faute a macron ça");
		return argent;
	}
	
	public void recevoir(int a) {
		this.parler("Merci pour les " + a + " balles !");
		this.ajouterArgent(a);
	}
}
