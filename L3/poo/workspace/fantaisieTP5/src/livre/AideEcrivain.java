package livre;

import java.io.ObjectInputStream.GetField;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.NavigableSet;
import java.util.TreeSet;

import attaque.ForceDeCombat;
import bataille.Bataille;
import bataille.Camp;
import protagoniste.Domaine;
import protagoniste.EtreVivant;
import protagoniste.Heros;
import protagoniste.Homme;
import protagoniste.Monstre;

public class AideEcrivain {
	private Bataille bataille;
	private NavigableSet<Monstre<?>> monstresDomaineSet = new TreeSet<>(new Comparator<Monstre<?>>() {
		public int compare(Monstre<?> monstre1, Monstre<?> monstre2) {	
			
			if (monstre1.getDomaine().compareTo(monstre2.getDomaine())==0) {
				return monstre1.getNom().compareTo(monstre2.getNom());
			}
			else {
				return monstre1.getDomaine().compareTo(monstre2.getDomaine());
			}
		}
	});
	
	private NavigableSet<Monstre<?>> monstresZoneSet = new TreeSet<>(new Comparator<Monstre<?>>() {
		public int compare(Monstre<?> monstre1, Monstre<?> monstre2) {
			if (monstre1.getZoneDeCombat().compareTo(monstre2.getZoneDeCombat())==0) {
				
				int result = monstre2.getForceDeVie() - monstre1.getForceDeVie();
				if (result == 0)
					return monstre1.getNom().compareTo(monstre2.getNom());
				else
					return result;
			}
			else 
				return monstre1.getZoneDeCombat().compareTo(monstre2.getZoneDeCombat());
				
			}
		});
	
	private NavigableSet<Monstre<?>> monstresDeFeu;
	private NavigableSet<Monstre<?>> monstresDeGlace;
	private NavigableSet<Monstre<?>> monstresTranchants;
	
	public NavigableSet<Monstre<?>> getMonstresDeFeu() {
		return monstresDeFeu;
	}
	
	public NavigableSet<Monstre<?>> getMonstresDeGlace() {
		return monstresDeGlace;
	}
	
	public NavigableSet<Monstre<?>> getMonstresTranchants() {
		return monstresTranchants;
	}
	
	/*
	public 	Monstre<?> firstMonstreDomaine(Domaine domaine){
		for(Monstre<?> monstre : monstresDomaineSet) {
			if (monstre.getDomaine().equals(domaine))
				return monstre;
		}
		return null;
		
	}
	
	public void initMonstresDeFeu() {
		Monstre<?> monstre = firstMonstreDomaine(Domaine.GLACE);
		monstresDeFeu = monstresDomaineSet.headSet(monstre,false);
	}
	*/
	public void initMonstresDeFeu() {
		Monstre<?> firstMonstreGlace = new Monstre<>("", 0, null, Domaine.GLACE);
		monstresDeFeu = monstresDomaineSet.headSet(firstMonstreGlace, false);
	}
	
	public void initMonstresDeGlace() {
		Monstre<?> firstMonstreGlace = new Monstre<>("", 0, null, Domaine.GLACE);
		Monstre<?> firstMonstreTranchant = new Monstre<>("", 0, null, Domaine.TRANCHANT);
		monstresDeGlace = monstresDomaineSet.headSet(firstMonstreTranchant, false);
		monstresDeGlace = monstresDeGlace.tailSet(firstMonstreGlace, true);
	}
	
	
	public void initMonstresTranchant() {
		Monstre<?> firstMonstreTranchant = new Monstre<>("", 0, null, Domaine.TRANCHANT);
		monstresTranchants = monstresDomaineSet.tailSet(firstMonstreTranchant, true);
	}
	
	
	
	public static String affichageMonstre(NavigableSet<Monstre<?>> vue) {
		String vuedomaine = "";
		Monstre<?> intermediaire = vue.first();
		vuedomaine += intermediaire.getNom() + " monstre de " + intermediaire.getDomaine();
		for (Monstre<?> monstre : vue) {
			if (intermediaire != monstre) {
				vuedomaine += " , " + monstre.getNom() + " monstre de " + monstre.getDomaine();
			}
		}
		return vuedomaine;
			
		}
	
	
	public AideEcrivain (Bataille bataille) {
		this.bataille = bataille;
	}
	
	public String visualiserForcesHumaines() {
		LinkedList<EtreVivant> listeTriee= new LinkedList<>();
		int compteur=0;
		for (EtreVivant ev : bataille.getCampHumains()) {
			if (ev instanceof Heros) {
				listeTriee.add(compteur, ev);
				compteur ++;
			}
			else 
				listeTriee.addLast(ev);
		}
		return listeTriee.toString();
	}
	
	
	public String ordreNaturelMonstre() {		
		String ordreNaturelString = "";
		NavigableSet<Monstre<?>> ordreNaturel = new TreeSet<>();
		
		for (Monstre<?> m : bataille.getCampMonstres()) {
			ordreNaturel.add(m);
		}
		
		for (Monstre<?> monstre : ordreNaturel) {
			if (monstre == ordreNaturel.last()) 
			{
				ordreNaturelString += monstre.getNom();
			}
			else {
				ordreNaturelString += monstre.getNom() + ", ";				
			}
			
		}
		return ordreNaturelString;
	}
	
	
	
	public void updateMonstresDomaine() {
		for (Monstre<?> monstre : bataille.getCampMonstres()) {
			monstresDomaineSet.add(monstre);
		}
	}
	
	
	
	public String ordreMonstreDomaine() {
		String ordreMonstreDom="";
		Monstre<?> intermediaire = monstresDomaineSet.first();
		for (Monstre<?> monstre : monstresDomaineSet) {
			if (monstre.equals(monstresDomaineSet.first())) {
				ordreMonstreDom+=monstre.getDomaine() + " : \n" + monstre.getNom();
			}
			else if (intermediaire.getDomaine().equals(monstre.getDomaine())) {
				ordreMonstreDom+="," + monstre.getNom();
				intermediaire = monstre;
			}
			else {
				ordreMonstreDom+="\n" + monstre.getDomaine() + " : \n" + monstre.getNom();
				intermediaire = monstre;
			}
		}
		
		return ordreMonstreDom;		
	}
	
	public void updateMonstresZone() {
		for (Monstre<?> monstre : bataille.getCampMonstres()) {
			monstresZoneSet.add(monstre);
		}
	}
	
	public String ordreMonstreZone() {
		String ordreMonstreZ="";
		Monstre<?> intermediaire = monstresZoneSet.first();
		for (Monstre<?> monstre : monstresZoneSet) {
			
			if (monstre.equals(monstresZoneSet.first())) {
				ordreMonstreZ+=monstre.getZoneDeCombat() + " : \n" + monstre.getNom() + " : " + monstre.getForceDeVie();
			}
			else if (intermediaire.getZoneDeCombat().equals(monstre.getZoneDeCombat())) {
				ordreMonstreZ+="," + monstre.getNom() + " : " + monstre.getForceDeVie();
				intermediaire = monstre;
			}
			else {
				ordreMonstreZ+="\n" + monstre.getZoneDeCombat() + " : \n" + monstre.getNom() + " : " + monstre.getForceDeVie();
				intermediaire = monstre;
			}
					}
		
		return ordreMonstreZ;	
	}
	
	
}
	
