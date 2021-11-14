package protagoniste;

import bataille.Bataille;

public class Homme extends EtreVivant {
	public Homme(String nom) {
		super(nom, 70);
	}
	
	public void rejointBataille(Bataille b) {
		super.rejointBataille(b);
		bataille.ajouter(this);
	}
	
	@Override
	public void mourir() {
		if (bataille != null) {
			bataille.eliminer(this);
		}
	}

	@Override
	public String toString() {
		return "Homme [nom=" + nom + ", forceDeVie=" + forceDeVie+ "]";
	}

}
