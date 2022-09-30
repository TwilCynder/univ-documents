package bataille;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

import attaque.Pouvoir;
import protagoniste.Monstre;
import protagoniste.ZoneDeCombat;
import protagoniste.ZoneDeCombatNonCompatibleException;

public class Grotte {
	private Map<Salle, List<Salle>> planGrotte = new LinkedHashMap<>();
	private Map<Salle, Bataille> batailles = new HashMap<>();
	private Set<Salle> sallesExplorees = new HashSet<>();
	private int numeroSalleDecisive = 0;
	private static Random rand = new Random();

	public int getNumeroSalleDecisive() {
		return numeroSalleDecisive;
	}
	
	public void setNumeroSalleDecisive(int numeroSalleDecisive) {
		this.numeroSalleDecisive = numeroSalleDecisive;
	}
	
	public boolean salleDecisive(Salle s) {
		return s != null && s.getNumSalle() == numeroSalleDecisive;
	}
	
	public void ajouterSalle(ZoneDeCombat zoneDeCombat, Monstre<? extends Pouvoir>... monstres) throws ZoneDeCombatNonCompatibleException {
		Salle salle = new Salle(planGrotte.size() + 1, zoneDeCombat);
		List<Salle> sorties = new ArrayList<Salle>();
		planGrotte.put(salle, sorties);
		
		Bataille bataille = new Bataille();
		for (Monstre<? extends Pouvoir> m : monstres) {
			if (m.getZoneDeCombat() != zoneDeCombat) throw new ZoneDeCombatNonCompatibleException(zoneDeCombat, m.getZoneDeCombat());
			m.rejointBataille(bataille);
		}
		batailles.put(salle, bataille);
	}
	
	public Salle premiereSalle() {
		return trouverSalle(1);
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
	   Camp<Monstre<? extends Pouvoir>> camp = bataille.getCampMonstres();
	   Monstre<? extends Pouvoir> monstre = camp.selectionner();
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
	
	public Salle salleSuivante(Salle s) {
		List<Salle> sorties = planGrotte.get(s);
		
		List<Salle> sortiesNonExplorees = new LinkedList<Salle>();
		for (Salle sortie : sorties) {
			if (!sallesExplorees.contains(sortie)) {
				sortiesNonExplorees.add(sortie);
			}
		}
		if (sortiesNonExplorees.isEmpty()) {
			sortiesNonExplorees = sorties;
		}
		
		Salle sortie = sortiesNonExplorees.get(rand.nextInt(sorties.size()));
		return sortie;
	}
	
	
}
