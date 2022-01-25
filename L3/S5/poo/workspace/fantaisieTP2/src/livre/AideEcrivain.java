package livre;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

import bataille.Bataille;
import protagoniste.Heros;
import protagoniste.Homme;

public class AideEcrivain {
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
		
		//J'ai toujours pas compris pourquoi cette méthode marche pas :(
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


}
