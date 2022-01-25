package bataille;

import java.util.List;
import java.util.NavigableMap;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

import attaque.Arme;
import protagoniste.Homme;
import protagoniste.Monstre;

public class GroupeHommes {
	private Set<Homme> groupe = new TreeSet<>();
	
	public void ajouterHomme(Homme...hommes ) {
		for (Homme h : hommes) {
			groupe.add(h);
		}
	}
	
	class ComparateurHomme implements Comparator<Homme>{
		public int compare(Homme h1, Homme h2) {
			if (h1.getForceDeVie() > h2.getForceDeVie()) {
				return 1;
			} else if (h1.getForceDeVie() > h2.getForceDeVie()) {
				return -1;
			} else {
				return h1.compareTo(h2);
			}
		}
	}
	
	class ComparateurArmes implements Comparator<Arme>{
		private Monstre<?> monstre;
		
		public ComparateurArmes(Monstre<?> monstre) {
			this.monstre = monstre;
		}
		
		public int compare(Arme a1, Arme a2) {
			int fdvMonstre = monstre.getForceDeVie();
			int fdcA1 = a1.getPointDeDegat();
			int fdcA2 = a2.getPointDeDegat();
			
			if (fdcA1 == fdcA2) return a1.compareTo(a2);
			
			NavigableMap<Integer, Arme> classementForce;
			
		}
		
	}
	
	public List<Homme> choixParticipants(Bataille b) {
		
	}
}
