package weebHistory;

public class Ronin extends Humain{
	int honneur;
	
	public Ronin(String nom, String boisson, int argent) {
		super(nom, boisson, argent);
		this.honneur = 1;
	}
	
	public void donner(Commercant c, int a) {
		if (a > this.getArgent()) a = this.getArgent();
		this.parler("Uwu " + c.getNom() + " accepte ces " + a + " sous OwO");
		this.perdreArgent(a);
		c.recevoir(a);
	}
	
	public void provoquer (Yakuza y) {
		if (this.honneur * 2 > y.getReputation()) {
			this.ajouterArgent(y.perdre());
			this.honneur++;
			this.parler("J'ai vaincu " + y.getNom() + " !");
		} else {
			y.gagner();
			this.honneur--;
			this.parler("J'ai échoué à vaincre " + y.getNom() + " ...");
		}
	}
}
