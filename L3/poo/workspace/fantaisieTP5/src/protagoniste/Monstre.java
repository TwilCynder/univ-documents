package protagoniste;

import protagoniste.ZoneDeCombat;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Random;

import attaque.ForceDeCombat;
import attaque.Pouvoir;
import bataille.Bataille;
import protagoniste.Domaine;

public class Monstre <T extends Pouvoir> extends EtreVivant implements Iterable<ForceDeCombat>{
	
	private final Domaine domaine;
	private ZoneDeCombat zoneDeCombat;
	private T[] attaques;
	private GestionAttaque gestionAttaque;
	
	@SafeVarargs
	public Monstre (String nom, int forceDeVie, ZoneDeCombat zoneDeCombat, Domaine domaine, T... attaques) {
		super(nom, forceDeVie);
		this.zoneDeCombat = zoneDeCombat;
		this.domaine = domaine;
		this.attaques = attaques;
	}
	
	public ZoneDeCombat getZoneDeCombat() {
		return zoneDeCombat;
	}
	
	public Domaine getDomaine() {
		return domaine;
	}
	
	
	@Override
	public String toString() {
		String afficher = "";
		afficher += "Monstre [nom="+nom+", attaques=";
		for (T attaque : attaques) {
			afficher += "[ForceDeCombat [nom="+attaque.getNom()+", pointDeDegat="+attaque.getPointDeDegat()+"],";
		
		}
		afficher += "], zoneDeCombat="+zoneDeCombat+", getForceDeVie()="+forceDeVie+"]";
		return afficher;
	}
	
	public Iterator <ForceDeCombat> iterator() {
		return new GestionAttaque();
	}
	
	private class GestionAttaque implements Iterator<ForceDeCombat> {
		private ForceDeCombat[] attaquesPossibles = attaques;
		private int nbAttaquesPossibles = attaques.length;
		
		public boolean hasNext() {
			for (int i = 0; i < nbAttaquesPossibles; i++) {
				if (!attaquesPossibles[i].isOperationnel()) {
					attaques[i] = attaques[nbAttaquesPossibles-1];
					nbAttaquesPossibles--;
				}
				
			} return nbAttaquesPossibles!=0;
		}
		
		public ForceDeCombat next() {
			if (!hasNext()) {
				throw new NoSuchElementException();
			}
			Random generator = new Random();
			int randomIndex = generator.nextInt(attaques.length);
			return attaques[randomIndex];
		}
	}
	
	public void entreEnCombat() {
		for (T attaque : attaques) {
			attaque.regenererPouvoir();
		}
		gestionAttaque = new GestionAttaque();
	}
	
	public ForceDeCombat attaque() {
		if (gestionAttaque.hasNext()) {
			return gestionAttaque.next();
		}
		
		else {return null;}
	}
	
	@Override
	public void rejointBataille(Bataille bataille) {
		super.rejointBataille(bataille);
		bataille.ajouter(this);
	}
	
	public void mourir() {
		bataille.eliminer(this);
	}

}
