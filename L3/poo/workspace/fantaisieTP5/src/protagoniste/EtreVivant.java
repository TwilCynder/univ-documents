package protagoniste;

import bataille.Bataille;

public abstract class EtreVivant implements Comparable<EtreVivant> {
	protected String nom;
	protected int forceDeVie;
	protected Bataille bataille;
	
	public EtreVivant (String nom, int forceDeVie) {
		this.nom = nom;
		this.forceDeVie = forceDeVie;
	}
	
	public String getNom() {
		return nom;
	}
	
	public int getForceDeVie() {
		return forceDeVie;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public void setForceDeVie(int forceDeVie) {
		this.forceDeVie = forceDeVie;
	}
	
	@Override
	public String toString() {
		return super.toString();
	}
	
	public void rejointBataille(Bataille bataille) {
		this.bataille = bataille;
	}
	
	public abstract void mourir();
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof EtreVivant) {
			EtreVivant etreVivant = (EtreVivant)obj;
			return nom.equals(etreVivant.nom) /*&& forceDeVie==etreVivant.forceDeVie*/;
		} return false;
	}
	
	public int compareTo(EtreVivant etreVivantToCompare) {	    
		
		return nom.compareTo(etreVivantToCompare.getNom());
	    	
	}
	
}
