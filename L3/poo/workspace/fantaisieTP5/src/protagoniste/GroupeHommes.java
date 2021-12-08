package protagoniste;

import java.util.Comparator;
import java.util.List;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.TreeMap;
import java.util.TreeSet;

import attaque.Arme;
import bataille.Bataille;

public class GroupeHommes {
	
	NavigableSet<Homme> groupe = new TreeSet<>();
	
	public void ajouterHommes(Homme ...hommes) {
		for (Homme homme : hommes) {
			groupe.add(homme);
		}
	}
	
	private class ComparateurHommes implements Comparator<Homme> { 
		public int compare(Homme homme1, Homme homme2) {
			
			int result = homme2.forceDeVie - homme1.getForceDeVie();
			if (result==0) {
				return homme1.compareTo(homme2);
			}
			return result;
		}
		
	}
	
	private class ComparateurArmes implements Comparator<Arme>{
		Monstre<?> monstre;
		
		public ComparateurArmes(Monstre<?> monstre) {
			this.monstre = monstre;
		}
		
		int forceDeVie = monstre.getForceDeVie();
		NavigableMap<Integer, Arme> classementForce = new TreeMap<>();
		
		public int compare(Arme arme1, Arme arme2) {
			int result = arme2.getPointDeDegat() - arme1.getPointDeDegat();
			if (result==0) {
				return arme1.compareTo(arme2);
			}
			classementForce.put(arme1.getPointDeDegat(), arme1);
			classementForce.put(arme2.getPointDeDegat(), arme2);
			
			if (classementForce.firstKey() <= monstre.getForceDeVie())
				return -1;
			else
				return 1;
			
		}
	}
	
	public List<Homme> choixParticipants (Bataille bataille) {
		Monstre<?> monstre = bataille.getCampMonstres().selectionner();
		ComparateurArmes comparateurArmes = new ComparateurArmes(monstre);
		ComparateurHommes comparateurHommes = new ComparateurHommes();
		NavigableMap<Arme, List<Homme>> hommesArmes = new TreeMap<>(comparateurArmes);
		for (Homme homme : groupe) {
			
		}
		
		
	}
}
