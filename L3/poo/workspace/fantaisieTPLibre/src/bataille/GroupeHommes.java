package bataille;

import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

import attaque.Arme;
import attaque.Pouvoir;
import protagoniste.Homme;
import protagoniste.Monstre;

public class GroupeHommes {
	private Set<Homme> groupe = new TreeSet<>();
	
	public void ajouterHommes(Homme...hommes ) {
		for (Homme h : hommes) {
			groupe.add(h);
		}
	}
	
	/*class ComparateurHommes implements Comparator<Homme>{
		public int compare(Homme h1, Homme h2) {
			if (h1.getForceDeVie() > h2.getForceDeVie()) {
				return -1;
			} else if (h1.getForceDeVie() > h2.getForceDeVie()) {
				return 1;
			} else {
				return h1.compareTo(h2);
			}
		}
	}*/
	
	class ComparateurArmes implements Comparator<Arme>{
		private Monstre<?> monstre;
		
		public ComparateurArmes(Monstre<?> monstre) {
			this.monstre = monstre;
		}
		
		public int compare(Arme arme1, Arme arme2) {
			NavigableMap<Integer, Arme> classementForce = new TreeMap<>();
			
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
	
	public List<Homme> choixParticipants(Bataille bataille) {
		Monstre<? extends Pouvoir> monstre = bataille.getCampMonstres().selectionner();
		ComparateurArmes comparateurArmes = new ComparateurArmes(monstre);
		//ComparateurHommes comparateurHommes = new ComparateurHommes();
		NavigableMap<Arme, NavigableSet<Homme>> hommesArmes = new TreeMap<>(comparateurArmes);
		for (Homme homme : groupe) {
			Arme meilleureArme = homme.choisirArme(monstre);
			if (meilleureArme != null) {
				NavigableSet<Homme> setHommes = hommesArmes.get(meilleureArme);
				if (setHommes == null) {
					setHommes = new TreeSet<Homme>(
							/*new Comparator<Homme>(){
								public int compare*/(h1, h2) -> {
									if (h1.getForceDeVie() > h2.getForceDeVie()) {
										return -1;
									} else if (h1.getForceDeVie() > h2.getForceDeVie()) {
										return 1;
									} else {
										return h1.compareTo(h2);
									}
								}
					);
					hommesArmes.put(meilleureArme, setHommes );
				}
				setHommes.add(homme);
			}
		}
		
		List<Homme> hommesChoisis = new ArrayList<>();
		
		for (Map.Entry<Arme,NavigableSet<Homme>> entry : hommesArmes.entrySet()) {
			for (Homme homme : entry.getValue()) {
				hommesChoisis.add(homme);
				homme.rejointBataille(bataille);
				if (hommesChoisis.size() >= 3) {
					return hommesChoisis;
				}
			}
		}
		
		return hommesChoisis;
	}
	
	public void supprimerHomme(Homme homme) {
		groupe.remove(homme);
	}
	
	public boolean resteCombattant() {
		for (Homme homme : groupe) {
			
		}
		return groupe.size() > 0;
	}
}
