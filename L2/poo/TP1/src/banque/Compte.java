package banque;

public class Compte {
	private float solde;
	
	public Compte(float solde) {
		this.solde = solde;
	}
	
	public void depot(float valeur) {
		this.solde += valeur;
	}
	
	public void retrait(float valeur) {
		this.solde -= valeur;
	}
	
	public float getSolde() {
		return this.solde;
	}
	
	public void afficherSolde() {
		System.out.println(this.solde);
	}
	
	public void virer(float valeur, Compte destinataire) {
		this.retrait(valeur);
		destinataire.depot(valeur);
	}
}
