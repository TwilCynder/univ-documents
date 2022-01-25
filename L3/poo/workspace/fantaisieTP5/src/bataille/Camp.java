package bataille;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

import protagoniste.EtreVivant;

public class Camp<T extends EtreVivant> implements Iterable<T> {

	private List<T> liste = new LinkedList<>();

	public Iterator<T> iterator() {
		return this.liste.iterator();
	}

	public void ajouter(T etreVivant) {
		if (!liste.contains(etreVivant)) {
			liste.add(etreVivant);
		}

	}

	public void eliminer(T etreVivant) {
		liste.remove(etreVivant);
	}

	public String toString() {
		return liste.toString();
	}

	public int nbCombattants() {
		return liste.size();
	}

	public T selectionner() {
		Random randomGenerateur = new Random();
		int numeroCombattant = randomGenerateur.nextInt(liste.size());
		return liste.get(numeroCombattant);
	}

}
