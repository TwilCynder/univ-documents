package protagoniste;

import java.util.EnumMap;
import java.util.List;
import java.util.Map;

import attaque.Arme;
import bataille.Bataille;

public class Homme extends EtreVivant {
	private Map<ZoneDeCombat, List<Arme>> armes = new EnumMap<ZoneDeCombat, List<Arme>>(ZoneDeCombat.class);
	
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

	public void ajouterArmes(Arme... armesAjoutees) {
		for (Arme arme : armesAjoutees) {
			for (ZoneDeCombat zdc : arme.getZoneDeCombat()) {
				//?????
				armes.get(zdc).add(arme);
			}
		}
	}
	
	public void supprimerArme
	
	@Override
	public String toString() {
		return "Homme " + super.toString();
	}

}
