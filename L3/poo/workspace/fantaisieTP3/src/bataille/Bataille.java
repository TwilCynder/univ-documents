package bataille;

import protagoniste.Homme;
import protagoniste.Monstre;

public class Bataille {
	private Camp<Homme> campHumains = new Camp<>();
	private Camp<Monstre<?>> campMonstres = new Camp<>();
	
	public void ajouter(Homme h) {
		campHumains.ajouter(h);
	}
	
	public void ajouter(Monstre<?> m) {
		campMonstres.ajouter(m);
	}
	
	public void eliminer(Homme h) {
		campHumains.eliminer(h);
	}
	public void eliminer(Monstre<?> m) {
		campMonstres.eliminer(m);
	}
	
	public Camp<Homme> getCampHumains() {
		return campHumains;
	}

	public Camp<Monstre<?>> getCampMonstres() {
		return campMonstres;
	}

}
