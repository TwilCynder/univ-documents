package bataille;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import protagoniste.EtreVivant;

public class Camp <T extends EtreVivant> implements Iterable<T>{
	
	private List<T> membres = new LinkedList<T>();
	
	public void ajouter(T etreVivant) {
		if (!membres.contains(etreVivant)) {
			membres.add(etreVivant);
		}
	}
	public void eliminer(T etreVivant) {
		membres.remove(etreVivant);
	}
	
	public String toString() {
		return membres.toString();
	}
	
	public Iterator<T> iterator(){
		return membres.iterator();
	}
}
