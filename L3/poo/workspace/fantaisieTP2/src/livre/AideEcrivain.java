package livre;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.ListIterator;

import bataille.Bataille;
import protagoniste.Heros;
import protagoniste.Homme;

public class AideEcrivain {
	private Bataille bataille;

	public AideEcrivain(Bataille bataille) {
		this.bataille = bataille;
	}
	
	public LinkedList<Homme> visualiserForcesHumaines() {
		LinkedList<Homme> listeTriee = new LinkedList<>();
		
		ListIterator<Homme> iterHeros = listeTriee.listIterator();
		
		for (Homme h : bataille.getCampHumains()) {
			if (h instanceof Heros) {
				iterHeros.add(h);
			} else {
				listeTriee.add(h);
			}
		}
		
		/*for (Iterator<Homme> iterCamp = bataille.getCampHumains().iterator() ; iterCamp.hasNext();) {
			Homme h = iterCamp.next();
			if (h instanceof Heros) {
				iterHeros.add(h);
			} else {
				listeTriee.add(h);
			}
		}*/
		
		return listeTriee;
	}
}
