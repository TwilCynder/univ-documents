package livre;

import java.util.Comparator;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.NavigableSet;
import java.util.TreeSet;

import attaque.Feu;
import attaque.Glace;
import attaque.Tornade;
import bataille.Bataille;
import protagoniste.Domaine;
import protagoniste.Heros;
import protagoniste.Homme;
import protagoniste.Monstre;
import protagoniste.ZoneDeCombat;

public class AideEcrivain {
	private NavigableSet<Monstre<?>> monstresDomaineSet = new TreeSet<Monstre<?>>(
		new Comparator<Monstre<?>>() {
			public int compare(Monstre<?> m1, Monstre<?> m2) {
				Domaine d1 = m1.getDomaine();
				Domaine d2 = m2.getDomaine();
				if (d1 == d2) {
					return m1.compareTo(m2);
				} else {
					return d1.compareTo(d2);
				}
			}
		}
	);
	private NavigableSet<Monstre<?>> monstresZoneSet = new TreeSet<Monstre<?>>(
		new Comparator<Monstre<?>>() {
			public int compare(Monstre<?> m1, Monstre<?> m2) {
				ZoneDeCombat d1 = m1.getZoneDeCombat();
				ZoneDeCombat d2 = m2.getZoneDeCombat();
				if (d1 == d2) {
					return m1.compareTo(m2);
				} else {
					return d1.compareTo(d2);
				}
			}
		}
	);
	
	private NavigableSet<Monstre<?>> monstresDeFeu;
	private NavigableSet<Monstre<?>> monstresDeGlace;
	private NavigableSet<Monstre<?>> monstresTranchants;
	

	private Bataille bataille;

	public AideEcrivain(Bataille bataille) {
		this.bataille = bataille;
	}
	
	private static void ajouterHeros(LinkedList<Homme> list, Homme heros) {
		ListIterator<Homme> iter = list.listIterator();
		if (!iter.hasNext()) {
			list.add(heros);
		}
		
		do {
			if (!(iter.next() instanceof Heros)) {
				iter.previous();
				iter.add(heros);
				return;
			}
		} while (iter.hasNext());
	}
	
	public LinkedList<Homme> visualiserForcesHumaines() {
		LinkedList<Homme> listeTriee = new LinkedList<>();
		
		//J'ai toujours pas compris pourquoi cette m�thode marche pas :(
		/**ListIterator<Homme> iterHeros = listeTriee.listIterator();
		
		for (Homme h : bataille.getCampHumains()) {
			if (h instanceof Heros) {
				iterHeros.add(h);
			} else {
				listeTriee.add(h);
			}
		}*/
		
		for (Homme h : bataille.getCampHumains()) {
			if (h instanceof Heros) {
				ajouterHeros(listeTriee, h);
			} else {
				listeTriee.add(h);
			}
		}
		
		
		return listeTriee;
	}
	
	public String ordreNaturelMonstre() {
		NavigableSet<Monstre<?>> tree = new TreeSet<Monstre<?>>();

		for (Monstre<?> m : bataille.getCampMonstres()) {
			tree.add(m);
		}
		
		String result = new String();
		
		StringBuilder affichage = new StringBuilder();
		for (Iterator<Monstre<?>> iterator = tree.iterator(); iterator.hasNext();) {
			Monstre<?> monstre = iterator.next();
			affichage.append(monstre);
			if (iterator.hasNext()) {
				affichage.append(", ");
			}
		}
		return affichage.toString();
			
	}
	
	public void updateMonstresDomaine() {
		for (Monstre<?> m : bataille.getCampMonstres()) {
			monstresDomaineSet.add(m);
		}
	}
	
	public String ordreMonstreDomaine() {
		Domaine prevDom = null;
		updateMonstresDomaine();
		
		StringBuilder affichage = new StringBuilder();
		for (Iterator<Monstre<?>> iterator = monstresDomaineSet.iterator(); iterator.hasNext();) {
			Monstre<?> m = iterator.next();
			if (m.getDomaine() != prevDom) {
				prevDom = m.getDomaine();
				affichage.append("\n" + prevDom + "\n");
			}
			affichage.append(m.getNom());
			if (iterator.hasNext()) {
				affichage.append(", ");
			}
		}
		return affichage.toString();
	}
	
	public void updateMonstreZone() {

		for (Monstre<?> m : bataille.getCampMonstres()) {
			monstresZoneSet.add(m);
		}
	}
	
	public String ordreMonstreZone() {
		ZoneDeCombat prevZoneDeCombat = null;
		updateMonstresDomaine();
		
		StringBuilder affichage = new StringBuilder();
		for (Iterator<Monstre<?>> iterator = monstresDomaineSet.iterator(); iterator.hasNext();) {
			Monstre<?> m = iterator.next();
			if (m.getZoneDeCombat() != prevZoneDeCombat) {
				prevZoneDeCombat = m.getZoneDeCombat();
				affichage.append("\n" + prevZoneDeCombat + "\n");
			}
			affichage.append(m.getNom());
			if (iterator.hasNext()) {
				affichage.append(", ");
			}
		}
		return affichage.toString();
	}
	
	public NavigableSet<Monstre<?>> getMonstresDeFeu() {
		updateMonstresDomaine();
		return monstresDeFeu;
	}

	public NavigableSet<Monstre<?>> getMonstresDeGlace() {
		updateMonstresDomaine();
		return monstresDeGlace;
	}

	public NavigableSet<Monstre<?>> getMonstresTranchants() {
		updateMonstresDomaine();
		return monstresTranchants;
	}

	
//	public Monstre<?> firstMonstreDomaine(Domaine domaine){
//		updateMonstresDomaine();
//		for (Monstre<?> m : monstresDomaineSet) {
//			if (m.getDomaine() == domaine) {
//				return m;
//			}
//		}
//		return null;
//	}
//	
//	public void initMonstresDeFeu() {
//		Monstre<?> firstGlace = firstMonstreDomaine(Domaine.GLACE);
//		if (firstGlace != null) {
//			monstresDeFeu = monstresDomaineSet.headSet(firstGlace, false);
//		}
//
//	}
	
	private static Monstre<Glace> degenGlace = new Monstre<>("", 0, ZoneDeCombat.AERIEN, Domaine.GLACE);
	private static Monstre<Glace> degenTranchant = new Monstre<>("", 0, ZoneDeCombat.AERIEN, Domaine.TRANCHANT);
	
	public void initMonstresDeFeu() {
		monstresDeFeu = monstresDomaineSet.headSet(degenGlace, false);
	}
	
	public void initMonstresDeGlace() {
		monstresDeGlace = monstresDomaineSet.subSet(degenGlace, false, degenTranchant, false);
	}
	
	public void initMonstresTranchant() {
		monstresTranchants = monstresDomaineSet.tailSet(degenTranchant, false);
	}
	
	
}
