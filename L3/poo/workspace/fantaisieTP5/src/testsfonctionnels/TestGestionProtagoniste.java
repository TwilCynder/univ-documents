package testsfonctionnels;

import java.util.NavigableSet;

import attaque.BouleDeFeu;
import attaque.Eclair;
import attaque.Feu;
import attaque.Glace;
import attaque.Griffe;
import attaque.LameAcier;
import attaque.Lave;
import attaque.Morsure;
import attaque.PicsDeGlace;
import attaque.Tornade;
import attaque.Tranchant;
import bataille.Bataille;
import bataille.Camp;
import livre.AideEcrivain;
//import livre.AideEcrivain;
import protagoniste.Domaine;
import protagoniste.Heros;
import protagoniste.Homme;
import protagoniste.Monstre;
import protagoniste.ZoneDeCombat;


public class TestGestionProtagoniste {
    
	public static void main(String[] args) {
		/*
		Monstre<Feu> dragotenebre = new Monstre<>("dragotenebre", 200, ZoneDeCombat.AERIEN, Domaine.FEU,
				new BouleDeFeu(4), new Lave(1), new Eclair(3));
		Monstre<Tranchant> vampirien = new Monstre<>("vampirien", 10, ZoneDeCombat.AERIEN, Domaine.TRANCHANT,
				new Morsure(10));
		Monstre<Glace> marinsangant = new Monstre<>("marinsangant", 150, ZoneDeCombat.AQUATIQUE, Domaine.GLACE,
				new PicsDeGlace(10), new Tornade(1));
		Monstre<Tranchant> guillotimort = new Monstre<>("guillotimort", 80, ZoneDeCombat.TERRESTRE, Domaine.TRANCHANT,
				new LameAcier(10), new Griffe());
		Homme thomas = new Homme("Thomas");
		Homme louis = new Homme("Louis");
		Heros arthur = new Heros("Arthur");
		Heros archibald = new Heros("Archibald");
		Homme alain = new Homme("Alain");

		Bataille bataille = new Bataille();
		thomas.rejointBataille(bataille);
		louis.rejointBataille(bataille);
		arthur.rejointBataille(bataille);
		archibald.rejointBataille(bataille);
		alain.rejointBataille(bataille);
		dragotenebre.rejointBataille(bataille);
		vampirien.rejointBataille(bataille);
		marinsangant.rejointBataille(bataille);
		guillotimort.rejointBataille(bataille);
		

		Camp<Homme> campsHumain = bataille.getCampHumains();
		Camp<Monstre<?>> campsMonstre = bataille.getCampMonstres();
		

		System.out.println("**** TP2 ****");
		System.out.println("\ncamps des humains :\n" + campsHumain);
		System.out.println("\ncamps des monstres :\n" + campsMonstre);

//		Resultat attendu
//		**** TP2 ****
//
//		camps des humains :
//		[Homme [nom=Thomas, forceDeVie=70], Homme [nom=Louis, forceDeVie=70], Heros [nom=Arthur, forceDeVie=100], Heros [nom=Archibald, forceDeVie=100], Homme [nom=Alain, forceDeVie=70]]
//
//		camps des monstres :
//		[Monstre [getNom()=dragotenebre, attaques=[ForceDeCombat [nom=une boule de feu, pointDeDegat=20], ForceDeCombat [nom=un jet de lave, pointDeDegat=80], ForceDeCombat [nom=un éclair, pointDeDegat=50]], zoneDeCombat=AERIEN, getForceDeVie()=200], Monstre [getNom()=vampirien, attaques=[ForceDeCombat [nom=une morsure, pointDeDegat=10]], zoneDeCombat=AERIEN, getForceDeVie()=10], Monstre [getNom()=marinsangant, attaques=[ForceDeCombat [nom=un pic de glace, pointDeDegat=50], ForceDeCombat [nom=une tornade, pointDeDegat=50]], zoneDeCombat=AQUATIQUE, getForceDeVie()=150], Monstre [getNom()=guillotimort, attaques=[ForceDeCombat [nom=une lame d'acier, pointDeDegat=50], ForceDeCombat [nom=un coup de griffe, pointDeDegat=20]], zoneDeCombat=TERRESTRE, getForceDeVie()=80]]

		
		AideEcrivain aideEcrivain = new AideEcrivain(bataille);
		System.out.println("\nvisualisation des forces humaines :\n" + aideEcrivain.visualiserForcesHumaines());
		
//		Resultat attendu
//		visualisation des forces humaines :
//		[Heros [nom=Arthur, forceDeVie=100], Heros [nom=Archibald, forceDeVie=100], Homme [nom=Thomas, forceDeVie=70], Homme [nom=Louis, forceDeVie=70], Homme [nom=Alain, forceDeVie=70]]
    
		System.out.println("\n**** TP3 ****");
		System.out.println("\nordre naturel :\n" + aideEcrivain.ordreNaturelMonstre());
		aideEcrivain.updateMonstresDomaine();
		System.out.println("\nordre par domaine :\n" + aideEcrivain.ordreMonstreDomaine());
		
		aideEcrivain.updateMonstresZone();
		System.out.println("\nordre par zone de combat :\n" + aideEcrivain.ordreMonstreZone());
		
		System.out.println("\npartie 2 première solution");
		aideEcrivain.initMonstresDeFeu();
		NavigableSet<Monstre<?>> monstres = aideEcrivain.getMonstresDeFeu();
		String affichage = aideEcrivain.affichageMonstre(monstres);
		System.out.println("\nmonstres de feu :\n" + affichage);
		
		
		Monstre<Glace> soufflemort = new Monstre<>("soufflemort", 120, ZoneDeCombat.AERIEN, Domaine.GLACE,
				new Tornade(8));
		Monstre<Feu> cramombre = new Monstre<>("cramombre", 80, ZoneDeCombat.TERRESTRE, Domaine.FEU,
				new BouleDeFeu(2), new Lave(1), new Eclair(1));
		
		soufflemort.rejointBataille(bataille);
		cramombre.rejointBataille(bataille);
		
		aideEcrivain.updateMonstresDomaine();
		monstres= aideEcrivain.getMonstresDeFeu();
		affichage = aideEcrivain.affichageMonstre(monstres);
		System.out.println("\nmonstres de feu :\n" + affichage);
		
		System.out.println("\n ........................... \n");
		Monstre<Glace> givrogolem = new Monstre<>("givregolem", 200, ZoneDeCombat.TERRESTRE, Domaine.GLACE,
				new PicsDeGlace(10), new Tornade(1));
		
		givrogolem.rejointBataille(bataille);		
		aideEcrivain.updateMonstresDomaine();
		
		monstres= aideEcrivain.getMonstresDeFeu();
		affichage = aideEcrivain.affichageMonstre(monstres);
		System.out.println("\nmonstres de feu :\n" + affichage);
		
		
		System.out.println(".............................");
				
		
		Monstre<Feu> aqualave = new Monstre<>("aqualave", 30, ZoneDeCombat.AQUATIQUE, Domaine.FEU,
				new Lave(5));
		Monstre<Tranchant> requispectre = new Monstre<>("requispectre", 200, ZoneDeCombat.AQUATIQUE, Domaine.TRANCHANT,
				new Griffe());
		
		aqualave.rejointBataille(bataille);
		requispectre.rejointBataille(bataille);		
		

		
		aideEcrivain.updateMonstresDomaine();
		monstres = aideEcrivain.getMonstresDeFeu();
		affichage = aideEcrivain.affichageMonstre(monstres);
		System.out.println("\nmonstres de feu :\n" + affichage);
		
		aideEcrivain.initMonstresDeGlace();
		
		aideEcrivain.updateMonstresDomaine();
		monstres = aideEcrivain.getMonstresDeGlace();
		affichage = aideEcrivain.affichageMonstre(monstres);
		System.out.println("\nmonstres de glace :\n" + affichage);
		
		aideEcrivain.initMonstresTranchant();
		aideEcrivain.updateMonstresDomaine();
		monstres = aideEcrivain.getMonstresTranchants();
		affichage = aideEcrivain.affichageMonstre(monstres);
		System.out.println("\nmonstres tranchants :\n" + affichage);
		*/
	}
	


}
