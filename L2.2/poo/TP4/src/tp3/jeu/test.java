package tp3.jeu;

public class test {

	/**
	 * 
	 */
	public test() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		JeuSimple jeu = new Shifumi();
	}
	
	public static void Arbitrer(Joueur j1, Joueur j2, JeuSimple jeu) {
		switch (jeu.arbitrer(jeu.jouerUnTour(), jeu.jouerUnTour())) {
		case -1 :
			System.out.println("Le joueur 1 gagne !");
			j1.gagner(10);
			j2.perdre(10);
		case 1 : 
			System.out.println("Le joueur 2 gagne !");
			j2.gagner(10);
			j1.perdre(10);
		}
	}
}
