 package protagoniste;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.TreeSet;

import attaque.Arme;
import attaque.KeyArme;
import bataille.Bataille;

public class Homme extends EtreVivant {
	private Map<ZoneDeCombat, List<Arme>> armes = new EnumMap<>(ZoneDeCombat.class);
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
		System.out.println("AJOUT ARMES");
		System.out.println(this);
		for(Arme arme : armesAjoutees) {
			System.out.println(arme);
			System.out.println(arme.getZoneDeCombat());
			for (ZoneDeCombat zdc : arme.getZoneDeCombat()) {
				List<Arme> listeArmes = armes.get(zdc);
				if (listeArmes == null) {
					listeArmes = new ArrayList<Arme>();
					armes.put(zdc, listeArmes);
				}
				listeArmes.add(arme);
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
		List <Arme> listeArmes = armes.get(zdc);
		if (listeArmes != null)
			armesTriees.addAll(armes.get(zdc));
		
		if (armesTriees.isEmpty()) return null;
		
		KeyArme ka = new KeyArme(m.getForceDeVie());
		NavigableSet<Arme> armesAdaptees = armesTriees.tailSet(ka, true);
		
		if (armesAdaptees.isEmpty()) return armesTriees.pollLast();
		
		armeChoisie = armesAdaptees.pollFirst();
		
		return armeChoisie;
	}
	
	
	
	@Override
	public String toString() {
		return "Homme " + super.toString();
	}

}
