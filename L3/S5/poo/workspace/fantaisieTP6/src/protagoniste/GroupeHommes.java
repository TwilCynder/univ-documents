package protagoniste;

import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;

public class GroupeHommes {
	private Set<Homme> groupe = new TreeSet<>();
	
	public void ajouterHomme(Homme...hommes ) {
		for (Homme h : hommes) {
			groupe.add(h);
		}
	}
	
	class ComparateurHomme implements Comparator<Homme>{
		public int compare(Homme h1, Homme h2) {
			if (h1.forceDeVie > h2.forceDeVie) {
				
			}
		}
	}
}
