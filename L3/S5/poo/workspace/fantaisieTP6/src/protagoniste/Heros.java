package protagoniste;

import java.util.Random;

public class Heros extends Homme {
	public Heros(String nom) {
		super(nom);
		forceDeVie = 100;
	}

	public boolean attaqueReussie() {
		return new Random().nextInt(20) < 14;
	}
	
	@Override
	public String toString() {
		return "Heros [nom=" + nom + ", forceDeVie=" + forceDeVie + "]";
	}
}
