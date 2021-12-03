package bataille;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import protagoniste.Monstre;
import protagoniste.ZoneDeCombat;

public class Grotte {
	private LinkedHashMap<Salle, List<Salle>> planGrotte;
	private HashMap<Salle, Bataille> batailles;
	private HashSet<Salle> sallesExplorees;
	private int numeroSalleDecisive;
	
	
	public Grotte() {
		planGrotte = new LinkedHashMap<Salle, List<Salle>>();
		batailles = new HashMap<Salle, Bataille>();
		sallesExplorees = new 	HashSet<Salle>();
	}

	public void ajouterSalle(ZoneDeCombat zoneDeCombat, Monstre<?>... monstres) {
		Salle salle = new Salle(planGrotte.size() + 1, zoneDeCombat);
		List<Salle> sorties = new ArrayList<Salle>();
		planGrotte.put(salle, sorties);
		
		Bataille bataille = new Bataille();
		for (Monstre m : monstres) {
			bataille.ajouter(m);
		}
		batailles.put(salle, bataille);
	}
	
	public String afficherPlanGrotte() {
	  StringBuilder affichage = new StringBuilder();
	  for (Map.Entry<Salle, List<Salle>> entry : planGrotte.entrySet()) {
	   Salle salle = entry.getKey();
	   List<Salle> acces = planGrotte.get(salle);
	   affichage.append("La " + salle + ".\nelle possede " + acces.size() + " acces : ");
	   for (Salle access : acces) {
	    affichage.append(" vers la salle " + access);
	   }
	   Bataille bataille = batailles.get(salle);
	   Camp<Monstre<?>> camp = bataille.getCampMonstres();
	   Monstre<?> monstre = camp.selectionner();
	   if (camp.nbCombattants() > 1) {
	    affichage.append("\n" + camp.nbCombattants() + " monstres de type ");
	   } else {
	    affichage.append("\nUn monstre de type ");
	   }
	   affichage.append(monstre.getNom() + " la protege.\n");
	   if (salle.getNumSalle() == numeroSalleDecisive) {
	    affichage.append("C'est dans cette salle que se trouve la pierre de sang.\n");
	   }
	   affichage.append("\n");
	  }
	  return affichage.toString();
	}
	
	//TODO demander si bonne solution
	private Salle trouverSalle(int num) {
		for (Entry<Salle, List<Salle>> e: planGrotte.entrySet()) {
			if (e.getKey().getNumSalle() == num) return e.getKey();
		}
		return null;
	}
	
	public void configurerAcces(int salle, int... sorties) {	
		Salle s = trouverSalle(salle);
		for (int numSortie : sorties) {
			planGrotte.get(s).add(trouverSalle(numSortie));
		}
	}
}
