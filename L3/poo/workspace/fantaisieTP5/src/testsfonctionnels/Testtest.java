package testsfonctionnels;

import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;

import attaque.Arc;
import attaque.Arme;
import attaque.Boomerang;
import attaque.Epee;
import attaque.Feu;
import attaque.Griffe;
import attaque.LameAcier;
import attaque.LancePierre;
import attaque.Lave;
import attaque.Morsure;
import attaque.Tranchant;
import bataille.Bataille;
import protagoniste.Domaine;
import protagoniste.Heros;
import protagoniste.Homme;
import protagoniste.Monstre;
import protagoniste.ZoneDeCombat;


public class Testtest{
	public static void main(String[] args) {
		Monstre<Tranchant> vampirien1 = new Monstre<>("vampirien", 10, ZoneDeCombat.AERIEN, Domaine.TRANCHANT,
				new Morsure(10));
		Monstre<Tranchant> guillotimort = new Monstre<>("guillotimort", 80, ZoneDeCombat.TERRESTRE, Domaine.TRANCHANT,
				new LameAcier(10), new Griffe());
		Monstre<Feu> aqualave = new Monstre<>("aqualave", 30, ZoneDeCombat.AQUATIQUE, Domaine.FEU, new Lave(5));

		Homme thomas = new Homme("Thomas");
		Homme louis = new Homme("Louis");
		Heros arthur = new Heros("Arthur");
		Heros archibald = new Heros("Archibald");
		Homme alain = new Homme("Alain");

		thomas.ajouterArmes(new LancePierre(), new Boomerang());
		louis.ajouterArmes(new LancePierre(), new Arc(10));
		arthur.ajouterArmes(new Epee("excalibur"), new Arc(30));
		archibald.ajouterArmes(new Epee("excalibur"), new Arc(30));
		alain.ajouterArmes(new Boomerang(), new Arc(10));
		
		
		System.out.println(thomas.choisirArme(vampirien1));
		/*
		
		EnumMap<ZoneDeCombat, List<Integer>> hello = new EnumMap<>(ZoneDeCombat.class);
		List<Integer> liste = new ArrayList<>();
		List<Integer> listeB = new ArrayList<>();
		liste.add(1);
		liste.add(2);
		liste.add(3);
		listeB.add(4);
		hello.put(ZoneDeCombat.AERIEN, liste);
		
		hello.put(ZoneDeCombat.AQUATIQUE, listeB);
		
		System.out.println(hello.get(ZoneDeCombat.AERIEN));
		*/
		}
}