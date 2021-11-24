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
public abstract class Arme extends ForceDeCombat {
	private HashSet<ZoneDeCombat> zoneDeCombat = new HashSet<>();
	
	protected Arme(int pointDeDegat, String nom, ZoneDeCombat... zdc) {
		super(pointDeDegat, nom);
		for (ZoneDeCombat zone: zdc) {
			//TODO fix ça
			zoneDeCombat.add(zone);
			
		}
	}
	
	public Set<ZoneDeCombat> getZoneDeCombat() {
		return zoneDeCombat;
	}


}
