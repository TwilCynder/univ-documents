/**
 * 
 */
package banque;

/**
 * @author tnt3192a
 *
 */
public class Date {
	private int jour;
	private int mois;
	private int an;
	private int heure;
	private int minute;
	private int seconde;
	
	public Date(int jour, int mois, int an) {
		this.jour = jour;
		this.mois = mois;
		this.an = an;
		this.heure = 0;
		this.minute = 0;
		this.seconde = 0;
	}
	
	public int getJour() {
		return this.jour ;
	}
	public int getMois() {
		return this.mois ;
	}
	public int getAn() {
		return this.an ;
	}
	public int getHeure() {
		return this.heure ;
	}
	public int getMinute() {
		return this.minute ;
	}
	public int getSeconde() {
		return this.seconde ;
	}
	
	public String toString() {
		return "[" + this.heure + ":" + this.minute + ":" + this.seconde + 
				" " + this.an + "/" + this.mois + "/" + this.jour + "]";
	}
}

