package protagoniste;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.List;
import java.util.NavigableSet;
import java.util.TreeSet;

import attaque.Arme;
import attaque.KeyArme;
import bataille.Bataille;

public class Homme extends EtreVivant{
	
	private EnumMap<ZoneDeCombat, List<Arme>> armes = new EnumMap<>(ZoneDeCombat.class);
	private Arme armeChoisie;


	public Homme (String nom) {
		super(nom, 70);
	}
	
	public Arme getArmeChoisie() {
		return armeChoisie;
	}
	
	@Override
	public void rejointBataille (Bataille bataille) {
		super.rejointBataille(bataille);
		bataille.ajouter(this);
	}
	
	public void mourir() {
		bataille.eliminer(this);
	}
	
	@Override
	public String toString() {
		return "Homme [nom = "+nom+ ", force de vie=70]";
	}	
	
	public void ajouterArmes (Arme ...listeArmes) {
		
		if(!armes.isEmpty()) {
			for(Arme arme : listeArmes) {
				for(ZoneDeCombat zdc : arme.getZonesDeCombat()) {
					armes.get(zdc).add(arme);				
				}
				
			}
		}
		else{
			
			for(Arme arme : listeArmes) {
				for(ZoneDeCombat zdc : arme.getZonesDeCombat()) {
					
					if(armes.containsKey(zdc)) {
						armes.get(zdc).add(arme);
					}
					else {
						List<Arme> armess = new ArrayList<>();
						armess.add(arme);
						armes.put(zdc, armess);
					}
				}
			}
		}
		
	}
	
	public void supprimerArme (Arme armeSuppr) {
		for (ZoneDeCombat zoneDeCombat : armes.keySet()) {
			armes.get(zoneDeCombat).remove(armeSuppr);
		}
	}
	
	public Arme choisirArme (Monstre<?> monstre) {

		ZoneDeCombat zoneCombatMonstre = monstre.getZoneDeCombat();
		List<Arme> armesAdequates = armes.get(zoneCombatMonstre);
		if (armesAdequates == null) {
			return null;
		}
		NavigableSet<Arme> armesTriees = new TreeSet<>(new Comparator<Arme>() {
			public int compare (Arme arme1, Arme arme2) {
				if (arme1.isOperationnel() && arme2.isOperationnel()) {
					int result = arme2.getPointDeDegat() - arme1.getPointDeDegat();
					if (result == 0)
						return arme1.compareTo(arme2);
					else
						return result;
				}
				else if (arme1.isOperationnel() || arme2.isOperationnel()) {
					if (arme1.isOperationnel()) {
						return 9;
					}
					else {
						return -1;
					}
				}
				else
					return arme1.compareTo(arme2);
			}
		});
		
		for (Arme arme : armesAdequates) {
			armesTriees.add(arme);
		}
		if (!armesTriees.isEmpty()) {
			int forceDeVie = monstre.getForceDeVie();
			NavigableSet<Arme> armesAdaptees = new TreeSet<>();
			Arme armeFdC = new KeyArme(forceDeVie);
			armesAdaptees = armesTriees.tailSet(armeFdC, true);	
			if (!armesAdaptees.isEmpty()) {
				armeChoisie = armesAdaptees.first();
				return armeChoisie;			

			}
			else {
				armeChoisie = armesTriees.last();
				return armeChoisie;
			}
			
		}		
		return null;
	}

}
