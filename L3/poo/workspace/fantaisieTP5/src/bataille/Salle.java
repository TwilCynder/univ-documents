package bataille;

import protagoniste.ZoneDeCombat;

public class Salle {
	private Integer numSalle;
	private ZoneDeCombat zoneDeCombat;
	
	public Salle(int numSalle, ZoneDeCombat zoneDeCombat) {
		this.numSalle = numSalle;
		this.zoneDeCombat = zoneDeCombat;
	}
	
	public int getNumeroSalle() {
		return numSalle;
	}
	
	public ZoneDeCombat getZoneDeCombat() {
		return zoneDeCombat;
	}
	
	@Override
	public String toString() {
		return "Salle n°"+numSalle+" de type combat "+zoneDeCombat;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj != null && getClass() == obj.getClass()) {
			Salle salleToCompare = (Salle) obj;
			return numSalle.equals(salleToCompare.getNumeroSalle());
		}
		return false;
	}
	
	@Override
	public int hashCode() {
		return 31 * numSalle.hashCode();
	}
}
