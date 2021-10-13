/**
 * 
 */
package banque;

/**
 * @author tnt3192a
 *
 */
public class Client {
	private String nom;
	private Date dateNaissance;
	private Compte comptes[] = new Compte[100];
	private int nComptes;
	
	public Client(String nom, Date dateNaissance) {
		this.nom = nom;
		this.dateNaissance = dateNaissance;
		this.nComptes = 1;
		this.comptes[0] = new Compte(0);
	}
	
	public String getNom() {
		return this.nom;
	}
	public Date getDate() {
		return this.dateNaissance;
	}
	public Compte getCompte(int i) {
		return this.comptes[i];
	}
	
	public void afficherBilan() {
		for (int i = 0; i < this.nComptes; i++) {
			this.comptes[i].afficherSolde();
		}
	}
	public float soldeTotal() {
		int sum = 0;
		for (int i = 0; i < this.nComptes; i++) {
			sum += this.comptes[i].getSolde();
		}
		return sum;
	}
	
	public void afficherSolde() {
		System.out.println(this.soldeTotal());
	}
	
	public int ajouterCompte() {
		this.comptes[this.nComptes] = new Compte(0);
		return this.nComptes += 1;
	}
	
}
