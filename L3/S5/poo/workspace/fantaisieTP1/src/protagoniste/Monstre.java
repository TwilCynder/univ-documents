package protagoniste;

import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Random;

import attaque.Pouvoir;

public class Monstre<P extends Pouvoir> extends EtreVivant {

	private P[] attaques;
	private ZoneDeCombat zoneDeCombat;
	private Domaine domaine;
	private GestionAttaque gestionAttaque;


	@SafeVarargs
	public Monstre(String nom, int forceDeVie, ZoneDeCombat zoneDeCombat, Domaine domaine, P...attaques){
		super(nom, forceDeVie);
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
		return "Monstre [attaques=" + Arrays.toString(attaques) + ", zoneDeCombat=" + zoneDeCombat + ", domaine="
				+ domaine + "]";
	}
	
	 
	public class GestionAttaque implements Iterator<P> {
		private P[] attaquesPossibles = attaques;
		private int nbAttaquesPossibles = attaques.length;
		private Random rand = new Random();

		public boolean hasNext() {
			for (int i = 0; i < nbAttaquesPossibles; i++) {
				if (!attaquesPossibles[i].isOperationel()) {
					attaquesPossibles[i] = attaquesPossibles[nbAttaquesPossibles - 1];
					nbAttaquesPossibles--;
				}
			}
			return nbAttaquesPossibles != 0;
		}

		public P next() {
			if (hasNext()) {
				return attaquesPossibles[rand.nextInt(nbAttaquesPossibles - 1)];
			}
			throw new NoSuchElementException();
		}
	}
	
	public void entreEnCombat() {
		for (int i = 0; i < attaques.length; i++) {
			attaques[i].regenererPouvoir();
		}
		gestionAttaque = new GestionAttaque();
	}
	
	public P attaque() {
		return gestionAttaque.next();
	}
	
}
