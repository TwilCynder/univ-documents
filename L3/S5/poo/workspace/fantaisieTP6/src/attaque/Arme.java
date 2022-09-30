/**
 * 
 */
package attaque;

import java.util.HashSet;
import java.util.Set;

import protagoniste.ZoneDeCombat;

/**
 * @author tnt3192a
 *
 */
public abstract class Arme extends ForceDeCombat implements Orderable<Arme> {
	private HashSet<ZoneDeCombat> zoneDeCombat = new HashSet<>();
	
	protected Arme(int pointDeDegat, String nom, ZoneDeCombat... zdc) {
		super(pointDeDegat, nom);
		for (ZoneDeCombat zone: zdc) {
			zoneDeCombat.add(zone);
		}
	}
	
	public Set<ZoneDeCombat> getZoneDeCombat() {
		return zoneDeCombat;
	}

	public boolean equals(Object o) {
		if (o instanceof Arme) {
			Arme autre = (Arme)o;
			return autre.operationel == operationel && getPointDeDegat() == autre.getPointDeDegat() && getNom().equals(autre.getNom());
		}
		return false;
	}
	
	public int compareTo(Arme autre) {
		if (operationel != autre.operationel) {
			//return (Boolean)operationel.compareTo(autre.operationel);
			return (operationel) ? -1 : 1;
		}
		int comparaison = autre.getPointDeDegat() - getPointDeDegat();
		if (comparaison == 0) {
			return getNom().compareTo(autre.getNom());
		} 
		return comparaison;
	}
}
