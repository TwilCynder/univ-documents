package bataille;

import protagoniste.Homme;
import protagoniste.Monstre;

public class Bataille {
	private Camp<Homme> campHumain = new Camp<>();
	private Camp<Monstre <?>> campMonstres = new Camp<>();
	
	
	public void ajouter(Monstre<?> monstre) {
		campMonstres.ajouter(monstre);
	}
	
	public void eliminer(Monstre<?> monstre) {
		campMonstres.eliminer(monstre);
	}
	
	
	public void ajouter(Homme homme) {
		campHumain.ajouter(homme);
	}
	
	public void eliminer(Homme homme) {
		campHumain.eliminer(homme);
	}	
	
	public Camp<Homme> getCampHumains() {
		return campHumain;
	}
	
	public Camp<Monstre<?>> getCampMonstres() {
		return campMonstres;
	}
		
}
