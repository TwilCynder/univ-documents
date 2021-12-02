package protagoniste;

import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.TreeSet;

import attaque.Arme;
import attaque.KeyArme;
import bataille.Bataille;

public class Homme extends EtreVivant {
	private Map<ZoneDeCombat, List<Arme>> armes = new EnumMap<ZoneDeCombat, List<Arme>>(ZoneDeCombat.class);
	private Arme armeChoisie;
	
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
	
	public void supprimerArme(Arme arme) {
		for (ZoneDeCombat zdc : arme.getZoneDeCombat()) {
			armes.get(zdc).remove(arme);
		}
	}
	
	public Arme getArmeChoisie() {
		return armeChoisie;
	}
	
	public Arme choisirArme(Monstre<?> m) {
		ZoneDeCombat zdc = m.getZoneDeCombat();
		
		NavigableSet<Arme> armesTriees = new TreeSet<Arme>();
		//pourquoi pas fait ça dans aideecrivain
		armesTriees.addAll(armes.get(zdc));
		
		if (armesTriees.isEmpty()) return null;
		
		NavigableSet<Arme> armesAdaptees = armesTriees.tailSet(new KeyArme(m.getForceDeVie()), true);
		
		if (armesAdaptees.isEmpty()) return armesTriees.last();
		
		armeChoisie = armesAdaptees.first();
		
		return armeChoisie;
	}
	
	
	
	@Override
	public String toString() {
		return "Homme " + super.toString();
	}

}
