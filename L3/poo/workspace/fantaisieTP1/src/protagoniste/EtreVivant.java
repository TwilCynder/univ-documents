/**
 * 
 */
package protagoniste;

/**
 * @author tnt3192a
 *
 */
public abstract class EtreVivant {
	private String nom;
	private int forceDeVie;
	public EtreVivant(String nom, int forceDeVie) {
		super();
		this.nom = nom;
		this.forceDeVie = forceDeVie;
	}
	public String getNom() {
		return nom;
	}
	public int getForceDeVie() {
		return forceDeVie;
	}
	
}
