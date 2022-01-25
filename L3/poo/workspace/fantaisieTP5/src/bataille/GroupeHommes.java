package bataille;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.TreeMap;
import java.util.TreeSet;

import attaque.Arme;
import protagoniste.Homme;
import protagoniste.Monstre;

public class GroupeHommes {
	
	NavigableSet<Homme> groupe = new TreeSet<>();
	
	public void ajouterHommes(Homme ...hommes) {
		for (Homme homme : hommes) {
			groupe.add(homme);
		}
	}
	
	private class ComparateurHommes implements Comparator<Homme> { 
		public int compare(Homme homme1, Homme homme2) {
			
			int result = homme2.getForceDeVie() - homme1.getForceDeVie();
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
				
		public int compare(Arme arme1, Arme arme2) {
			int forceDeVie = monstre.getForceDeVie();
			NavigableMap<Integer, Arme> classementForce = new TreeMap<>();
			int result = arme2.getPointDeDegat() - arme1.getPointDeDegat();
			if (result==0) {
				return arme1.compareTo(arme2);
			}
			
			else if(result > 0) {
				if (arme2.getPointDeDegat() <= forceDeVie) {
					classementForce.put(arme2.getPointDeDegat(), arme2);
					classementForce.put(arme1.getPointDeDegat(), arme1);
					return 1;
				}
				else if (arme1.getPointDeDegat() <= forceDeVie) {
					classementForce.put(arme1.getPointDeDegat(), arme1);
					classementForce.put(arme2.getPointDeDegat(), arme2);
					return -1;
				}
				else { 
					classementForce.put(arme1.getPointDeDegat(), arme1);
					classementForce.put(arme2.getPointDeDegat(), arme2);	
					return -1;
				}
			}
			else {
				if (arme1.getPointDeDegat() <= forceDeVie) {
					classementForce.put(arme1.getPointDeDegat(), arme1);
					classementForce.put(arme2.getPointDeDegat(), arme2);
					return -1;
				}
				else if (arme2.getPointDeDegat() <= forceDeVie) {
					classementForce.put(arme2.getPointDeDegat(), arme2);
					classementForce.put(arme1.getPointDeDegat(), arme1);
					return 1;
				}
				else { 
					classementForce.put(arme2.getPointDeDegat(), arme2);
					classementForce.put(arme1.getPointDeDegat(), arme1);	
					return 1;
				}
			}			
		}
	}
	
	public List<Homme> choixParticipants (Bataille bataille) {
		
		Monstre<?> monstre = bataille.getCampMonstres().selectionner();
		ComparateurHommes comparateurHommes = new ComparateurHommes();
		ComparateurArmes comparateurArmes = new ComparateurArmes(monstre);
		NavigableMap<Arme, TreeSet<Homme>> hommesArmes = new TreeMap<>(comparateurArmes);
		
		
		for (Homme homme : groupe) {
			Arme meilleureArme = homme.choisirArme(monstre);
			if (meilleureArme != null) {
				if (hommesArmes.containsKey(meilleureArme)) 			
					hommesArmes.get(meilleureArme).add(homme);
				else {
					TreeSet<Homme> ensembleHommes = new TreeSet<>(comparateurHommes);
					ensembleHommes.add(homme);
					hommesArmes.put(meilleureArme, ensembleHommes);
				}
			}
		
		}

		
		List<Homme> listeHommes = new ArrayList<>();
		
		do {
			Entry<Arme, TreeSet<Homme>> entry = hommesArmes.pollFirstEntry();

			if (entry!=null) {
				TreeSet<Homme> liste = entry.getValue();
				for (Iterator<Homme> iterator = liste.iterator();
				 listeHommes.size()<3 && iterator.hasNext();) {
					Homme homme = iterator.next();
					listeHommes.add(homme);
				}
			}
		} while (listeHommes.size()<3 && !hommesArmes.isEmpty());
		
		for (Homme homme : listeHommes) {
			homme.rejointBataille(bataille);
		}
		return listeHommes;	
	}
}
