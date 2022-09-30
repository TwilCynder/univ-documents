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
		return " [nom=" + nom + ", forceDeVie=" + forceDeVie + "]";
	}
	
	public void rejointBataille(Bataille b) {
		bataille = b;
	}
	
	public abstract void mourir();
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof EtreVivant) {
			EtreVivant ev = (EtreVivant)obj;
			return this.nom.equals(ev.nom);
		}
		return false;
	}
	
}
