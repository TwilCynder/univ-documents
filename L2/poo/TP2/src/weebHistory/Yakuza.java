package weebHistory;

public class Yakuza extends Humain {
	private String clan;
	int reputation;
	
	
	public Yakuza(String nom, String boisson, int argent, String clan) {
		super(nom, boisson, argent);
		this.clan = clan;
		this.reputation = 0;
	}
	
	public String getClan() {
		return clan;
	}
	
	public int getReputation() {
		return reputation;
	}
	
	public void extorquer(Commercant c) {
		this.ajouterArgent(c.seFaireExtorquer());
		this.reputation++;
		this.parler("Je viens de soulever " + c.getNom() + " et j'ai pris tout son argent comme macron prend le notre *gilet jaune noises*");
	}
	
	public void gagner () {
		this.reputation++;
		this.parler("J'ai fumé un ronin. Try again bro.");
	}
	
	public int perdre() {
		int argent = this.getArgent();
		this.perdreArgent(argent);
		this.reputation--;
		this.parler("J'ai perdu ce duel et mes " + argent + "... c'est à cause de la manette.");
		return argent;
	}
	
	public void direBonjour() {
		super.direBonjour();
		this.parler("Je viens du clan " + this.clan + " !");
	}
}
