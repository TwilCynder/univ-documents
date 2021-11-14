package attaque;

public class Arc extends Arme {
	private int nbFlechesRestantes;

	public Arc(int nbFlechesRestantes) {
		super(50, "Arc");
		this.nbFlechesRestantes = nbFlechesRestantes;
	}
	
	@Override
	public int utiliser() {
		if (operationel) {
			nbFlechesRestantes--;
			if (nbFlechesRestantes < 1) {
				operationel = false;
			}
		}
		
		return super.utiliser();
	}
}
