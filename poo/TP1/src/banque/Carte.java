package banque;

public class Carte {
	int code[];
	int essais;
	Date finValidite;
	Banque banque;
	int numClient;
	int numCompte;
	
	public Carte(Banque banque, int numClient, int numCompte, Date finValidite, int[] code) {
		this.banque = banque;
		this.numClient = numClient;
		this.numCompte = numCompte;
		this.finValidite = finValidite;
		this.code = code;
		
		this.essais = 3;
	}
	
	public boolean codeValide(int[] code) {
		if (this.essais < 1) return false;
		for (int i = 0; i < 4; i++) {
			if (code[i] != this.code[i]) {
				this.essais--;
				return false;
			}
		}
		return true;
	}
	
	public void payer(Banque banque, int numClient, int numCompte, float montant) {
		this.banque.getClient(this.numClient).getCompte(this.numCompte).virer(montant, 
				banque.getClient(numClient).getCompte(numCompte));
	}
	
	public Banque getBanque() {
		return this.banque;
	}
	
	public Date getDateValid() {
		return this.finValidite;
	}
}
