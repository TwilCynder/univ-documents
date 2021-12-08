package attaque;

public abstract class ForceDeCombat {
	private Integer pointDeDegat;
	private String nom;
	protected boolean operationnel = true;
	
	public ForceDeCombat (Integer pointDeDegat, String nom) {
		this.pointDeDegat = pointDeDegat;
		this.nom = nom;
	}
	
	public Integer getPointDeDegat() {
		return pointDeDegat;
	}
	
	public String getNom() {
		return nom;
	}
	
	public boolean isOperationnel() {
		return operationnel;
	}
	
	
	@Override
	public String toString() {
		return "ForceDeCombat [pointDeDegat=" + pointDeDegat + ", nom=" + nom + ", operationnel=" + operationnel + "]";
	}

	public int utiliser() {
		return pointDeDegat;
	}
	
}
