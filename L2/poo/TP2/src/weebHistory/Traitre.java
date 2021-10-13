package weebHistory;

public class Traitre extends Samourai{
	private int traitrise;
	
	public Traitre(String nom, String boisson, int argent, String seigneur) {
		super (nom, boisson, argent, seigneur);
		this.traitrise = 1;
	}
	
	public void direBonjour() {
		super.direBonjour();
		this.parler("Je suis en réalité un traire de niveau " + this.traitrise);
	}
	
	public void extorquer(Commercant c) {
		if (this.traitrise > 2) {
			this.parler("J'aurais bien aimé marabouter " + c.getNom() + " mais je suis déjà trop vilain ...");
			return;
		}
		this.ajouterArgent(c.seFaireExtorquer());
		this.traitrise++;
		this.parler("Je viens de soulever " + c.getNom() + " et j'ai pris tout son argent comme macron prend le notre *gilet jaune noises*");
	}
	
	public void faireLegentil(Humain h, int a) {
		if (a > this.getArgent()) a = this.getArgent();
		this.parler("Uwu " + h.getNom() + " accepte ces " + a + " sous OwO");
		this.perdreArgent(a);
		h.ajouterArgent(a);
		this.traitrise -= a / 10;
	}
}
