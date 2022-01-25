package attaque;

public abstract class Pouvoir extends ForceDeCombat {
	private int nbUtilisationPouvoir;
	private int nbUtilisationPouvoirInitial;
	
	protected Pouvoir(int pointDeDegat, String nom, int nbUtilisationPouvoir) {
		super(pointDeDegat, nom);
		this.nbUtilisationPouvoirInitial = nbUtilisationPouvoir;
		this.nbUtilisationPouvoir = nbUtilisationPouvoirInitial;
	}
	
	public void regenererPouvoir() {
		operationel = true;
		nbUtilisationPouvoir = nbUtilisationPouvoirInitial;
	}
	
	@Override
	public int utiliser() {
		if (operationel) {
			nbUtilisationPouvoir--;
			if (nbUtilisationPouvoir < 1) {
				operationel = false;
			}
		}
		
		return super.utiliser();
	}
	
	
}
