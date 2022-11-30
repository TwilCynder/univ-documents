package bataille;

import protagoniste.ZoneDeCombat;

public class Salle {
	private int numSalle;
	private ZoneDeCombat zoneDeCombat;
	public Salle(int numSalle, ZoneDeCombat zoneDeCombat) {
		super();
		this.numSalle = numSalle;
		this.zoneDeCombat = zoneDeCombat;
	}
	public int getNumSalle() {
		return numSalle;
	}
	public ZoneDeCombat getZoneDeCombat() {
		return zoneDeCombat;
	}

	public String toString() {
		return "Salle n°" + numSalle + " de type combat " + zoneDeCombat;
	}
	
	public boolean equals(Object o) {
		if (o instanceof Salle) {
			return ((Salle) o).numSalle == this.numSalle;
		}
		return false;
	}
	
}
