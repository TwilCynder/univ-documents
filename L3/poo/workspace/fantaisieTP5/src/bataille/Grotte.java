package bataille;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import protagoniste.Monstre;
import protagoniste.ZoneDeCombat;

public class Grotte {
	private LinkedHashMap<Salle, List<Salle>> planGrotte = new LinkedHashMap<>();
	private HashMap<Salle, Bataille> batailles = new HashMap<>();
	private HashSet<Salle> sallesExplorees = new HashSet<>();
	private int numeroSalleDecisive;
	
	public void setNumeroSalleDecisive(int numeroSalleDecisive) {
		this.numeroSalleDecisive = numeroSalleDecisive;
	}

	public Salle ajouterSalle (ZoneDeCombat zoneDeCombat, Monstre<?>...monstres) {
		Salle salle = new Salle(planGrotte.size()+1, zoneDeCombat);
		Bataille bataille = new Bataille();
		for (Monstre<?> monstre : monstres) {
			monstre.rejointBataille(bataille);
		}
		planGrotte.put(salle, new ArrayList<>());
		batailles.put(salle, bataille);
		return salle;
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
			if (salle.getNumeroSalle() == numeroSalleDecisive) {
				affichage.append("C'est dans cette salle que se trouve la pierre de sang.\n");
			}
			affichage.append("\n");
		}
		return affichage.toString();
	}
	
	private Salle trouverSalle (Integer numeroSalle) {
		Set<Salle> salles = planGrotte.keySet();
		int indice = 1;
		for (Salle salle : salles) {
			if (indice == numeroSalle) 
				return salle;
			else
				indice++;
		}
		return null;
	}
	
	
	public void configurerAcces(Integer numSalleOrigine, Integer...numSalle) {
		Salle salleOrigine = trouverSalle(numSalleOrigine);
		List<Salle> listeSalle = new ArrayList<>();
		for (Integer numS : numSalle) {
			listeSalle.add(trouverSalle(numS));
		}
		planGrotte.put(salleOrigine, listeSalle);
	}
	
	public boolean salleDecisive(Salle salle) {
		return salle.equals(trouverSalle(numeroSalleDecisive));
	}
	
	
	public Salle premiereSalle() {
		sallesExplorees.add(trouverSalle(1));
		return trouverSalle(1);
	}
	 
	public Salle salleSuivante (Salle salle) {
		System.out.println("salle actuelle "+salle);
		List<Salle> sallesAccessibles;
		sallesAccessibles = planGrotte.get(salle);
		System.out.println("test 1  "+ planGrotte);
		System.out.println("salles explorées : " + sallesExplorees);
		
		
		sallesAccessibles.removeAll(sallesExplorees);
		System.out.println(sallesAccessibles.size());
		System.out.println("test 2   "+ planGrotte);
		
		if (sallesAccessibles.isEmpty()) {
			
			sallesAccessibles = planGrotte.get(salle);
			System.out.println("test 3  "+ planGrotte);
		}
		
		System.out.println("salles accessibles "+ sallesAccessibles);
		int size = sallesAccessibles.size();
		System.out.println("taille " + size);
		Integer nombreAleatoire = (int)(Math.random()*size);
		System.out.println("nombre aleatoire" + nombreAleatoire);
		
		Salle salleDestination = sallesAccessibles.get(nombreAleatoire);
		System.out.println("salle" + salleDestination);
		
		sallesExplorees.add(salleDestination);
		return salleDestination;
	}
}
