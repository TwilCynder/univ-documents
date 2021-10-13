/**
 * 
 */
package protagoniste;

import bataille.Bataille;

/**
 * @author tnt3192a
 *
 */
public abstract class EtreVivant {
	protected String nom;
	protected int forceDeVie;
	protected Bataille bataille;
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
	
	@Override
	public String toString() {
		return "EtreVivant [nom=" + nom + ", forceDeVie=" + forceDeVie + "]";
	}
	
	public void rejointBataille(Bataille b) {
		bataille = b;
	}
	
	public abstract void mourir();
	
	public boolean equals(Object obj) {
		if (obj instanceof EtreVivant) {
			return this.nom == ((EtreVivant)obj).nom;
		}
		return false;
	}
}
