package attaque;

import java.util.HashSet;

import protagoniste.EtreVivant;
import protagoniste.ZoneDeCombat;

public abstract class Arme extends ForceDeCombat{
	
	private HashSet<ZoneDeCombat> zonesDeCombat = new HashSet<>();
	
	public Arme (Integer pointDeDegat, String nom, ZoneDeCombat ...zonesDeCombat) {
		super(pointDeDegat, nom);
		for (ZoneDeCombat zDc : zonesDeCombat) {
			this.zonesDeCombat.add(zDc);
		}
	}
	
	public HashSet<ZoneDeCombat> getZonesDeCombat() {
		return zonesDeCombat;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Arme) {
			Arme arme = (Arme)obj;
			return getNom().equals(arme.getNom());
		} return false;
	}
	
	public int compareTo(Arme armeToCompare) {	    
		
		return getNom().compareTo(armeToCompare.getNom());
	    	
	}
	
}

	
