package attaque;

import protagoniste.ZoneDeCombat;

public class Epee extends Arme {
	private String nomEpee;

	public Epee(String nomEpee) {
		super(80, "�p�e", ZoneDeCombat.AQUATIQUE, ZoneDeCombat.TERRESTRE);
		this.nomEpee = nomEpee;
	}

	public String getNomEpee() {
		return nomEpee;
	}
}
