package weebHistory;

public class Samourai extends Ronin{
	private String seigneur;
	
	public Samourai(String nom, String boisson, int argent, String seigneur) {
		super(nom, boisson, argent);
		this.seigneur = seigneur;
	}
	
	public void direBonjour() {
		super.direBonjour();
		this.parler("Je sers le seigneur " + this.seigneur + ".");
	}
	
	public String getSeigneur() {
		return seigneur;
	}
	
	public void boire(String boisson) {
		this.parler("*Boit un verre de "+boisson+"*");
	}
}
